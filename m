Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B6A2481AB
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722577554; cv=none; b=h1QRB0Zz54N/qiO99RzQSJtnWysibEjAc2vFvp5RmRifUX9dqOsnd5RfKnq0u6pdGjQhLVH5Cf5zPkq01gutqicBaO59snBgjD5w4FoJdoH4ch+aTw9OT5NG5+/q4YBDvhOOEuaa92IplpMEnuWK9ovjd2jfHznXuRp87wIA01Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722577554; c=relaxed/simple;
	bh=tO8bpvKFFm2pRKi/a3pnqLqoeh0AjCVdb1P7o3QGrqY=;
	h=To:Subject:From:Message-Id:Date; b=YgDaWqkkQTOjxz93gy291KVWmy6jPFaiLFF5oGLXITl4CUN4nuQvIg8lsGg1TfRm54GbFS2DkREcFbbd/PpXDinkGCA2uSHeT1QOzA+duD3TkK7NwfKXMiAQ9k15DmhWgNKnmCMnQRG51TWMO0aQ9UjCPp9KvpsrncFscSgZo5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aVXb8Kso; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aVXb8Kso"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B68BEC4AF0B
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722577553;
	bh=tO8bpvKFFm2pRKi/a3pnqLqoeh0AjCVdb1P7o3QGrqY=;
	h=To:Subject:From:Date:From;
	b=aVXb8KsoC0i7eG2HENts/MNA6gKuKZRJdBKhVNokP0S52yDVEBh9QEhtu6TGOpI+6
	 7HGRxSToZm5P3fHHetzgh8dOz1eZGZ2jD0pB80mvxLvtM2JTlgkWCD5Ux3VB2W5yfu
	 vWFqHT3dW1BQTKZXH3cvOFglhwHATylWVBnBihdi8jB4w/zbPLxpcxkXPznZer0el/
	 k/QQgt3okJxPEbgQaN1cXN2wq4iBFQGn1kFkj4m6R6RE7mIrMqOD2gC95oVlD7PXch
	 ghBf06eMtJJ1TKpVbEveIBNdMGaz9YVtz8Ppm/BFcEaeiQFNutGh8RYcGUCEP5a1rc
	 R9NDneCI2ioKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99BFCC52D71
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172257755361.11350.8612611257654938747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8c1257961007520780a2b7bcd11e1b8f7531d8a2fc0bc6945eb2cf322c5bf8f
Date: Fri, 02 Aug 2024 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722577553
