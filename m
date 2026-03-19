Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ACF03AF64B
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 23:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773961494; cv=none; b=B4lBMZ8/da+d9+HUV/aB13xtFLbeTAU9oIIN1q+8oEFyJa9TqnLanZzLOpewhRvNx6AtjZ6R62peVbOB3RVX9nU8L52+Zud8aw6Hen3w0/bbfl5oALDz/8pT+ZikeH9zSyTLFi0o9fY0O3MLBIYRkg2V0IUBUq59PAKfhKWc5xI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773961494; c=relaxed/simple;
	bh=23QxCjIerqrBqFCvnxEqf6BKRjko3PGTyJuNX9EiFRs=;
	h=To:Subject:From:Message-Id:Date; b=Ky15xBOJO9WN+eXeRcpmuoR+OA72pYJKcyGxtlDGSVuIfl8SfM37xQwSZhpkaFJJJeJlgXDK4URnUiAkGh7aUx5vvx9WLkPfkCnGKywR56E8X24ezqccXU9bMusYRKQ2WbnI4aWrox3WEYLDQ4NtzQ/8t38xK0mkcUpiejVwoAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lwMrQSzh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lwMrQSzh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFACDC2BC9E
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 23:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773961493;
	bh=23QxCjIerqrBqFCvnxEqf6BKRjko3PGTyJuNX9EiFRs=;
	h=To:Subject:From:Date:From;
	b=lwMrQSzhHLKEGtXCXu+k6vH59JMMXSCy8XSyIdYgXJ+e4/JEv2uDCX945o3VMfHjZ
	 2JdC6h19kYCQHG1wCKtzqP5XNk/L+bCJjLxF3p4MaFv3XUUr81lByXSfh0xYCOwhhb
	 RI69MFwUW9v1Z2GxciMfVWGVOC1EJJaVfZxniGvwOK3eFLJkGI/iB9s9eXZhSwqh5J
	 f5rjDlSLvJMFN3rhVYYNpLl/34d7T51LN2SG4MntLjPdq3YAET9MBYJx9kQ7pDw2vY
	 8u/0ktJhXKEDITi9eO7R6yV21/fJMFl96bFi6fLOjxBH+BkLn5l3erm9uYjDcZjIoZ
	 MwEhnsqMDMSsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D5A71091930
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 23:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177396149363.11018.5799011693068399017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9580521b45c710ecb8d8b54c96aafd78d384e9d3885daa5b4f64c223a8ff28c0
Date: Thu, 19 Mar 2026 23:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773961493
