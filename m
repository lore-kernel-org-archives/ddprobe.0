Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D2D31DAC8A
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728067554; cv=none; b=k8rs+bPBWzQjtks+dkFRCLXeXKZiH4u5nUCcmycmIp/cgK1w8Ug0a/hYBr0QRuxCi8Srfh1DfHz/U8QZCaWGQiI9M/JNc5J3n7KMWKZz2JpzJBnBFUtKioaKrNOKHeNUOCGl53FgtE41gW5uySxzg+3hga3krb1xqOWWRwpd3jM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728067554; c=relaxed/simple;
	bh=Hwkvff6vqGZ3k9otUxER3RE5euWNW8kz6HUD48UFxc8=;
	h=To:Subject:From:Message-Id:Date; b=ZdoHHfR/5FJg5KafVFwIkd6Hs/uKDNFPGa4zJijAVhVBfpRr9ZRW6qZ9+q0UnWfiCyk3l0hzhogFvyLVnBx0WSvhRUARKXm9TuPT7OrLBvdV9n1RC+OuSkc1qHl+zKtp5X+kEc29wL5Ta3cujTIzLFli7m6IFUoHzuhDV7HnUNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SXEN7Ufj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SXEN7Ufj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B267AC4CEC6
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728067553;
	bh=Hwkvff6vqGZ3k9otUxER3RE5euWNW8kz6HUD48UFxc8=;
	h=To:Subject:From:Date:From;
	b=SXEN7Ufj0hZBtgWHAguXvvZjmBNN7PpZu2gPlEfd99cEjWUSTZ4/Ei2Fj0ltJw2Xs
	 ayWYPFUp8ICpLNhATDP8RIzFR0nZHocDuARZGjDUHGLtWPK+yH2dvCHmGqLD56ViqC
	 DcsOsA3owsukWc/AZqiyzRnSBPIx/19oH25zzb6UQfhbK5VqCGh0FJDRGj6qgpOLzz
	 BF9KFwKA+d+R0NGsttBUxhd+pTjxBR1VIUkaBgD9OW6r5Anj6oot5Hpx3OeNMup4R2
	 A6gd4yWiCSKZkbk90YyU1wOhMYMSsRXjt39PnjNUYe/qoHg7yjiUd+yhfGrD9zvDha
	 yAIioztR6wPdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A6A3CF8840
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172806755361.24010.3484823305199555168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 119d571b36b979a0253bcd2b06bc47af83173cc230b342e45e0bb5a7f6e43263
Date: Fri, 04 Oct 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728067553
