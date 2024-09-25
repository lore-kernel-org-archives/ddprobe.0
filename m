Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01E091D5AD5
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727301954; cv=none; b=SaOqsy0drrTv2y68KT1VhIFghFsE1tuxdb0KujsvKrIo+I5zohqKK2r80ZW31DmhPcLFZUDvgyiguDYHaxUEIpNZJ7bD1bC2gJtChaK46LSKXmeaRWFig194ilmLRTPb5EYbGzU9IA4iwRDQn03dyGNgUuhrDvhbdCaVJ65YATw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727301954; c=relaxed/simple;
	bh=qumkHx6oZCtBO4/PhlOD+P4AOC/DQC3sfUHGoliUYvQ=;
	h=To:Subject:From:Message-Id:Date; b=Xz+o+H3GOn/bSQI92Ryicbmfulp35dlYMBJAU0deOW/ln0hUxT1J3lOpJ4Jpi4FpZyXmm376MzNDY2a/COflj8orKQ1JCeVveiN7wbvcAM4wzbPlmWZXKcEq9DqAsNJcYfQnPA1OBtAslteyYFYQCth3+3+xm+YxTZE+uPwigD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P+d4NkY6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P+d4NkY6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F3D1C4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727301953;
	bh=qumkHx6oZCtBO4/PhlOD+P4AOC/DQC3sfUHGoliUYvQ=;
	h=To:Subject:From:Date:From;
	b=P+d4NkY6u9O351SyxVy3z7HnqW73Z916bBOmYL/xFFdsjOAREBV9cWpn6FdlWhSuY
	 ptY1jNiyUdArbue7atJWdJqhHHH1k+Yv8EKxltZtfSVDF14wG1EWKR/p8Jp3I9/F/F
	 UZMnOnCqK55CCcny3hTKZV5wSn9zv/ZJmWjl3z7NERl+NcYVLp4CAcPdKfUeWU7uiG
	 iC2O63ip31LJTJUhAI56y4UFsfcUzJgPtfmqncTta1+SPTeNAwZJPfzfCO6ETjr49I
	 s5IIKfFIhaPOTdXrnI8e85ft7SmJNMA/x5rWYuYC7p/0wCUj5djyLtFBD9LLYyHXKx
	 aVbdAEYqH4+9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F023CCFA02
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172730195357.8018.8052933987144884376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e40eeb9fa9a1290276e1cae44f80327234f60c472913cb58c02c9a03cca616d0
Date: Wed, 25 Sep 2024 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727301953
