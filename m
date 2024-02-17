Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B6677C6E9
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 18:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708194497; cv=none; b=hiFphAwSxthBpspXSK63tyk666c90BR1pYvn7f2bKcBdrdyHh8WqG674dN3hJ6CMZLEj5zSaI0zvns/p0BitTkzoObZbrAkJq5rZYHFZU0LqqTbAJ1bgjCW9wVwH3P2wCAul5uNXpmHvMn2oNwtS+CDYpBjJRke3UWBAIQcgWHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708194497; c=relaxed/simple;
	bh=r8SA/bmJv6poaN9qOScPtPEEwjTcVLMIs+2ECTqTP8E=;
	h=To:Subject:From:Message-Id:Date; b=AhHLLk/XrVlT54zmSuea1tLX/tFQwLDy76I0jyG/blgwrtWdtswt46+R29Z6nlHnl/hPQNrj5fm9fTZVMmACXFwi06RyEsT/3T44Z9MssxIVI1LFc3nULKjps7VCII7s530Qjh1w35ejTmswpEX559qNV8YnWEOX0qYzobcGCpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YUU32/HR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YUU32/HR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 90597C433F1
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 18:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708194496;
	bh=r8SA/bmJv6poaN9qOScPtPEEwjTcVLMIs+2ECTqTP8E=;
	h=To:Subject:From:Date:From;
	b=YUU32/HRk8bSn5SNucQuhG8nL+VLR5CROiMh+494sramn1oWVssn6ztRJdHFYD2Lg
	 sMo1kgRdAgnrGxOk6ajBZq+HseZlWKf9QLsY/CLroj88D8LFa3nMBQYv0INHByU2zN
	 xN16WhURFIGoIxUjlmBU13KH00idRXJHuaGWE0azzlPfIrt4WJk4shnEcWeaHNLnG+
	 GTcvVEWJCZxmWTPKLbbS695f9moutLlHZAbPn6VHZqTi5k+SXzW8RtfK0DVVzEL/I2
	 TL/VHEkRVaqCyoBPQIex2fSSy/aRKrz7KUISgD2zqEEpBLfg5+4GaFvYTcxrcDaLJz
	 YZcFFYfPyygVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F339C48BC3
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 18:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170819449643.756.6713600732106311381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c28c1d99c281a1f41beccbcb4c22ae9726e56f4bd548e6216ec324494772256
Date: Sat, 17 Feb 2024 18:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708194496
