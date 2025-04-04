Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47C05199E8D
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743800394; cv=none; b=WLTbt4MLRaLko97Y2U0b4arOMSkkyctHjAndwmbNAilrQqBW/YD5FEqpB4QciPP2JfIPBkXLHmpoUfm6uY7vr0XbnZB3rQbTefyeO1DpT6G59a8OYmw/0CQ5jQ2isYuxK9oyEt/ixn7gEkj7g+jDw3Xam7DKYanYwkR2kU6Svp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743800394; c=relaxed/simple;
	bh=NY76TJWx2BVDfI7LbtHSvJDK+wjh/jwBEVxx98hWUvU=;
	h=To:Subject:From:Message-Id:Date; b=hqtQywhGbrQyqi5Qoqg6H35dNolRtYUjBT8NZnF8rLbh1HhjZTvAPtGkr6xrbHU1iDDNWt2vYr5hN+RCcVLp6PW2D21g48fnNwkodDZGp9VYLp+HxUWxpVy9BttT0yo+fvwCB0Z+gLv5Ep/jgw+nxktlGPlqvZlywicllkJlx1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FQ3YNgjO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FQ3YNgjO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE13FC4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743800393;
	bh=NY76TJWx2BVDfI7LbtHSvJDK+wjh/jwBEVxx98hWUvU=;
	h=To:Subject:From:Date:From;
	b=FQ3YNgjOosEOiPi4WUWZQ1lCgO6tUcp1n6qO334v57GjBekp16PnZGdmi7E4/0v2K
	 szDVlArN8jBRfSFD7KA3HFXh5AWXjySmjP8EKyiz8rozlBxog3ebunjyTy89cOdSmx
	 xJRXQFRUIlmuyo/BY5onBOBiKZhDEqNy9CFZBqLP83bmeX5XorINXxr5C6aVeIUP8v
	 /LVT++lgSkg68npkxQqSysKTwySEhP7NAIsADp2wp3Ni1Zhn7HIvBlXAoFL4mjNXxM
	 tpBRNtWVfDdtf2QoSZp9/0CXCD+c0s27CX1l7SK6Imn/wN+AVz959yIuzFtSqAjDwN
	 kOq/gawWE9I/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A539AC36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174380039366.22393.17296300561843623856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3b71f4bc31093aeea2b5047fb5a3e404e95c57c73eacd01e7ca1f65ac00212c
Date: Fri, 04 Apr 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743800393
