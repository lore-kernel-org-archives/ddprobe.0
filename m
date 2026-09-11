Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBE9B372ECA
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789090834; cv=none; b=gpU5O9M+wldIPgPqZWdLggSSa6NbwGxWUYHJa+vJXUVbDZsWy+OiPA9wl6pJ2qpds359SVwj2M9YvmMi4e6enKpBJq8lVnb906Rhs7fOGcBhWYeCYicB8rH/pkk5bn5pA0VuzPxOIn2DcKFYFM2RG9jpVTZy4160ve3Wq8sWtQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789090834; c=relaxed/simple;
	bh=7T9JJA1DUyHQ4ReXd0qiODFWkHe+dj9VK1nFdfNHfKI=;
	h=To:Subject:From:Message-Id:Date; b=eShuMsjA6xv1tsuRKSbrgkcW7N1fwCExJYtpkFXiB6sKdR2mWJ+uxODAnUGdnPIhxaFalB8tlYnbtUbtBR6yUe7z6iNyffpD38n4wKajkFChdV5HnKZnvB0F6UHaHhg8bgd28a6rbCTQbxAZvGxPqzG0RIF26JFZyXkgIXenUdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HToLLJeG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HToLLJeG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0EC2C2BCF6
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789090833;
	bh=7T9JJA1DUyHQ4ReXd0qiODFWkHe+dj9VK1nFdfNHfKI=;
	h=To:Subject:From:Date:From;
	b=HToLLJeGY05lyWXkEg2a1cdRy5YiR/gdtUDSpnkEb2yWNQZO15LhpJJp4WDeQ8tC9
	 3K6W2SbkoeYCa3d+PXFbdj68tGwnX5n25KuFMOo2UEsgWBUllhGAbhA77RVAO+HM6P
	 WQ3cuamnwvOQDmlAj2q1d1tcdA1J7xsMxePBoV8qmY9dGVfw4cVmewv5paPVD+uV1H
	 gQPquIIuxhGkquI/1dU46ZHvVGue0FcrKXQRSeF2Cx/6DR8z6AlCDQK6+2tHfVncxo
	 bh71OXuXTc+f+Jbp/bRn0lXP578aCH3Ma6CrgfT5fE6dOuXKTHhVmdjiINuD/D/oKT
	 zsPEjHTnJ3+1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD84C88E40
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178909083368.28457.3785101997602033027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6562e01da625dc91e6ec45f1977eb6505a1fddb9d20aa63253a63190bdf24e0b
Date: Fri, 11 Sep 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789090833
