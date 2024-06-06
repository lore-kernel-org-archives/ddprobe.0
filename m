Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BD9D3FB87
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 20:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717706243; cv=none; b=tJ8jE9fjDhvmj/d0LYmk2ylnQIlpLkM76/0IWpbB5bBaCiSzAiT+ZdfB4ufry37UAgwZbFEEUDeGdHFv7IsuYNYtcssxsZRczfjH6uFFZ6Iy6Ay+j6D0YNiT5kkwuSvCA6OVkhfWRNboseQyYdpSNzxO1VlDH5GuwsVPBEat51U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717706243; c=relaxed/simple;
	bh=XG22qIoaJVDwOQHucBVci8sV79phzv59v/WRKLornGQ=;
	h=To:Subject:From:Message-Id:Date; b=FBdA/G+3G+ipLsCaKUdoP4CqZmK+ZEpwF+eQpsjzH32Q9iS1NAKj1l4UCgJW0oGi2FjU0w601d1t23TE85sH83hnAR9HPDbjinyc99qzMYLheBaax2ofP0k55XcQ8d0KZ8VOAY/izz0gS8NDFcJvKrpdUxgHcjIIphQLFyYMHTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sPK4UCZ+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sPK4UCZ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6CD4C2BD10
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 20:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717706242;
	bh=XG22qIoaJVDwOQHucBVci8sV79phzv59v/WRKLornGQ=;
	h=To:Subject:From:Date:From;
	b=sPK4UCZ+/nYcH+XLiZKliGfk3RnnhWZ46xCn1qYAvzWWccahcNfQJ/X0N5ypo8ba8
	 kykwqRGcgcNRUJUe9k9w2uLQg/OkmPF4YV3tVjC17MhlDBNn6vGIvq8mLVGfmB3jwu
	 fqTX1e7breaCFHNSQZYPIce08qzkuvHmfunNkrKXOxdIpf6gkrZDHIWddGipDoyd2p
	 P6QQjZ0aJaanj48pPK/X7mlqkaydp/WBBjp+P8c+KNuOOjytCQWNwfMH9duBmIntXQ
	 59/qy9A9KeUFx9pbrBDiCVuEaOWTg7Ic1m7HSN9KhzbCWIvSGK/mnt6RHvyA07/xSe
	 CsoEOkLy50LNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC05BC27C52
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 20:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171770624282.14485.9242495623429644759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71ae0c2fad0925b0d269620e3c7873b9924d1544e1e531cde154a51a08a31ac0
Date: Thu, 06 Jun 2024 20:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717706242
