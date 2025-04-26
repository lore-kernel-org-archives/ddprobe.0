Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A3AB19DF6A
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745696394; cv=none; b=QvFssKtan03awr30IQJNfqZWMSm18WdiPnb6xcs+dn3M4sF9EbJdFslezEOhWfCXb9nmnaqi+OOVcgL3FJvQLj3ueZjskgeY61F1xnCyW2zfNC2JZ2emRGhyks8tUN4x8K4j0iiYisWcVQe6r4eDbOlKGnEUUEzg75+2grLcIbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745696394; c=relaxed/simple;
	bh=ockVn8/c3Np6sE+JIi39bQfSh+JmtqMSIDhYbWrJcuc=;
	h=To:Subject:From:Message-Id:Date; b=BAz2qztPAACho05zHtKzLQ8YV9Q6jlegrXtv3vG6JIy3bMoSON+C8f39/SN9VA94aubygyasdOeE/HsqKvC50tvppFtKSBYvuFDhhCXPvU5la7DECzOqAFOWV2aEyA4P5D2rxar7u4E8XxA3ubBQ71LFI/lVd03LhL9HY8JJNno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m0tS2ozJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m0tS2ozJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1C4FC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745696393;
	bh=ockVn8/c3Np6sE+JIi39bQfSh+JmtqMSIDhYbWrJcuc=;
	h=To:Subject:From:Date:From;
	b=m0tS2ozJrNGr2ZYguIIEnlp1rzNP24kipUkbEccl4oapjULYD2tq87uB2aaFX2PQU
	 qEQ6V1Gcp5TiJZ5kAhQIbwqVOnw2tw+bkPSR0CzRbZOmLD0BHOjNwMujPk5OX/S64p
	 cItkGi0WIqDdTHztOs21zRxPkVGdcp15EziX0dP4qSEMpSqSJjMOSGcsLyo2uBnAat
	 p639xXPtvzSHWs2MfFUE0eRjsmSQUIcQypiXQ7OLq5weStAdcGNuX3C9aILhvsmo72
	 G/WtqiRE2hFy1TvNGNb3LkoH60SKcP4EgRrZ4pG1UpIq35uCAhj0AOKMN1VU0PatND
	 RlDl9OTWFW4Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E6B5C369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174569639362.27635.5462302482390223300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59213a3729a5424c4338d3b460fbfa8b81d1f8435e82c944c9499e944eb99049
Date: Sat, 26 Apr 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745696393
