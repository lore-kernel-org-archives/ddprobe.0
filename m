Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38127A35
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734868554; cv=none; b=q9diXzEdVpGD0F/w2qZ8JiACmyQZ+sAqUSRv8I7bn2dMtEvZOs/SmbDGSXJMAPw8fEcsK2g5naJn4xWQKgiIDmOZq+7A+7iigVQam+1FXlcGgL+NGthpfqGARj1euLVRINfy7HsxU6uRiB4+Czxu/SV3V6UF/yP/6avXJUhqL7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734868554; c=relaxed/simple;
	bh=igiRoNkJuqgBoJTeVBPpUECkS6tl9WlLqybSR06QNKk=;
	h=To:Subject:From:Message-Id:Date; b=G2IebRGYD8qW8+MFni8ncN37mXnHroYF8viRT0NPoknL6LyuZxeFDYS2JqWpeVWnBa3MqsRviDH3uArkBh4OIOfvv/sVVDxkKJPrs6Al9n4BnuhdBsNOcsUBydTAXOtRwSwu0Fmk/JjOegUcjyNY7UA2jNMkQpIAYcEO/79qNX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AlizoAuq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AlizoAuq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD78C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734868553;
	bh=igiRoNkJuqgBoJTeVBPpUECkS6tl9WlLqybSR06QNKk=;
	h=To:Subject:From:Date:From;
	b=AlizoAuq2sEfPF/WnTrQ2kYakPlyRxsGwYqxueJhZGQJZvfF0LZOvDVXEmnUxirRq
	 ObSrce/3OMd6/zELavcTUbr7okB/kx7DiZVGdtPSur/sQOoXNWRgJB7mepf5VitaTo
	 oi1zmNmyaKp2hSA8WWDWWMVPk13ZwDlYGvQ20EcsqC9K5qT+ajDlQnePUmwQ3ft589
	 y3ii+hNjX+hHm9xe9PT7DVV47LBOpeohn0rkL6eSOtwlHwUWyPsZrIloGFmz2yBIPZ
	 asIJyV0Tvox/9VSD/XQk/PvoTJ/jvrDByuRHTYHDx8hbw7UWsSj7yveR8Z/Ni9A2aH
	 IuYee0Qdi6d4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95328E77188
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173486855359.15781.14093914192733580120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c2bbe235a61aebd93d2abdc9104883a823e01db5f627236a9ad1cad10545a20
Date: Sun, 22 Dec 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734868553
