Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EDB717DE14
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 16:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716998663; cv=none; b=nwOyq22euLDP/aOAIgkqrFQqcfRiiLAIrqnrY19lmVDZPuQ3IoYa2u2cO6pANM+C+Jj7vSOoTBvXRKSSTbpT7LrirUjbbRseuDrUu1bn3oOtUnKgYC6sn9+To82UHoASs/OASted893L/JgSNFjguHf26NyITFjI66IrKSmhGfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716998663; c=relaxed/simple;
	bh=EkPZQrZMunf8gmHXd+7zGdN7KGhsrBaLTvMZC4nPn4Y=;
	h=To:Subject:From:Message-Id:Date; b=iK+F50QN7BZ4XC2MnggFWV/INDwQLDgmp8gSDMZrwRIySurPQ1/Tgg4h3UeOrYigjKsp3yIU9Uf6nxpwMA1iZpBWn7X7iP5/cFSCYxtjw2OdbiPaDBS7yQ6XGSVRiZ5iwA9EKoQXePdMyyuro1HuDNqohtvB8V5umqf58wFeAec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T+Hca6Zv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T+Hca6Zv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D31DEC113CC
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 16:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716998662;
	bh=EkPZQrZMunf8gmHXd+7zGdN7KGhsrBaLTvMZC4nPn4Y=;
	h=To:Subject:From:Date:From;
	b=T+Hca6ZvP2Ws7ayrELjgBHuhS6fb+u+tL5TLZJHhnTwWzXzPu1y7JRyEGpkJy7LPo
	 MLoWjOaauS6X8Dcj21cRvaGTCQgY1pkIqUvovnExrPgJc58pfAHPzGgYE00AYOhoGd
	 ipEHE8MTO8czv7mZ0m1NqLsAVrUVcLgsCiVDTsHvG6uzuMJAFVYEgLK55+UV1DS/YW
	 yYhEfuvHcW/Gz0OU9qUAE5Dq1jaShl1viUV4C/nJiob5odexiIZ4NBjQzsycZkSnbZ
	 MEpKtvnVp+efBUJixr+ZGgqlchJKz5UNGyS7mRFEWyPZVjd0/ZZSYj61sU0IebcfOD
	 yz5BgqAkYbC2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF926C25B7C
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 16:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171699866277.15257.10343008465725447832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c6e98ad032602c4b81c50a15a8998970c8872ae691154dfccea9821b2a4716c
Date: Wed, 29 May 2024 16:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716998662
