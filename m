Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5405D35AC16
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787352034; cv=none; b=kRyPn6OArk2k5zUkbdH5kBxPHxqpZxpAxgSZSpbl//aWHqrqrNekkvEyMN/I8sGZtYp6NSVstX/VKNDtGKHWAivt/MlToa7ZEDtiIfHDY30w40o2sFgQmzzsJFakRzZH6dHZi7KEjIhlakI9338Rpdnt8Bt6XTvZnCrODtYTTzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787352034; c=relaxed/simple;
	bh=+VFwuYlh97y/+PKtPGZSEFXKynLhX7zZWz1JmQFbn0g=;
	h=To:Subject:From:Message-Id:Date; b=ZsvbTgpIdmC6soXcRe0mvoL4G6bwpEjm/WNn7wrADtTaRlLh7SkQEiVrltkcPpC8OGoZ/G/bQHfPaCybJYDkqzmYokv6VNfdHMJFfv5bnfIpQ7D2DsIn/2yqc0oP1AfbAXltj5ROAmxfs841yAw+olVEXKa42gloiH54NmAFQ2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fRVlIvV3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fRVlIvV3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6E61C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787352033;
	bh=+VFwuYlh97y/+PKtPGZSEFXKynLhX7zZWz1JmQFbn0g=;
	h=To:Subject:From:Date:From;
	b=fRVlIvV3uG5AsgeMn9ZGopjxG2TJcvThowkKFHTldniwjjDDG9h93Ls0hhfvUP9Ai
	 yVkupRTOamaJmXRpEGANaOin4w61VdNZ2pTMrx+fQTYghI4dzFPjGFJBZXwXPZB2Ui
	 Le3GUf7FF3tlT7n3rXD5vlf+DHzQX5S2lP+DFuqJWwZWIIstPlvS1dHAALphVf9Xvi
	 KgLA2rcG21W45Pk2+wFixnNXQntpFEy2McYTKrb4jbHpkUm9/MYDEVSO1/IDkAMZo9
	 SnhGpLSjdAUV4kxq7xD/twQr1fP+ajloMY62PaOlswjhBSgh5VNTrzSTt9hvPC2sGK
	 ASLUKF/IKzgiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF2CAC5DF97
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178735203369.1268.9472529652441922767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0c7fb4e658d865bd0e9c5720a5f79a5b03c85ecbc34105eaad05aeafbe9e2e8
Date: Fri, 21 Aug 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787352033
