Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05859262FDD
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762987194; cv=none; b=qXOeEEAJkSvl3eB8+fARM+02GbrH0XnoGsvtPNHH0/Si0+ue4F/Hfjs9UyEwKDPSzIHoDSYNNSLLJV7Vnuea1J3F72LPKr1oLxoPnzBEM4K/s2gKjsdojieaoDcKXuPeuMRh7z0pkQqXEDxOAQgf6p94cGWviJkjYsUoAjQjw2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762987194; c=relaxed/simple;
	bh=flGUUdbB1RbkEqomff69D450Qo/5zyVkRkc4wIm67X0=;
	h=To:Subject:From:Message-Id:Date; b=hBjVxohyArh6YQghrql9J/tKO9WkxbJvU+aIKwSp92iaRSWKQR8OtHrsKLc4yGVvmrR53vgWB4SdkUrxDWiwhL4SoN9RQ/YfOeHSq5FCsro1/I3Vpn8nVm+W30G/yr0cuq8ce9g45nnfpWJdevQHXlOpfmOEwKcKNz8K/8ievQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mompt+PX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mompt+PX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D05C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762987193;
	bh=flGUUdbB1RbkEqomff69D450Qo/5zyVkRkc4wIm67X0=;
	h=To:Subject:From:Date:From;
	b=Mompt+PXthKpHMraLuadFu91ofQFCBT+zVC83Mdm5IGSwwnHvMOx84fxSDWZgwC76
	 5eHJcavj8uD9ptA59TpEYCTTMyFl7m7v5jcXvBcqyFfOQpi3sfV11B+D39a07KcEIs
	 CzkjI1mU4w+89T4XY5iSHvvQIIuQkmxk9eU9wKMzP5+pdiWOCkRpyken/2OC5ROJO1
	 YYjIWbOyCjgKlPFpujD+BtPAdLBMk9HP4TtOtzFoXZa63eFwddNADTa1231OqY+Pdh
	 evaRL2wt8HgGuiUxeGgzNEh1vC52SauF6mRZ/OFTI4bY6rC5qfZUNEd+X6PBQQzT0j
	 qgAi3gWGb7N1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93967CD4853
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176298719358.7020.9312133894348569609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0eaf9b1d0f12c58e42ebf6f993d3f44597389fcf2e4518c22e9165f25717fa9d
Date: Wed, 12 Nov 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762987193
