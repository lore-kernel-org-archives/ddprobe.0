Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C710243387
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 06:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775631334; cv=none; b=AjTufiB9lfKnEAtu/fEyRKM6S+1RyoVYWXMgcRyOsY/207pSS8HNE5ApZNGIBSZgWygHpc951+oA4Nt8wNrNWA0lBmAfD/10dpevuUVyqddF+aiqlSJA6leATc+sFAJUqARzFLEHhc1C0NDYfljs98eMtY+Qozz7kkcEPW3GoMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775631334; c=relaxed/simple;
	bh=G0UsK8URXJcAPqfvFc1kSkcQGEUGiy/PEhdj42X2TIo=;
	h=To:Subject:From:Message-Id:Date; b=cXCJNknpMYhTnt87XHfxz5HQ9/HzAaKFP4RX7EnG3lOg2xKvoAJ0N68dkR2KTv1I+8u34n2mDUafibVNkyx3dxvD7/CvbafiqW2UyPVss2RFa2+ZAH+XZLzbdBOtJ8khqLyQ1n1GbuuUjanMNd41i8RvZmZVaQtVlC2geyAQiQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s0HUT1MH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s0HUT1MH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D68B9C19424
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 06:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775631333;
	bh=G0UsK8URXJcAPqfvFc1kSkcQGEUGiy/PEhdj42X2TIo=;
	h=To:Subject:From:Date:From;
	b=s0HUT1MHQK7P47DOPhumw/eLzgfcyYPXlynn21xNP3JtkCiOLnrK8ZDKDidfb5JSx
	 Xem/PB4x4CLvYoC+lFicJwFlI1dkHDd6HM+HnYKH+33HqMO+naGXf5KTVR20+8GoHj
	 7xKQd8Sf9IpX1YXt28nNwTIMb8E2nJ0K4L8ofBEtKDk59APNc4R918ifSLpdHyqvRL
	 85ZocLe7gQCdHc1Vt/c4xOmJRmDVSM0K/nv3xeW+j9p0ARJhS4RNUs0HAcF+/qS0HI
	 b4CmKph6voOLIFW1Ms5C0m88iKFVVEDCWm5tpsLysDW8gvVwVppEgc5NSUbkfpI4FR
	 a/wbVU9bdSOBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAAB4FD5F88
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 06:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177563133375.3788.319587533730769023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecdab2d1caf422530d95adbc46edae50c1d8540bf1ae8502c1e511474a9f5441
Date: Wed, 08 Apr 2026 06:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775631333
