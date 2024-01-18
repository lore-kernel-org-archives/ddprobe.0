Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02BF653BE
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 03:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705548497; cv=none; b=QRMIrOnSMq5qIIY98RwqBfxsmqwrgFbyoQNSTbzTEmHUm8Mtl/UBYQNc/bjjSItUC83Sds9G+UKF/LWGg/EIo+6mz0lUjl0tw6DDfriIBk1bQ7bUaM4ifx+vbZyM4SC7mD5JimZWQauDsAINOwL99XA9yxQXUt+9QrS+AY3WENg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705548497; c=relaxed/simple;
	bh=Rt4ttY2jbs9Bt9/jK78Ywfgt0TORP/of6BvHG0TYrYc=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=SrlA3P6tTB/ltI7GU+Dsx4STdG0BpQmSCzI0ukU10JWuk66jUP3oTzErUnYK2O1/zCo0YmSfS/NF6JWtBquXP1zDWIqbj6771633eOGGXn1xHFAUZtqG1fjp7+SJ7xoztczZdhFvhcbfK4HgCDimELXY5gIfjBST2eau58eNEuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=atnCcK2b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="atnCcK2b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78D94C433C7
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 03:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705548496;
	bh=Rt4ttY2jbs9Bt9/jK78Ywfgt0TORP/of6BvHG0TYrYc=;
	h=To:Subject:From:Date:From;
	b=atnCcK2bZ7ElxAv0/4xbaw8oGZoEdp714aSL0CT0De9lEmrCOZtcgC10UzXbgljAX
	 s1fthHeBMr3Of+8pg/IXy/FQtztLeuHYo3XiH89an9ZbWUZ/vYH95rpGvJp7yTpvRg
	 Cxs1FVzRxOV9xiULieuxS+zut4of/m3ie9xjLlEqCD7C0lnREbiTqFjcj3rVGtoG8i
	 KOo4nc9mCDYUH4hofRLx3pGHrpHeIBna2sjBS/+OYAJGhR4Nil3Q+nsEV5mAPdXyrS
	 sOmYYiic55JI/OB3YYDjZ5kjEFCbQ4bRdj09eRHvlKSjC27861QGemCemFYBQh80Hj
	 HDDaHP9Bv4xiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BDE2C47258
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 03:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170554849636.1240.7448229511113968855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9d557c41631c66cca7f2a3dc15faf8c6e132b3ed3f41866268dcf096ec72067
Date: Thu, 18 Jan 2024 03:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705548496
