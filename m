Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD7E318EC9
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 01:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783389514; cv=none; b=rHxLWCqOBJfZK6ztWUIEO39EMLM6Ruewc8svWSnA6gMudsH2PUtR55/KBfOr0uLSP/4fe/4QpYtlo8CnpFKRV7SbAxKj+CQKcFos5XQlsiKeSuyiv04VUz+MWI2fCOvy73npmnGnM5S5hDN7o6xRvagR4f7wGWoXze9icStHmlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783389514; c=relaxed/simple;
	bh=ZszLvHYBNuPspnfXlzqpGDQyX3/9dT6bL+HF8gpJmkE=;
	h=To:Subject:From:Message-Id:Date; b=nF6WBNtT1ewYKqGyNbMR+O+t5LObty9dX0VGeVlMWJmzFXd3tll21GQwNRHZH3Mr4iuPbCTFp42jmer+OdWtNycavHGdxEL9CeObAVUz5E0XQbGe6hU0YQH7pprdfK2XUDia14CylQTqTV6fDZYiww0J26FvSuQMIjUadP87/70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=llg7etHv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="llg7etHv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C96D9C2BCC6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 01:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783389513;
	bh=ZszLvHYBNuPspnfXlzqpGDQyX3/9dT6bL+HF8gpJmkE=;
	h=To:Subject:From:Date:From;
	b=llg7etHvx8FA403MlCzUOXuU5znOzEsHFRo07McnFZgTTHyfcVmwVtfYRrE8x4Xco
	 jYyjRIchqdhzcG9clSK3vT0h2FAbPuE4rWVzhsDfdigw9jqg+oHTcIhi0RetLjVlTd
	 8zoLj3ddtwSzB4FYyudjnfqRrehbcWojRIeckelAfKL2ZNUhCtDVPsUy+B0qUbhADy
	 7lUPfEXEN9MwYBMdO97UaYPhAm8kmX3XW77Gou8TeZNIFjZPiO2FYyVOwe0SWIXXzg
	 x1WTgVUouMIWJAuy00dAk1d9Oko/543I5oYMUZCktFSg098cWweuH2LyhBBwEUtLbx
	 4WLbUPJPo+1eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8BFDC43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 01:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178338951368.23551.425918212215918412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41073fe0ad22567777448277b77f228d0e0ffc9416d97397de13320396218001
Date: Tue, 07 Jul 2026 01:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783389513
