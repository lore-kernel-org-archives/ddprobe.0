Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3339010F1
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758598196; cv=none; b=hZJBvWXy5wcr2Ecu2jIgs7OesACIBGLukPO9/Z+rKkBzrw20hHqZXkcFC8vw1kqp1DlBwEVlEcetYOluzjeGgxhVTzhXpQ9yUobtrLbQ6f7N7vGGsibfO5gudgwdHs65l7eP3d54GbaSBgpYoOMCUV5z8b9q7GyPTVk0zX/IvTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758598196; c=relaxed/simple;
	bh=TEpNgFK7kVcf6IbE06hdKcFGuUD2UbK+UN/NIgB7CwM=;
	h=To:Subject:From:Message-Id:Date; b=JkJ3ZtD1VQ9qisI6tb7qGmJUW5YBF2KJNzofGV8WG/wCkTieiWojghLyQ2uZRBcxCS1/WqkTyiH+xEuGwtvBo9A83Q0FHYivQ/KNskQWtE5xM7xDikmuiP9oiDC6OrBpe5pYn3JJicI0XrH1rtICXD+kF2C84bTdzRw6/3o1aYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Di3e+LgJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Di3e+LgJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E4CDC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758598193;
	bh=TEpNgFK7kVcf6IbE06hdKcFGuUD2UbK+UN/NIgB7CwM=;
	h=To:Subject:From:Date:From;
	b=Di3e+LgJ0KLcgIyvK3j6fKc+pKImQUg+9G16hyZZHuRoSNS+XwMSBF5oLPpXbzj0t
	 qgd+brOD49vg1JwlvlpBofAkp4YsgFzzLru+dMvYcfPzoQr1NSsAV5H+Z3ceopBtmJ
	 KFAO2+oa7XyHOcmsOvMqSxeScDsr7YEd6LPtHWYXCWstQrTVg6WOzXjderoW5/LnB9
	 wDasnJhdEWFx2yV7vWedJgJ0iV8X+R6T7zUC5ReElsZ5Rd9Qr/gPhb3x12nluwzv/2
	 B+4TldJiheg1UYIrC0lQX1Kf2Fo4YnG3a4nAO2CNwx83+2oCN5l0/A0i8de3rdQAsi
	 fmzfEKhz5nZJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3F6CAC5A7
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175859819357.15756.15939222275036411140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16fe0887fc62eb9ebbe803839ddc7dcb69a596020a2e4d8be6a4679d7dc0364b
Date: Tue, 23 Sep 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758598193
