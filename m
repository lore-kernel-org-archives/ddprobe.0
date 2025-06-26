Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2662A24E4C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750969794; cv=none; b=mfd4clXDa6dAynjxz4I94lJK2zVZBaRZOcYGQjO0vphiYweZ2lKCjGAkeWN30m6XgkPjsW/SfY2o7uFZsmny+tBMVAqWb1sYlOxiw8jm6rRq7I7vxKdj+Wj0cZHeTOaqbVCvO3njZHgotJRpg1AebTJwJC94yC9XYkXzLsL+HsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750969794; c=relaxed/simple;
	bh=985L3omKKBskX/LSGe67v2jO6nXpZaNJw8J46TfSwtM=;
	h=To:Subject:From:Message-Id:Date; b=nK61z4M/3oq9QcDFSXBicUsrd6d4SRZRLxyUp6WClqi/t4dRXQB2psXFmBAN09KvblgCV2Ztaaz6AWlJ2QdUvis3c508pTbRYXT26Wgk8LE2hv7nj3qIKfkjXkEFRebEw0Jj7aBUz4jBI7DNZRQxLUH43ZcSYzjQ8dTAb4ogblM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t+P7uYu0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t+P7uYu0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2600C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750969793;
	bh=985L3omKKBskX/LSGe67v2jO6nXpZaNJw8J46TfSwtM=;
	h=To:Subject:From:Date:From;
	b=t+P7uYu0ilHYqjvTIw3ODSVqWbKdNPU7K5h4ZaogMgWtz7yUAxpTUfx5rYgCfjDQ9
	 vOLzed7ev6tnBtXoMNuMowKpyTW3y2a/VV5EADEnxq7beERSGLgzG9ovDaLIv4b8Mw
	 TEGjcDvbjDVivCMSqqoUJTzuRY+27GlkVqsLNcfP3Rf1GXn3eaDVjrVE0sF9Rsio3d
	 MJwDc+vGyZm+cGLiUwL4Sj36HmDFUvp7lMY/wVIZUJqd20ypgfZ3rQeLhY9v6WcW86
	 qIf0UkuD8ZzMDq9j7GdplZ4RKizS0azZW2cNvjihHAAh5ibQLzFZGTtXQO3jQj47np
	 rArXVygS0ABhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9014CC7EE30
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175096979358.25002.9506043721380824872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a76246e3e312a9ed12b4f1de62dad0802caed7b8616285b42c7ebaef8c7b3d2
Date: Thu, 26 Jun 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750969793
