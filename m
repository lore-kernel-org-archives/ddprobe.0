Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2679C21ABBB
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 05:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772687694; cv=none; b=BdcOFK/84eQqby1Co430QNTq24PUx43yoZcXTNFuaP0M9435OXfpa3Xfq4eVz0xyoDrOGkemWKtgbbR9g3wcXuZgQTHkFb+RiUhxfpuTiMEhH69Hgmd7uT2kOEJq2w10Zbk9JcwesqLT+uff7fwF78nVsXSqsZcJMDBJKPXuo8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772687694; c=relaxed/simple;
	bh=RhhUDkcCQjfPy31L5xkgbXVhAqPZeqcT4P4f1PNXeSU=;
	h=To:Subject:From:Message-Id:Date; b=oo4+7yhd/QjPN+GYJRowh8ssXKAHXe9coHtnZ/Kyq1M9vju24i2yTFfS3F/wgcoX0rPkaTkwAu7/kiyf05LnolB1Gee27F2eaugYcmZCrN+pz0wyNNBCgRpf9fP9CJfG8miSUdtUxIrPHIlLXer5EfpQfS0EbBeYnjpce+QfY0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZIhU6563; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZIhU6563"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F6DC116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 05:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772687693;
	bh=RhhUDkcCQjfPy31L5xkgbXVhAqPZeqcT4P4f1PNXeSU=;
	h=To:Subject:From:Date:From;
	b=ZIhU6563gvPbEJ7zRdQxOuw1YolGw/JwwpfOeu2wmvjof72btUZPpYLL5p5qd2Qp6
	 inmx6opY1AiIbIfEVMzx2pJkvcoueUnsjS46kWaM+475Y7MO9/Ap8DE7QzsOgVMdTO
	 xBqmFggYlbyOna8plml/GnLFMSjN1ACQjlqRmq6CqDrA55b/lGCy+9vcLHcFB1RA20
	 6PsYxbPNjEW1pyf45ePJn2ODnU4l05NXD5zUicx2KWvTOEnc8z3r2pEkXpaRTzrPmE
	 +VvljoDpuaIgZqzimtvol35nVw19+wQTqHoEas9L3shXClCzFhH2ZnfWw892KLwFH3
	 AgUiNU5P4YgJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B47EDEC07
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 05:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177268769358.29646.15872485140852658659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15831a78a1d86246278ed7105567731f9b8570997ba3db5c79a6adb42247dc75
Date: Thu, 05 Mar 2026 05:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772687693
