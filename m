Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42403DF42
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 08:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741510734; cv=none; b=VYO2G5FQbqhErSUykavGRQnnkSbuDZHQY1Ms9WbZtMRaglVDAs+4tNRrjxVG9KyhnYtnu4KminOf5ucVZEUESEnjvXz8KiBXPSv4psxErWv5MpN1HcEt+4yTg2X3F8JiUIN6J5Nf88xlRjNArAO7+ao9AOr/JErxljQLzWDVfxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741510734; c=relaxed/simple;
	bh=yeAASOfDHYwCxv8TQ9UUDhAG6cISTdieeeMiplZtfEA=;
	h=To:Subject:From:Message-Id:Date; b=LZgtM0yrVu98Jcg6uOszTj6v5C6ClTSnDCDNbzxvZFg0GZE8sYNCGxEDAFDmYowosgSCzbW4nU1xpLyLxR7GpoOoAYE9YTFgLkvNUCrLBLoYKrwtO5vCzYCEvACPMADnyHcMCaAEmXXtkx+04+s95xOAZu4Wmz2ZsNqp36PbSKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K1Ie82US; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K1Ie82US"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81D8C4CEE5
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 08:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741510733;
	bh=yeAASOfDHYwCxv8TQ9UUDhAG6cISTdieeeMiplZtfEA=;
	h=To:Subject:From:Date:From;
	b=K1Ie82USmmSQWppzcEUpyOTARfyoV25SXwjDS7xEA7ujt1Tj4KC4lLc1FkpLiSZ/R
	 M1oKNrJXR6jFyLQSQVVIrVnWeE42x0lOl3r3RLNaQOlU4/ni30ptsz3R4hKfRrIp+y
	 P+jTll/G1D6h65Cv7ZyP2h71ns32TEySnxH/ZAxoKWcFS2/oN9KTfg0gWB3t9DwLgB
	 qfxF3hsUlmgzr0smijd0ujKSkzL0MLMMzsNLtURpIbZarvAvdVj4kX3NdDQNkSv9ay
	 JcCDIa+zWSb5Ip5KxfAsGg3PR4FyxCj4EbuqpshHEPQl8hrdipJCm2sGRGpkMkTt2i
	 prEeSxYs/GRyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A4AC282D1
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 08:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174151073359.20072.16899518313714753892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 366a4b8e7019b28619f0a62e715ae0a0e02dfbf0903c8c2b87140d91069cffeb
Date: Sun, 09 Mar 2025 08:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741510733
