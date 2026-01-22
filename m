Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D7F23101DE
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 04:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769055834; cv=none; b=orG8P9kyxmvVVBT1xWh0GzntbIzJeLcy93zQheOtQ2cVpmQKdop5s62nxPug8ksR6X0niJLH0+FCAMZ6hk831Kl2cXcHO0eXbW/pQcwksxSAhZXUC0oKq1y8N/JeUi19NqHDbCdF/fxgnC8R305ocp7XMrSst5y4sAG3TQ0S32A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769055834; c=relaxed/simple;
	bh=tsMRy0Vji+QvXPtj0tkCP0rR+7mRkMuTZ1HzTEbOTwE=;
	h=To:Subject:From:Message-Id:Date; b=FbJ1hpqK9/H8sdrNiLnJ//28ETS054/pJvE/WXiGbjjvIj8neSOGVZaCOMBmJBkmPAMLFMWebXt78CPXdbWKTwPHKCrFp/9xXRat6dh/lO7up3NHWSJBqgAXc5SX7gE8mz+d5bhU6TfVeR4x28lE9yzq/sIaE5RxaZwGpkEa+dw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PVhDylv7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PVhDylv7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEEF2C116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 04:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769055833;
	bh=tsMRy0Vji+QvXPtj0tkCP0rR+7mRkMuTZ1HzTEbOTwE=;
	h=To:Subject:From:Date:From;
	b=PVhDylv7fRzLRu12Keaexq00/guez90H6f1RY90rpebuU79JtUUuq9fmaGJNJQJZW
	 1uZXItZNr19j5S3YbOJ8IAEyV+1vfxtyleqRQttmEtASd+YHNy36+Lpro0gvj3kQ85
	 HHNwUUSi5nXqE8dpWR2uI5aKWqD7ayjokZT1t3R3sWFAaAg3vUR7TWnCIPBB2Vq1Gk
	 kxCCoXWi/9jDgN0yDwCJPHcTPa9EiQvl/MheJEP6eT99+d8K0Uu7cIw5IDVkMt5S4a
	 CJsdifI/SYYldSOBXynsFCdNSVAAIDut//eQyv7dflDN+tR/LL+621mevD6i385IDP
	 HFJVFn25z+P2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 983E3C44536
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 04:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176905583360.8874.11770606722104881041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8168d4959c46d683963a7c0b2c0db1bd77e05dcd9f11c6a2077cf14936cf88a
Date: Thu, 22 Jan 2026 04:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769055833
