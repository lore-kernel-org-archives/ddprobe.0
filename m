Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38275290F
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738065954; cv=none; b=dTya/2QPgQWWru3SoTfU295TmzAR8H9lE5S1GBvzwGoZ1EDEYquBJxLl5+sAR/2xt7B3m0Mio324K9dO10HJSNR2nlbKEKx15dgUNsRe6UihV144T6BIysydW63WE7X/ydgbfphdQBQe0GWd5YLQcId1hhc88KszsBj33LEV2Gs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738065954; c=relaxed/simple;
	bh=2NwcZ5WIxiFv6lYnq+E6x6JvXUqmz4v8Rxzc7EMrIMk=;
	h=To:Subject:From:Message-Id:Date; b=ucKeQplSk3tPPFFJlJfI8qeOuvfyO7co3NwiGsP11qyrQDMqlke3mJ6uojCUy3PoxFSLchGH8WjT9ATOMI739Mer6VPFn0fNAdUHxQ9TOC4wkZHMWwv7N4v9bng5H75OPMpR3HoCDOJ245aibv0fCWqR5X9vNj737MChNtp7dgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RMOv5EUN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RMOv5EUN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B339AC4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738065953;
	bh=2NwcZ5WIxiFv6lYnq+E6x6JvXUqmz4v8Rxzc7EMrIMk=;
	h=To:Subject:From:Date:From;
	b=RMOv5EUNG5T8hApkI6lcQKDNV/iFPZvzi7dzzHW/xBOOLUZiOjScCaiwdtx7OlsVu
	 8RVWb8+OB9EKfyk0b3uwFaK/TUgWhgcf6yychb6fd+buDcISCgYMf273kuIZiJi7Fk
	 /UWGbNeoGOGysXCPUc+wK2wgcJcwN4oZJFOv3qFVsntUi7VgTi3RgJ8JcbdbyviwgY
	 80RNIKq/7gu2KsYoW/OejEQjGkYKusw3e6d9v09BPnmaJj1ADn6Mz4EnuE9R/EhkvS
	 clMVy6GVYU7tdBbZZZ7jbbNMWg3Ubn1ljnl3OZ6Ivv892HyoPgUaP3PBr15q2BJ8dO
	 mqd/bEMRrFo3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FB6CC0218D
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173806595364.2284.7090527008637867988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 836186053156e43a09c6d22042fc532177dfdee4018f8181240175703dcf4282
Date: Tue, 28 Jan 2025 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738065953
