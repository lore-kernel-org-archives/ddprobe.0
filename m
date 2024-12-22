Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E24418C039
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734890154; cv=none; b=NfkzJiK0tJojQotwZpSCCKZEiME8H7sXZLAGg0KyyP5KZ6DEtXSVZVZLcFAwcEVS2Ca/SWRwIZDZ/jyeuI4YPI2CZY0GuGs1r1bTFAUl/Pc/RRxAzjYgcwJhmcJaNGb4H0xxSyWQ31LjfIPBCZzwvZzIHEDdsIje2XIjWwhIFjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734890154; c=relaxed/simple;
	bh=ReTFAr1S47k6AC6zSiGuigG3G9AQLW7QGzN/GNrFXig=;
	h=To:Subject:From:Message-Id:Date; b=bNgC6BF2EdmN+epRk0YZaKn/c4xviCosxA4robtqvjIC7D1DTOBwzafWL+jJUnQGKTqlgjL5naYX/lEyVwVajp5BCqXa7Xo3tVDMY/frBwQfhQlhJeJBQ2xs62DPcOSJPoaksMqOJhjQIguVLzJyA9cESGe1QbfoOKtK3akOhYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nY/ncdxD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nY/ncdxD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13D8C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734890153;
	bh=ReTFAr1S47k6AC6zSiGuigG3G9AQLW7QGzN/GNrFXig=;
	h=To:Subject:From:Date:From;
	b=nY/ncdxDXHWdHfIqFyQej7OxiCsoiIC1NoR26M/H2M8XtzNHUxNKfipqeuKqvVfVD
	 SVeCJLWSa8pUQPsV+tlxjnVz0/9h4efmMtFwcFcjVJ0XLjcgfAscH6V/6KQY2Dw2KU
	 V7Sr7skht0hu6Ms62nz655XFtW+s6luRX3hEFfuKedMeVYCDW9j2qa0eftr2F6aauD
	 BSudROev0XYdEo7b+bC29psEzx+hhWU8QSsR2GTRlxa0Lg83NBjYeOVwNDZgw6Lkpx
	 OcpxgOhUTAuH0bG5pD41mdK4IBno1fRrbtXieyh1U6PNty7pmhUZ2aMb1saeRp/RsV
	 c5beEf3EJ7Ong==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D89E77188
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173489015358.504.4640793654434206863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dceaa4a6ab8a2d2f5f1df3e3a42f101ad6ffbd569adf94ef7105b0a219484b93
Date: Sun, 22 Dec 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734890153
