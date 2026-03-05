Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2292F37D13C
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 10:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772706294; cv=none; b=LjnieHHGN5urFSQ9mLgpTZ3eXvwjLOt+3T9A+dCkluJ41OFbNVkLR2nmfXMXQ6Y2X5aViGMSJcocSKD3RHMjZxBkdM0OwOKEmFDQoxzDBk19FdcwdScip5JnZwT0ERsaZdw98zjCc1oqS870BqOQJrmxlvgcgy2N6iT0VDS8c5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772706294; c=relaxed/simple;
	bh=Ovj/QWk8M9SoQTpDg6myU8KmKr8o8jdBpZjNlNTNI+k=;
	h=To:Subject:From:Message-Id:Date; b=rUtlFN2rMjJ670Vdw+KPCi8otU0aW3twtUpDgBYEWHmwZigMlSaVINJaNR5hvPxChPMWqXxJzxb083TFKDz8RZ/KvKXSDtB9SRN40myjNHYShalySqxEZ53zbGNfVTuzPBsBgKGPk0sNn1UagOVjZQuSSPRCDiEw/KxcqjDeogA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ogEafF5P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ogEafF5P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64F4C116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 10:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772706293;
	bh=Ovj/QWk8M9SoQTpDg6myU8KmKr8o8jdBpZjNlNTNI+k=;
	h=To:Subject:From:Date:From;
	b=ogEafF5PC/L5ylW/WBcIQbnAoBaczS/5xWUGKXZTA8ihvMco8VB2P49GZVISUBvJH
	 OvsWMuP+bbEalwGIr4WhLMBhOsDnfRft48DGzRq7a/4fioqI8befc3l8Q4wFkBCpsq
	 mnj8ndx5x0oQIde55PZ3cRya7Jx6d7aHF+oGurBQ0QlhuuZNyNFJvQxTO0/AnYDVxj
	 VOWuhPrlxQJMe8Rz6wT/piZKmQBS/yxvuJGM/R5VoxG+hj/xJxtn8EP2RkikbMyO7j
	 gca9w9geA9a7RCYG3h6VMpVWlIxSl5QwOfpJWwiSsqTKVXdJUwZvFxmYCMUYmRb/W4
	 laJt2Zfb9n/sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9288DF3092D
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 10:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177270629359.23697.16637087860104463151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf0edcfc90a867a7e70e64a178e4b8f83434bb212847494f25a24527b63b76fe
Date: Thu, 05 Mar 2026 10:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772706293
