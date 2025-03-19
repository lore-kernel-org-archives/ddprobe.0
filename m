Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FFA91F4CBE
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742378994; cv=none; b=e5aljhNOOxGQzk46OIOTZ+w+wK7K5pXW4eGkQMyyxbPBp9sZlsyswx3TvPTKSKyBiiJegY9yh5zYrAwXyIo/BTdUa6bG4n29F6WXoGFYOAka0YWCm9AR0i9EOoQN/Glbpt8FjVe5CQV3iMwU0my2yyAcljc/XOY88mDDDTmSyWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742378994; c=relaxed/simple;
	bh=Pai4dizX+XoI+V5DI/g2j+cTQXuvMQ+mo5A4l9SFJts=;
	h=To:Subject:From:Message-Id:Date; b=GDRRaP05tfq0NJnKHIFD45SK6BXLAgSHluPiTHHlRpGkebTglIvtns36TIaaid71PFKhEtQXRxPKSTx3E+TtHdPXDauSztoWuwfPGDQOadpIzDSfq3ZQpl540l1EcJ/v2B41zZLZlP79SngsgrcCAVvC3Qoj3+8ELwmXtn+YM0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uZnHafNl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uZnHafNl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B452EC4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742378993;
	bh=Pai4dizX+XoI+V5DI/g2j+cTQXuvMQ+mo5A4l9SFJts=;
	h=To:Subject:From:Date:From;
	b=uZnHafNlFZum9YFBGqLC6iiz9NmmF3pWA1hXdczSucS3zrK5nv1xomphER+3RjuDS
	 dvCgu2kt4VhtLQTL59kKoLCfgKDMBQO5YdsyUoZXik56uUqx7epDFaKtcfQ7WaR60a
	 5NqobRHD9nEXA17zTmUtWTgjyLmC4peKJPuITcgPcFZ1Z/0AcyxCDAoHW4uJSmvxgL
	 ERXeCm18DHJu4xiRrReaHAc73e0uHJUIkVy1jLjVmQcEHGIxcFiXjMjDrRom66ByV5
	 6yesRHxeaRkndf/frua+Fa3CzDD1yLvaPMlqQ6KOv+rmSQI1514xXln7EygpLYkAZ9
	 asPBrKDdGuQNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CD22C35FFA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174237899363.24932.12215110799673093866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 085afe4799a5fe96747a80f21b8a686060bd8cb35e70cbf073cb74f4bc4bf23c
Date: Wed, 19 Mar 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742378993
