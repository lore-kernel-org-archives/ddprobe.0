Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EE97322B8A
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 14:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766672634; cv=none; b=VZClfM5NHPZtfqcBxpxDzXAg8/LnqMPkYLNN5uV7PS2O4/5C5rpIrb3NXxh9kzrasmm7SU4PR8wOAMXgNURT6XuQ91Ok0ulGNnpIcZUgQcTMwkZLy8FPNFTRyUmcuW2qHZDnkEjWpQ+fK1muu4p4n6tmDbPB5kjDcrATFk00cq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766672634; c=relaxed/simple;
	bh=MX+153H8mF5OURjiI0iY2X8C0oMk7KunkIMVSW7qGD0=;
	h=To:Subject:From:Message-Id:Date; b=AwYABWYDT2rzNBoI4gOKtU7DyXijy7tMMkwYWUdD94977WHiUycJui6j9gfCQSh7JhxGebSUaaLU/5xdDrLGsW7ZslGDn5I//CrR2o7NYgaZGNw01uuVVsfe9M6cGIqwRCp2v6Si279qoH2r3C1tEWjpdKbuKp2Qxrf7At3HVYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pFUFRcdn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pFUFRcdn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB0EC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 14:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766672633;
	bh=MX+153H8mF5OURjiI0iY2X8C0oMk7KunkIMVSW7qGD0=;
	h=To:Subject:From:Date:From;
	b=pFUFRcdnPIjYY85l0C57U9uukcrIjUS2/xa1Gmei1W8szuIqD3gemoxmglBauGKxy
	 QjUi6FCmyRmbfk+sSol0NG1QGUS+zxqVfNAX0DD4APq94BivFzy+gTmBKsjMO5kXJ+
	 shCKos6ehVc6uCO9/fo5L4SjGskZWd/wgI+EU7vW0o3ierE5lPyApvusN0l90URmpa
	 NszVbatnreh39bUqbIgieo1zbHjB3BEpECKNR036/1X44LiMqLVxoUZ6iNhL2yjKgs
	 UBu2hZ9GetCd06Yeqb0in3oJ1+q9Q9IPWd2Kx3KcCCakx90BeDaTBE4/cOYeK0Dv7J
	 EzhUoovhTO5qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97DEFE7AD5E
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 14:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176667263359.2956.11417656904770286848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53f41fda2b1a1807e85b975bc4fab4282f55c557ee073420674ed823a0286012
Date: Thu, 25 Dec 2025 14:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766672633
