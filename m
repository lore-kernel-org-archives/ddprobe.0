Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70A231E492
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 20:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717963643; cv=none; b=kytTss/TdzIrdZYmC0P4CfxlmCQBOXGxjNxrp11UESl/0VPS8x8CUocjOqqBy3TeY+guupkHgdt/zseM6NhxJJohqJPNDR5OOpZBZzz4/wb8ceIVz9tEkdNxpiKwqlk0URBmnU33ZL8McOJzA23Dq057SkFGEKdPd55QN7KhuJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717963643; c=relaxed/simple;
	bh=TZISARwmMwiItlyQx/rZT8772PJPnmw2TO+OK8Np5i8=;
	h=To:Subject:From:Message-Id:Date; b=WpiNYCiunhGzNAgC0m3sWysmIuj8r/Fw/AN3D0+qdbC6/Z/Nr+GFT8qkD7c0cAggLoM6DklvbnrHiGHFL7R49yzsm09/3CBeqU1yBtMNWkSseDay7xCifqbJaQAF2vi6CRMoWhyHm0w3JBwh60EkNakvNKkRS0I2hgnxilYNZs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RxnFP3By; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RxnFP3By"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E390EC2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 20:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717963642;
	bh=TZISARwmMwiItlyQx/rZT8772PJPnmw2TO+OK8Np5i8=;
	h=To:Subject:From:Date:From;
	b=RxnFP3Byvdy0J8Fz8MI6/qLx1DIpUJueKClbi8H//sbd37Ad91lTqDPZHKa943bkz
	 eackP2YsQGVW4bUlNovC/2cioNBm2GFafo5ns7c5LNhzjLNREWelMKK1ZYryh6rEJ6
	 v3iPVKJi7+cscm/0y5GIgMYHpAK6vT6eNkzkrvRS7/MYtt79oIRs49kkfKmEDTwkJ7
	 3xJeZ1f3Dgnfx9Sv58QmploUmC/VzmXEaufyaKgxlpF+xZa4gWmVY4xVs03egYODLS
	 BmPaIN3uYrT7cYtL2ZU5juEFL6TgV7ZTcc2eCU2W09n+kYRJUQiqqU2Q/aUJNUQgeN
	 W9/Dh7jBBpLwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB9D1C27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 20:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171796364277.4443.6876785421631330637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68605ae5c6a6e3064a7ac127951afbe05e35ff96e302f0e9141d7f4ec82399ed
Date: Sun, 09 Jun 2024 20:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717963642
