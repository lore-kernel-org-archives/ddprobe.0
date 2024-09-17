Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AC6E16B38B
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726578954; cv=none; b=EJqYqzav8bkIV6fA8iRjTQ2/XkL96hR1gJq3Q7SqJ5VFC4N7n4vWijQosWhSEi+YvzmkZ1EOK0goouhx2N8zStszapXV7g62ywbdnB//v44HZY++idLE6ev4g/c0+32KaD7XcPYtYwoRFtmp0RQEOwBgCiyprEVjJRhHDzcynCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726578954; c=relaxed/simple;
	bh=G+uqkUL6RQmECmsH6mSPsTMDkDwR2k7Ftg+BsHI2qB0=;
	h=To:Subject:From:Message-Id:Date; b=nRgWuRSZjGO+LqLW/PMXdpK/4ra9tB6x5UhkJYABz0abQdkby9RAYEYmBk3aIK3yfeKToql/qkIf7vRWISTUMk0++uzQhbzu0N4j0pD3f6yv65Y2yibHQXFuvgJdKmqIAV1xXE5dxEUGU0sWEfAeSaAjb3d0ND8omBtJy/8yXLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CVgaPgXH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CVgaPgXH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4449C4CEC5
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726578953;
	bh=G+uqkUL6RQmECmsH6mSPsTMDkDwR2k7Ftg+BsHI2qB0=;
	h=To:Subject:From:Date:From;
	b=CVgaPgXHepylXJdlWudlSx/r9cifT2pNtc8ZPApZBxgiW71qzZUBbxG243jUMiI0O
	 kO8PQ4F88EiojgncJTgKe9Izy6rawWjeZ5qiLfEwjbXSfrko9o5Y3Kpu4o+p3PUjO+
	 4xh7n53D8sgdRRn4hwcuxFEwQjvacRaPC5vRm8OWTyZ+Sc85jSF109xY7sw1AfhFcN
	 GTwT+FRkIxXCWeiB2rGmxH3Kdi//gmqmu/PchdSUW4swc9I3Qu7BX4SLZBcibSUxFX
	 +P9GrJ2XV6Q5ayw0wyjWbeWFXdoG3hSoIBte8wuqn9vhd9UdfKj5Q1hh+XE04DIFi0
	 2jg8tiG3EGSFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93455C021A7
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172657895359.29877.13767133649808313672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af2cc41c1e4cff4c58b89acec335f7649bcdf0b0472ec7fa9075dcd474f77d29
Date: Tue, 17 Sep 2024 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726578953
