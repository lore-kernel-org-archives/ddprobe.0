Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DDDC2FA0C7
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 18:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774119294; cv=none; b=IuBVkuhd+kw2IOUMyoAagNJvkA21O0hk/lftwL+MCsDS2RGcFI5vahSfE9Siec8/ON+xPdhEu1RN/NsgW14hJuIuExbaPM+OwhNMs/KouZ/pl7cubeuPbClJf2ewLGQJgw45Y//CvzgnrHeS0MqarqR+tPW4/2A6VIbf6RYCTWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774119294; c=relaxed/simple;
	bh=8NC3tN2aVln5ppKaS1rBUx7kvOgvxantqNbnTjvwkL8=;
	h=To:Subject:From:Message-Id:Date; b=kJFNwHeKyFXKhEiVTnUnkLg4wAwywlsh4iTd1BYHsP7n+nujDLOgmYgoftHIvJZWk0/tdFEOQShsVuNeEU9niPVPm0+fuI+5uF0Dso/ztFTotaK3m+qGtxiwxuefbTe2RQMdeaYLI9SEKFNWit3aImyvJXPKZ33anWKNfcunA60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bguc6RFF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bguc6RFF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C8C9C19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 18:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774119293;
	bh=8NC3tN2aVln5ppKaS1rBUx7kvOgvxantqNbnTjvwkL8=;
	h=To:Subject:From:Date:From;
	b=Bguc6RFFs2jb3yYPP4k4HDscUbtUv6zG5l+xe4TGBDDqBlhRPM2em4KpsqBjlTAb5
	 evQ8mdhqmFlMd9PnvWwFqsnajCClYsQR6YpFa4ARKxpye34+PIbKz7/ROj8Hngev2v
	 eBDBkcrU+bDH9vvVgjlir9fNoAc6IK5TF+ar/H/0/9mOQK/bwibce6RMuFK1ijqR5w
	 XEAhgQVRekYPQjddKfdWpLOSwNc2r8N+cLmibFZNJpsFZgZ1KGDN4wz52An+6YSTGP
	 /KTTkE6SU/+BvJZwgRSHFbxB1rP6HbmVRh13r+b++FnB05iesOMyaydkfxCILc/Lrh
	 L/Xm0UapMTa3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E36E109448F
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 18:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177411929357.14357.10085756178383993932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7a5080482664c0493982b24679dd624970ac8f049e1c5fc49ad974f38b6da44
Date: Sat, 21 Mar 2026 18:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774119293
