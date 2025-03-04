Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46372171E43
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 03:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741058334; cv=none; b=JLyK3xH/VQIRpEg5HJgTmfme/TzCF9/Bv7ZHR4Hddk9rB2b6hJTkXe4bERcB3geoAsIOYSJhYj4n2QCA5zDSJ0sqr7qpRJ/gAMISrxNqQZsXpNuNyzYL8BbOp2VWRBeEo+YvTiI/LGpYbvereMP5YyVnLPrk3tbBi0rie8VTWWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741058334; c=relaxed/simple;
	bh=To+9j/H/P8WvVEk9c3Hx0KwROXK5DDyTN98TjORi6QY=;
	h=To:Subject:From:Message-Id:Date; b=tEL2Z3G7C4Kco+GIVYz10bBBLsv9Gj6oD05zqx2nxKrBdXNUgyOkW8rZmfd2sMQz5QUsJBg5DDrNghioXbhmffBCAtzTTOjNEwf1urnH31eyTEhSvJ4+/E4GVae/G/8hHlADg/ZSEsQR2lHoupl2ibGp59mkLwqc2GyZuU/Stks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u60eoilW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u60eoilW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEDE7C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 03:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741058333;
	bh=To+9j/H/P8WvVEk9c3Hx0KwROXK5DDyTN98TjORi6QY=;
	h=To:Subject:From:Date:From;
	b=u60eoilWe17ayFYgnqZBDyAVyxoOz9NDncdDBHZs9dDrWQMmuZStP46NLRL30i/M1
	 +DFUhyOe7vqH/cAZp0goN8rag/3iHl2LCkPV++3Lx4V/gVbkyfSC+kPdMK7fE7tm3E
	 6CFHpmNfCCaXYtwdC7mAql30bcqBsN2VOu/o9kfhn4SQqIe+UzLaEMNZhv3rRPof/w
	 yKdjYjL8vrAqluINuYyWT2Yiao08wTsYRO/Km1qS7GFQXYAiISQiqlsOtMbep9g4gf
	 ZJQhxpfl6sLNV6a+LscRTyvfTnEIpRH7T0+viAYRnzRO01Yx+wSkyFqONWtKB80AeX
	 v5oaDznAbqR4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 982A8C282C6
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 03:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174105833361.15425.14060428172039571252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a3520c4227532b08f2ffa3dfa5650966bdbc0814db7726a5d99fc0c3d7b0fb3
Date: Tue, 04 Mar 2025 03:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741058333
