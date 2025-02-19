Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FAEE1D6DA3
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 14:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739974734; cv=none; b=EqXbqV/eFw4UvDzDx0SwWdTSPCxR3DqYF8VrA1k6lUI8xUWo8Ur4ZtmdpWqVTwFr42LkRRa9AhPNwGQ64g/8lax5BU2IkjdBiA/ZJvbAzuDDK1LwfzUXGLTihHOkTAxMRhSDhVTciVXVI9y7T07zRDFGvv5PJBdFWrFYr2gQvgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739974734; c=relaxed/simple;
	bh=UmPFtWkZkMhni17/z9bf44h/8O+tV5Ya36SeK3rQhrs=;
	h=To:Subject:From:Message-Id:Date; b=FuHmYMl1ECFgReze77S4ahixDHo624KDLFjaW+yFFk2uVLI8ctdAKylcT71duYtE68usV9yffk1Ebh5/nk9lSVRvlrGyw4CyveCQ6jmVZ+8g/MQmDmfshGfUoUTSLoS3rpYwXKcqUDnxYMHIRiyNUALE4L/8a1GzGeQgx0imh/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C7r9darS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C7r9darS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA5F6C4CEE0
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 14:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739974733;
	bh=UmPFtWkZkMhni17/z9bf44h/8O+tV5Ya36SeK3rQhrs=;
	h=To:Subject:From:Date:From;
	b=C7r9darS9o2t9nywJ5DjkB9AO/lTTqG0b+n3/HqfUDSAnr2G3a+37SKEYQzXDmoIl
	 deTkntkB8Joq8VxWl8dm7BhVFPbyY3c7rqifKpjRokNhVSYtGoW2u9y+AfYr0WxNlv
	 kbe4RDRWr903XHMd9w+a2n5svX5E41hc/DHk366bQlV0xmGLmPRUmEiodxnUiscNNg
	 M/on6E6Z3qeAogN92WUml2tKW6yFlToW+SRsWvBfY1mhF3mwV5Zy5hu2+woH01HP+z
	 s9SxCnK0fPvjyxij6eN/i5YwouCK0SacZyr2PN+DJv1GB2TGi+gpuZ+vTUnYvPwxnZ
	 bQOyM9ZsnIkGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 987A2C021B0
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 14:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173997473360.20361.1827114897038494196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97b27c592ed368abc3921871432a8002c9f895d62f8c19a0f2cdaa32cf2d711c
Date: Wed, 19 Feb 2025 14:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739974733
