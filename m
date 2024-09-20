Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3522918EB1
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726819554; cv=none; b=sEfZn56Er81k3ajhLQhjhUqMyiAhJLiXI5acWNj+uEo1Owbyu09bTDjI/5tHpowcy+a97KIAjq2raUvScZIPO5yza1nFrwv4uaJtJgGnMJiyb/wRrUUQnja2H5xpEpp3dStGdZ910c30QdrONOlYIcviUpm83QdBwc0nOwbNk/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726819554; c=relaxed/simple;
	bh=Yxznkhoyq5zCC4mM7jhHmzJKKwjXuhzNllgyXN0nU0w=;
	h=To:Subject:From:Message-Id:Date; b=UFul9y2hWHumPIyGtvDjhsRDzW1dfp2HDHDBRfxuMXvtGoX1yFWleQl8ZQZgq5QkStGMDhm/x3Py5EUOt/OVAbLOP/6MtTOxNRMsaHVSzYzob32xhy2wkQgGbXvv0TLgpFU0+rfd76ZHNT118osdl9CtyKTQ+YnfZbdmZKsKz9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BvhDwrvI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BvhDwrvI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B89BEC4CEC5
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726819553;
	bh=Yxznkhoyq5zCC4mM7jhHmzJKKwjXuhzNllgyXN0nU0w=;
	h=To:Subject:From:Date:From;
	b=BvhDwrvIIl4jAK/+qT1veIyi7ienalhTTQrleTploImSMhBAwBwCuIAA3ukjSPyEo
	 acnQYudniwuLp6UUyN8+cbI9hd8rc1L/Rs/qarZXn+jLNsB9drbZ/iIZ2hTsQcqJay
	 yH971nsvMk4cdigTsgcKtF0fRx+qETp4dJhjg7FEXhNeHXqBkZ7s3pKiXIXTVFHUnD
	 Yl0JpoyuzVjG32gjMIqEoQDsmgB7i1ABpUGiznatjuEhJfhXlD4stC/Q7p9OX1yer6
	 gW1XHrOCTFJ+xCaQvGfgUOKSXBrXfE3kBJciHfdxGKT+rKWjLVMVCpvpZZCAKZHUJc
	 E1tf57M0pptQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2DBCCF58E7
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172681955363.14733.6655703754117829400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6c49a23cd82e437e0be9fc1b85c709a11f263bb62ab29067a531195f326494e
Date: Fri, 20 Sep 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726819553
