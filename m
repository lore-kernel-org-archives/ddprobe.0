Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14E421E1DF0
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757521194; cv=none; b=g7NmlAHQKtSEsJHct9LG0qt3A7jGtBI7WLy+6tODL7EI46ZTd4P8ouThPd7zRio2QHgtArIGdcPa6aPqsMofP3XEFNKfLPYEV+O80L8B52Fz9hUpZVXg85mpttx/QzI6HrmGoMSugB84ZYUQmmpp4KoN1KcBCfUV9pqJRBGqp8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757521194; c=relaxed/simple;
	bh=a7D5bskEUQ1NLKeH8uiYa3Enm4x27iXi9Be5l2uRBFY=;
	h=To:Subject:From:Message-Id:Date; b=Qr0rDxEBnE1ncWFsq+z0OwbrD62Prr/zaBHaX/DAtTN1S+W4IphGlo/LAvhlygznmjg2zhlg8v85q2eahzTZJvr6Mos4OK6sScN7Pwzh3IJj1dcvU0LKFjoXrfyrdZMI8VGPSegJdy4B2bEk++Crz/Sk+3k5J4thnRiJqCHbFDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KCepE7dW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KCepE7dW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBA1C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757521193;
	bh=a7D5bskEUQ1NLKeH8uiYa3Enm4x27iXi9Be5l2uRBFY=;
	h=To:Subject:From:Date:From;
	b=KCepE7dWsZvuqoMv6cNNiHSQgx4C670vdBOdSSFXBGy0maCYmn/3YX94rorMWwOHm
	 lxOXYW3MZSbPPn08z2R8dPpa8fgcAhq5uo+A5RMU2c2oyAf068MaHKK0mzc/ZELNPs
	 LNpJa1kQq87xjvEDORefsTOeeZKQVAP2JVFm7MlVuzxnF3XV0mKgnzkwmGZqnaMuGr
	 jq82Srtg+OWkzx8uXLAqraURz3HBbjCIA2CdBI14wcNC0hdyiQkunKRUfYKqyAgRYs
	 vd34TuTb0Gl8tFQOfNafHIEq1JRXQr8eMoOjkAgyrpFcpC90VaU9yQAqTTB8kWDtYd
	 +KUSGxbYq2jLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90367CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175752119358.19172.14714496595674950384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7c383583dbbb0a503450953ba2a2e220b833b72d5a130b9cc265d9a279075e1
Date: Wed, 10 Sep 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757521193
