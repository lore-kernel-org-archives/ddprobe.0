Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 254544C6C
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747106994; cv=none; b=leWjfsgyKOed2DviAeViJe/DxoxEEmVLkleINrA+JROvNZKX0Fx4Kgnm1FdGfp+2pbvmGeTP13lzIn2fumzcwRST8VjEyr7mwgomyERL1cKWsbIdsf0oJwVrOYxTbHRufaDAWBX5G/CiQI8ljbt+eQQKixjBocPI+HECa0OxyvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747106994; c=relaxed/simple;
	bh=DIHfJo02Bd7peX++aM/g60DQabOIR86N9fsQbRhdMlA=;
	h=To:Subject:From:Message-Id:Date; b=Q/4B5NjXBnsQ3CUzn3Y76glCPeXnxh5FEee7/W+VzJ9ZFE8aAgn3bL5n9L5MI7f6cJh4+5i7DUK6btbUS1O/knfuzkHOqZIdkq3uzVL6MrAHngaM80clKtu9BWtiZB1qg4tgLTroc88A9vvQICZntJ6Sgzn8/Fd+2S53nDvTEeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=snW/Ukfq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="snW/Ukfq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CA26C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747106993;
	bh=DIHfJo02Bd7peX++aM/g60DQabOIR86N9fsQbRhdMlA=;
	h=To:Subject:From:Date:From;
	b=snW/UkfqEYXwFF8RDMxqHzJsEh79LrqCwV9JYD9aTFI0S0AmzKjvNVnqCV33xefl3
	 g5WfSkqZ0LELDJIDpmUSWh585oubxLlroT+zjLum3OQmSOHztKU2yYOmHgNOdCVGWx
	 RLKS+14aZLulyrLalTk5QPiYRGsRMVyUt9PNXdFStT1JdhLrB7tLR6CRIDyGm/GZez
	 0otz+uLQ/jQVwxImkhux7iyzr5KOkLKCMeeABNxpaoHvhWX/9fSn0VgZwdyabJ71jC
	 R5cS3atktXutOvB/Df4+4kf6PmUwMaany/JdeKxwRkC7UesLF9m/D+XiG8PZa08m32
	 or83JA3cM62/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E06BC3ABC3
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174710699357.26770.14471649283687349059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 591ba27469aaadba6e0e2184b9b084c9e4559ac318c9deeab791e49814d9133b
Date: Tue, 13 May 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747106993
