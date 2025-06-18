Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18966F9C1
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750208994; cv=none; b=doK8FeVQLD0gMeqL/ftRbq1nqFed7eSi+4kd+1ZzNy/bedN+BNrjw9WY/R53MnZKss5v23P+kIAuRms24WM/Bzo5ks+mMo2M+vxD4gxefzeHsNY42Sgw3x8MkNwbBaQMOuydQTYiDRBo6m4L+sENpbRWPYOBWFefntiJou8/63k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750208994; c=relaxed/simple;
	bh=iTP7rAOiGQrFyGcIRmPfpCQKiMfVbBag9ehQzlFv+kA=;
	h=To:Subject:From:Message-Id:Date; b=qjSzTI5pUrzPJw6sFvbz6Lyx8C3IzplKFL8VmiSjRHgoolKEWVp5mmOEKJW/KcJyawmqRhNmi9+NTnrCV963ZRfTQdj+Nkg8s5kDCnElbFFcCdxBlE9o9nw4IaUeBa6GCf6/Fbq6uC4pXW/oDxHhc4DxCu55dQSgVLTYY+C6/Og=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=umIm0oX0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="umIm0oX0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D06BC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750208993;
	bh=iTP7rAOiGQrFyGcIRmPfpCQKiMfVbBag9ehQzlFv+kA=;
	h=To:Subject:From:Date:From;
	b=umIm0oX0FO6jh4zFyv6JTEVzrZj9vkD1rbTDitL8zIX8M1gZ9GQMVciO4hWh6MONx
	 vkgDQjw7HgCBH/NFey5fpGwPQqPO8v/pX1cjhFLQfGP/YAxUC3/R7xLwL5Ns7WujQj
	 9bMAgsOPsEI1JxkqOsKt//rNlLRC3Nhh7O8riTkRYNak5GlZj6ryh9E8Bud51lY3SC
	 iPv8BLlejlwLeIVc+hEgvvDpH0/7i7/lQXfu5elcUwo3cS4kYqkkuJLs6/TfD8qi/2
	 brN6jI1i6zfcfJ9fR2Z/7xhZEMVelyYqCH3ICcs3+vH1NKQcf+O4nKUtuLGKdRe7fv
	 AtMdgjR85GKaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E760C71136
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175020899357.13083.5032392372052152303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a407a9ca3842d094cc39afa44d40e3cf21019c747b43fc85da6227e69a8ce1e0
Date: Wed, 18 Jun 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750208993
