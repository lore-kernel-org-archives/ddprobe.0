Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6479F3E6DEB
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792217434; cv=none; b=qWEMjWu6hyeFs61gvEl8GTQOhvZMMAJWawSe6rV9yXOox3aHil9VfiNn3vSVpsxnkKyeLfZhh4fXu51dSkQPspFrySAQo7WZZVNHlaHlolUJdM3subQStKEp9XItki+ZmRaHh19Gswb/lvmpz9kXcgRvWZFxnF68Sjn5UX0pSNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792217434; c=relaxed/simple;
	bh=8pPMWDI8n4SAhek5Yu78+ReyE4ERtRkJzgXLcBX3pgM=;
	h=To:Subject:From:Message-Id:Date; b=FPzBI/5q/J2ZfbyhdUUFsQdU9tWMAtMhC18k0ZKtwSWdZSflDeeDK99bBd/YwGEufqlO0Gh8+S26dTTWUlhiBc48maEGNJZTjLuJP0SDhYc/s5lNyng8JodYJSonXokZUdoUmqf3dVJgbGk6qVVNJ3RnKIsEJ5Caui3UvJ0hOD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S7T4skE0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S7T4skE0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9816C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792217433;
	bh=8pPMWDI8n4SAhek5Yu78+ReyE4ERtRkJzgXLcBX3pgM=;
	h=To:Subject:From:Date:From;
	b=S7T4skE08h6MMCNyLipgXhm08UcQZ228QVcVHe3WHIXUZFJwc6sQkVnmtdnvgnwO/
	 9yBkBSti/jjc/NuY2Na3o13daVb0MMBW4o9v64oeqvrntYMXymG7zq5ieQsKGN1wSr
	 blG0oUStW9PFjpwo/KWJ5CNJd521s79njGvwqovJ+y+Kn6OIx+tUJlNbptQMZYn9x2
	 afr/k0c9mG+6aGJODGG4SSSEt5jEppztHIySlZscBTva2kNDeo+1AcBlgNabTMuzAY
	 Cb0ureA+shNMApb+ejiDSHcDM2DqUrkELpOYBoLRtez53AWar4ByeL61hrE32FVsob
	 Cdk8pYwaYBS6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B53A8CCA463
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179221743370.16974.3727693516868434475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4c7477a5a18597bcfd18134dcf41747205efb35dcec68ba8f9841adfd1cb715
Date: Sat, 17 Oct 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792217433
