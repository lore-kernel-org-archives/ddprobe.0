Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 376C53246EF
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 19:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777059454; cv=none; b=Z5ddQNxZSdQGWKJ3BvpUKGS2hPQdBebk1EFpSyfz/ZDNGx4gwr2MtNdH+7RNu8d+G7UUlQPKYZNWxMiNrz4KJEjdzQZo2vs3PLMQ9c+SbxyVKI5g5GR2a4u+NbcOYADhMi/xZhSbPonlCZ1vFo2jibDXuDnKf/zNgaXPoIHD6Zk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777059454; c=relaxed/simple;
	bh=CQdTHsXgj81rU6rcFFdV/3/KvSHu8Om83CgO0AHFUCY=;
	h=To:Subject:From:Message-Id:Date; b=iBXQ1sPtk0wHP3m3RFXybWGpf6A8eubzsJ4qQb24JjRdBd6sgHXspHhrwHUuRpmLq47ouL195mcHveWxE8h1kt+ogvj3s1Womz4s3OmXnaYkK3XsIFVzdRig1rn1fKiJcR0IiZhPUb62mh/5TGiWmgykv1NlcAhn1IhXK1c3vD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=svxHjj+x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="svxHjj+x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7F3FC19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 19:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777059453;
	bh=CQdTHsXgj81rU6rcFFdV/3/KvSHu8Om83CgO0AHFUCY=;
	h=To:Subject:From:Date:From;
	b=svxHjj+xKeTkQDIx1Mcu2a7lr2heon8FFkW5+vHVVZd48pPhEXYL60vW9rVwKzZNX
	 6WpRz7n77MdW/izB37JTRZ3cXxmSMyG2keeDjeisIuOqPJGGcRkHOqlKGnStiHI3+J
	 s11wIUtGvNR4YeE0JeoVCxH4SAkgdRq7TUA6hctbD0chJaqSAQC/kx+PbxBeFCcsUJ
	 K2zutd/qVLTXKzj3RUM5u61WawAnqMbWLrJdeUcGh3xoNZ4pZdTNQnoLEBo0RQ1syz
	 sfhVGIaqdiMLtGcWgwXpKFNTOul24k/n/VEdcGVV0plN937ZzPTuCMrcafMZ7MDNuO
	 32EiK1BfilgJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A988FFED3FA
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 19:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177705945368.23159.8698125600145621658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19a05c4f678e63b6c23c9c9c1292321938bdbccc0513f0737e16623e047a2842
Date: Fri, 24 Apr 2026 19:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777059453
