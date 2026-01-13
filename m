Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2089C258EF3
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 05:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768281834; cv=none; b=MG4xiycYcpEIaSh84b7Kk+RNj1EOxMzs6DM0Pr+r4YoxKtMxSUOWCWnfGPSkg4hoqdQsqQHBrHvHwPTcV5xuzuaLp5fFMlGGrvMQXAj+G5DQXNyhHmgz678MBoxI7TjTO/W84E/uZFYKjUwj0qXlWc6O8gOq+vtoVNsP0p9lW3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768281834; c=relaxed/simple;
	bh=c0pICvHg+laHYDMkhPBZM46AQkgYPDHw1fZ7ywUK/wg=;
	h=To:Subject:From:Message-Id:Date; b=AaGWcQV8Kpi8KwCxvRRzuZZvs6pap8Th2vMjIW/VKxFYW3xEvr+6U5g1DLdAf40IyvO5StjDk4DJsO+BQEIrjyycNMg8pK7pzq5bm74IjdnRGY7wE7fETPiWIT7z84TTP5zrdqISp3sTb7ePW9bizNAY1INAkgE2QUekMy+sAZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q2Nokzr1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q2Nokzr1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B04CEC116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 05:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768281833;
	bh=c0pICvHg+laHYDMkhPBZM46AQkgYPDHw1fZ7ywUK/wg=;
	h=To:Subject:From:Date:From;
	b=q2Nokzr1n6AA7EBTBgA6BNfXLDqFmmtoyTIMssF4+14YorRRZFgwiAwhh74S/68kr
	 GzuOCbe/VO0fiFsLnLpwBd3XvbD0UTRb8xh1JTetVsw7v142Gw7iHiMeviD2yLus6H
	 i2sYto84FNoGggkJevLjtk+EtUADqRdzTNou8eXsVw2OBRBKlajn9uK2P7EZbxZySu
	 cuGrE8djNYdFV3PQCOTjDC2gOc6CE6+oltxalOFmO2hL+hs0jyH6LszPX5bpfTFyz4
	 QcXq4n5r/3Y5yEmH8qLZCKtZ5abmPozjO1Jrsnki4a9rFhR5gMX3jUVok9Y3tMBZ6Y
	 niZH7iGOkSP5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4E5D29DC2
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 05:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176828183357.22004.6429527169364777317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b2d222eea19eae8c0c76be054ca7a4632c0e6e12ed2800f38aa5b87be9a8d3a
Date: Tue, 13 Jan 2026 05:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768281833
