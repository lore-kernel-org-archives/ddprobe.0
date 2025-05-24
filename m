Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41C011EB3D
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748108994; cv=none; b=N+K8jVvHhokHmTkaSecYYzlA6fp9FSUaRrTexu741cN6CAAqJd3pHCSgT2CI5IQPDT7kfJhDm7wlmceGVySpAX4LBUVBFvNONVDPUOJtZciSabxL4a8YSg8VgC1z/p5oQy/Pt/zIUdgPXUJIE/rJ4O7sQslcfLOQGVc69kAMzHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748108994; c=relaxed/simple;
	bh=yF/Id+mtqgb1GYmHOLhSqgl5ox4d+1BdKgeraxxxsGU=;
	h=To:Subject:From:Message-Id:Date; b=g3o6JQLwWNhcuzOPwyomDWqyHGJIbbHbKCZsM69sA5RuG3ijIMFqaviuIUTPR4b/1mBAPNAr7yIOG8VPPEQFke8WQoJPUXz5n33yrAeBUDJjDkPq6754Vc3TNgG5XL/9DszurDOZ/IlscMoc/KyKRpdeAK7/YzTt5l5IARgLs/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VFwMfXhW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VFwMfXhW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6409C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748108993;
	bh=yF/Id+mtqgb1GYmHOLhSqgl5ox4d+1BdKgeraxxxsGU=;
	h=To:Subject:From:Date:From;
	b=VFwMfXhWFcoy36CkTu5/AaBAx8BHiNf2Z8aVtaJJ/EL7kzFmJbOQ/oHXLJErCBmin
	 ALpnr/i2RPMhfNsQtEAR9/8s4mtfbmPwZg8nNCuih26W6kpR6/6fnvg7zHPYslpGFv
	 DGuvvPA8yOamXAwQl+kD6Au9x8HFKmctwYuwBMIUTOXC7I4MfVDuUushfkTyI/VY91
	 RlXW8WBBI2ae1qFGLjttDw3bJtteokdSuMzNYiqFSS2Ig9mtlPIu9Qp3sqlYBfSXQ3
	 3Xjc7G04u0IoVl/f4eNJxQCERBtOdhdiiZ0RTk+NxTcmV0gY4yvMJg5UZ1gXRAZvBh
	 byie7ClyhX0Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EB3C54ED1
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174810899357.8613.940888812403488446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61a558df3d842f96ba07023c3fc6fb3055baf6f6fdff4624f4ebb71f572bb546
Date: Sat, 24 May 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748108993
