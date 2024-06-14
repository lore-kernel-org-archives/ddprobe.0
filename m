Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DA1F146D62
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 18:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718389703; cv=none; b=KxbfaiKDgMSol+gx9ArGinIsDUEmbpcAcxQjPCyjHc2IbJcL9GUzw0Q2vfTySNtd0BQeGhIREBDDfxuqc9mItvdZObOmrkb5rggYjHTvg+lrtPBXH04uwuerTVKKwkoWGJw1wZZy2Q36zaX46Ydb8G8vrS3ya4EJt929y/POCAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718389703; c=relaxed/simple;
	bh=+dFAmxVwtD0DcnZI0Pax2o9uAqUIB6yALh2dPdsFl+g=;
	h=To:Subject:From:Message-Id:Date; b=krikMUxvJ7Upskn2dks1VjVK3btOWG0cBr/tOSpydJYAfxB0MYlnuFwNRLnYr1RlEiIclUh34B2Lu2ZzrtBcLmoryB9HO/dNZ/npMbCm7+iOnWh7vfCuyIUNOYIBuL1UDXNBhDttK9xFPLqrMGP5ioDu+CXOtqqsqqqM67NXUYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UDb7O23l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UDb7O23l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D631EC4AF1A
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 18:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718389702;
	bh=+dFAmxVwtD0DcnZI0Pax2o9uAqUIB6yALh2dPdsFl+g=;
	h=To:Subject:From:Date:From;
	b=UDb7O23lXm/TuW/1oKlL0XThHYlnRQa3Txn+cPTG2TtySmohHPb4QRzfRE9blVRFY
	 iAD9wXT2O08JmVaaPzvbiQ7jsWlHi/6RvVokB0mhQLcLYh5vt/XOaPuvxMroPIVi37
	 c3n086XHPdx7IJXmmMiTIWmj1m7h71zfn7SjekwIzdu4yx6B+JyDc4bGMdIRG5pCRg
	 G6OKSV93nAMC3BlG5eC7aZCiZbW64vftv1crYblCGdYRnT7BJ0dqWfJ6EKBQIXt73+
	 4JBBzfu2Ydnwc6l707B4yLUowx1R/Eluf6H37o2dAxp8qczZhfiKRMVP1n5+4iJ+Af
	 72FEncTORIMBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF6E8C27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 18:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171838970277.1111.7470344643526409407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b257deb7e22d90111cb8a6c335b8848fea79573fba5618b902bd824c1af7ecb0
Date: Fri, 14 Jun 2024 18:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718389702
