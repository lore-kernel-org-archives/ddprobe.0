Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ADD01DA5F
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748542794; cv=none; b=Uaz0SPp/JMJWM85maMlDyOunvpo60eJUMccYP/Jh7ahFvNgWJw0hENV22iu4MS/MnkLuey8Z5EpLmRUFZP+XSpFvyAp35jN/MJcIa/tF3ja0gbyi9zea5aFIpD3q++NFAgWEpqtra3JP/WIdmz4pWAMEjsJ3eeGHt1WCLwQ3rMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748542794; c=relaxed/simple;
	bh=8h0XLGyYoqbmLeL/lX1oxA02ES6gf7qaAo9ylhOGhkU=;
	h=To:Subject:From:Message-Id:Date; b=jL/PUp2CfUVML55p6IGhlUYLYDcB3+CV2C9VUEZx79kmvLgMBKRxsuW8LUlmVzmfDwgvQuqsJtSGU0VqZUaLb4YGq42hm+3XINF7GSc+tyn+g/+FhY6sW9MfTeyaaqBfA6W9+hS29yng6+mwlAGInul3cih1x5wQ7QFr0Jtukuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ws5u72zr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ws5u72zr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D461C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748542793;
	bh=8h0XLGyYoqbmLeL/lX1oxA02ES6gf7qaAo9ylhOGhkU=;
	h=To:Subject:From:Date:From;
	b=Ws5u72zrRREMh64CLg40FgPH6ti/xuQEPd2KXFGNQE9NqtGfLwayB96PsO9mvQHUB
	 sDd+w/gMlZ4+FFaqv3rPNBxHVE26QJKsFVhdFtE8enTeaZSMp7pzgKaBBoAuQAUrzw
	 Rr4Pz1a5ZeCric94F/YHDni9Pn9uLh6cKCYx+WMYI1lkft7beCRlfu2v13RoSXRRYm
	 DTjb5uGSRZhMYGQRKil5VYmnJSroAp0UbKb7cQB/MCC6kgKFmzpwNPDuVHvdaUFIjC
	 /eeZIWnt72mlgnJJYDEcL+flSSK8bEP12qAzBgeZ2KnnFypJ14a3F/h3gc97UyKoNR
	 aTgxkEV9CiP6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F534C5AD49
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174854279357.21403.8674577422333097476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2056df250dd8d3ce99567b106ba40abaade7bf101412274742cd978f1417db2
Date: Thu, 29 May 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748542793
