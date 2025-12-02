Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 351B92E8B62
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 20:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764708174; cv=none; b=g7k1Dnv+UzsPZIXcxLAGuTY3035GOwwgU95O103grFhUT0yoKFSGdIeIfcvIeQ3RKpPYUyRctYszYEzSW1NGXa22x92rZGzFt5awFLSursM/A+1igRFaBP6w8J8qJJwqvGZbZ8gLkutO5uCIsWt5Bt2GRGx3Tm6GJHHX1MDiZhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764708174; c=relaxed/simple;
	bh=06bsqTb/nJQgh9bnhw8zLxtt4DmgAP85QrqVYw0oAFE=;
	h=To:Subject:From:Message-Id:Date; b=ddHU3uGdskQkoOfubRwfkcBENdmGYZSZqg0qfV8lxcWSU+OrSMD3QYc1ZdNOoJoslzX+9OT/0w8vNw6sux1oib8urlRXg8qUuP1wo6gj2FdRYl5QGQZ5//oJGYM2S1w785K1YNGgyEeowG41AeCFoBtjZqGO0zeW0sj6/TTV3lg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SQEu3N0o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SQEu3N0o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B8DC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 20:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764708173;
	bh=06bsqTb/nJQgh9bnhw8zLxtt4DmgAP85QrqVYw0oAFE=;
	h=To:Subject:From:Date:From;
	b=SQEu3N0obrhcgGzFN3pVPDSL9axM7FPKk8XS5uc94THo61fP1LJ88dHNOYDPraDsw
	 /Lz/i6TWoyosPuB1VrCOIpTiBr3LvWf0ulD5NtdqWl1BQVwJ7K0w6ufIW+82kD1mKW
	 XUIofUwUpZzlhxewWMAnBBUMjgaoWLUU+6plvHaPPqbWDTD3loZ1L26iHVFw9vPUE0
	 g7T9zPpGgYmTeI2/A3CrykhPozW0ZS6EAwwcqKp6tZIZzNcaTO5VEN89EpfV6Y6zpm
	 WMX7s/jrN1JQ+P+bxqym+zl+cD+UMcd3VN1mcl4ZXVfIwe6T0RuUaW+R24q8cvfrcX
	 qkpMobv5Nbtbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922A7D1266A
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 20:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176470817358.29034.7167300740296130201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3485334eff2563bc64f37470bab61f916f788b550c037c7e33a4675afacdc19
Date: Tue, 02 Dec 2025 20:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764708173
