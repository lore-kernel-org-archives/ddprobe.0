Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19FB72F8E9D
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 00:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778201254; cv=none; b=EpqmTLs/3NkjV4WiJaWKIjluAQRj1agjnhjUyfo6OTlbB5OP6SKOH2Xa17+7/cS2Jbipbt++u+O2/A+86Yx3qkTfmJwCAUuZJfb9o24u3BaoivKJ3gd0WKRsP+operXSIU/LU3BBdOlapVj8x43GWhXWLsSm2a10aM7Dp+fXEn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778201254; c=relaxed/simple;
	bh=yaR3BImS+l7OnvNThIC8ffPcnS+kQB3a2N23LqI8kwo=;
	h=To:Subject:From:Message-Id:Date; b=WjTslZTdItH1LKgJiIFAy5sfq8c9SxXtTOmp7H6d1BHcEVHSZ/02Yd7TxFAw61iou9eCoit1nw6ZXYGRzCyF7oEWMedxY86N5LSjIYmpoYrrRi2yDNMz9IkH1z5moP4SFSo3GQmwyMrZh3IZjf7vdb8pg2GLa45iRAvpCEtlBps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fqj7xXGP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fqj7xXGP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3D76C2BCB2
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 00:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778201253;
	bh=yaR3BImS+l7OnvNThIC8ffPcnS+kQB3a2N23LqI8kwo=;
	h=To:Subject:From:Date:From;
	b=Fqj7xXGPI+vc8puZsa75JbW4Y/hsrxogbOcFycrkIW+f4vpcvef2PwUy6E5Xjc55Y
	 P3+UWL/1fxfp41Exr0xFcdPHiX2iXzF7FexONQZhTY9BbANeIAxLRsxNTnHXb79iDK
	 o09j/FhfWz3GKJzxAp6N4TLSY9ee/vyvL+kg+huk2JxcoYnvBDWD7ek3r5ImCpILw9
	 DF9SWMNw50r2gDFJH1Vn6XYRSQnRQtQwQyDj7zyISOFs0ecoEC3X6GkB+j/yPNNRyk
	 L111mIhs/L9c3t9z/apGBG6oYbgeYITsRVLCq6oEOEALnBSuQ8fM8A4FZ62ybBsgkm
	 rA6rhrQ3O+dAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0EF3CD3445
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 00:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177820125369.19553.16884536219272912336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b08770a1cb0b747bb52272d65354953bd9798bbe708b3128a66b4a098fd7c22
Date: Fri, 08 May 2026 00:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778201253
