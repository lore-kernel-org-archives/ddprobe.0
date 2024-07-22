Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B623C13C
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721670954; cv=none; b=Gzr/CoYNa2hoXM2Q/cK4fNDL5MrfKJ1hqpSTtHZFToDtyaxmfvacDyTwau5y5GliNaEk7e5pyuLnXcpi/B5Bref/ooUPrfmbMPZUzZXNUcLEjonzkRGv4ho4fKa/XPjHwve9hktUei34CWMTGwtVyfMh/dMUwgHnM/7XIon7UMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721670954; c=relaxed/simple;
	bh=AD8mhp1WoZeDN2+xSqELAtz1TWUBnXEOy053kH1g8oU=;
	h=To:Subject:From:Message-Id:Date; b=DrbUNXUn/0YlCZgiKQPTSLvfnzjYRqmX0E/oX8S4YcrVpQ28RFE+x4lrFcoMlo9nHNvyPzcAehtN1/R4sjzRvekq2SqAhS1w6Gs/VC2sUTbNpZyL47WpYKEmUaZaouZZS1Lou3mekVE/ccc0PCabjTNI3Q5YUrmsc10ULYEjIOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FzOb+BWj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FzOb+BWj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B21B6C32782
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721670953;
	bh=AD8mhp1WoZeDN2+xSqELAtz1TWUBnXEOy053kH1g8oU=;
	h=To:Subject:From:Date:From;
	b=FzOb+BWjM6nOLAALi8zVjiUQme7rsEJJ7mMmUE7ORnz08xoD4ANzOh/hMmU3HIltm
	 7Qnw6Jih8i3SSj+TyVu9ZpmW02nH/TOpdhBO1pcUbyjcPQ0vTsMW2iS7l7VUoQzkoo
	 NmCKFXXyzIeQOQQOZLm1fbPBI6MmoSXi8mIUjgso6RSW34FZex737tvvFqgRmb91uF
	 M19DmLtyS29VLcs9RTbcf0Z2QIlnOpzHUcu4oY3aUe7cL58K0zlfItqXF1+v4i5gpj
	 eMyoTJpkRyvvWraX4gvhhw9Txmix653TBfRytMWLSFqcynVy8GV5V8FR9l9O3rLuHr
	 g57iDEBUIwGeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B33BC3DA59
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172167095362.31460.8345281637263415876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c1488146b8bf7c21583cff1ab70ca5c14142d86f845d92afe409745fca384eb
Date: Mon, 22 Jul 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721670953
