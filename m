Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E9301E376C
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 12:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780749274; cv=none; b=WRFlavnm94sxZPuJErZTt4mLsipCZnUEnAsDS0iIelbI0/n9bHQlH9QsPamGinYlkXHezSXVnpU61llU3HgslH7ABr08ZEjuajw7Dnf6BmDFc4S9y4qXwq68JLcQTn+94jELJLXLIOSq10OgIwFIKNuKK1OMeDE0v+sThxU0P9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780749274; c=relaxed/simple;
	bh=W1XucMK6JLHPxLcTbyOLH5nB2tWX00qzcVbcXVz9Mpw=;
	h=To:Subject:From:Message-Id:Date; b=QcmjAXd7lzU21qGnyL/kudfPASJ0/+Fzzou87+qeEePGRBM1InAnjuoF7ETio4JNu8bryMwZSvQ1wooMU1IxOTrkBopFuCiG2BHmKPT0LHj2pm+zUypoPd7XCG7LrmNqsRTcXscJjpszg2Gg83D/HhowhJKsHacxAVrypnX1WWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FfS8cvd6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FfS8cvd6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C702CC2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 12:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780749273;
	bh=W1XucMK6JLHPxLcTbyOLH5nB2tWX00qzcVbcXVz9Mpw=;
	h=To:Subject:From:Date:From;
	b=FfS8cvd6v6PS4SO5+ua/gqsigjzWAq1ITd6TdMYPFSg+aQUYhjCtM2a79wwDRCpZ+
	 E5c7q0fj1JzaRwth8YfQinAFu9m4uqPVQ0ddqXpFeBAzq1LqS3zDI2ry0/xl+A7frm
	 7FCED4CrkLZP4YWO52wtD0OCWlDB12TzvHerP+JP+PVU4gXJBSBNEw45wv103GCTsS
	 BzAzMwHqL+TQCKeHUDFxpU671doXaELUigDrkuW1R08hZc88dyX+mdztlnKCrihELV
	 UvNg+vCVVUAXnvuGFvurxqG1mvcfh9nzFphAuwyzAZZEyerwkdG5ByRUWEoGujcrMi
	 O0Vaq6fyQJ5Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6D2CD8C8C
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 12:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178074927368.15405.2737593785353063989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5e1f6b61bfd4125bacaf62118a77c69b70aae9e494fc8daa80d94629ae2bc12
Date: Sat, 06 Jun 2026 12:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780749273
