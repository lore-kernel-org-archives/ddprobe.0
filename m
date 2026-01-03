Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D8AB1A9FA4
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 08:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767428634; cv=none; b=feOQtpVcsqfbwWYYCFX57zsiB/4CRt2nR1fI2ysrcffOXc8Y1zRdJ14T8x44NNsQngcbWI2abpRftw7UjlK43rD+aKcVK+34iaa0ao+T5tdHkv/NuSwa6J7NA2hbYtv0hoJci+uTEaiWryfScHQv2+n/u0YDMgA/MndSpggs3Ao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767428634; c=relaxed/simple;
	bh=cl2UxCS0KzNbtjbT90bUHR9F0Zt5CBQk7RGgJlLbO3k=;
	h=To:Subject:From:Message-Id:Date; b=Lg5RxeXHncVEUu9MFjsGvMPQsc9C0a5Ru3WhDjlGGehW1EstAYISmaoPzjgci6Q8iTGg2oOOnv/wNf5EY6+NK84OeVyTWic3oJy0EtM9fGY87jekiJ82G2hCDeUWhIjMycxfeVxPxohCAuvatUsGsxxUjLh5OGW+ZkE8WZkbIkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mZN1gmlG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mZN1gmlG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52DBC113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 08:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767428633;
	bh=cl2UxCS0KzNbtjbT90bUHR9F0Zt5CBQk7RGgJlLbO3k=;
	h=To:Subject:From:Date:From;
	b=mZN1gmlGYheaImaZCXZ4e2e06dTgi5MDN1HD+0XZ+SUzSCY2lmz3wau/WBsBjdFYh
	 tVyQxLQFqrLVoN6j/ypSHt2KxB/ygh/J7NWICw25FhWUHxJYSmqKSkEm2GMcHu+OPH
	 1q5BTQhAuCk00rzY9mm/R8DRZeb/Y/+e0hj/yhgSDoQ525EBSLiwweayrjqnWLt3+b
	 TTNxeHuaAEEiZ/XvacpWuw1LeHqXcIkJ3loNL1z1PFhWOViPXJmJuY+14TF/OCJIzJ
	 hUlbJvCT3eqUNpsXKLNM4MxtzcBb6I9OgvmYreGLzAyMhcLpr57fQh/6NVKi2her3C
	 +8nxgfpRtiqaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EB0FC6174
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 08:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176742863357.24790.18101977223029788297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a651577aafd802f8b811a00ec0aa3f4bc0d9f7e0dd3dac3bc19afc171a64c37b
Date: Sat, 03 Jan 2026 08:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767428633
