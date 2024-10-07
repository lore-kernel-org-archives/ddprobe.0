Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3078F1DE4D8
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728336354; cv=none; b=CW3BT1pPtkTMhQxVbFmVATNL6Bqa7/WYoXE6PgOczQUgGf499YbBK4uQOB+1Yh4eJPi25SsgT/ZTpfK+PHgD/IHS4kNDeMjtfyiHbrMel6FQSE+Ti/NcFXmpxUSAzVDIh19IrVJ5cmz/JIxW61iIJ3ros6tI2sYWjiHNQHATrYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728336354; c=relaxed/simple;
	bh=CI6nxp9VDkmz4OXuCmQxD6SQgVaZHiDzuTqws51trOk=;
	h=To:Subject:From:Message-Id:Date; b=doGX9KegCbUugQpZbryaCcrpywZQB8XIwuLTq9okFMTqqxWerjldTy/7ookHAGOONHg0NQyn4O23JMt0/pKmmGVeeog6rCbWGL5SQZmmgpcwaYYMKWFzMUAzEUt6j7CotJMbtJ/AK8fT829CKT61cfiYqphZoE522SuLOPfIjo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C/jdwJlV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C/jdwJlV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3B70C4CED0
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728336353;
	bh=CI6nxp9VDkmz4OXuCmQxD6SQgVaZHiDzuTqws51trOk=;
	h=To:Subject:From:Date:From;
	b=C/jdwJlVGqSUCQz/j7mkciBBb+CSfu5BXsL+TNLphO6YRRgN1Of7R6nD0xWfyPNgq
	 RiX9z3VMM7FX4QJzdW5RoNP5tdwEouD9lEg7LSlJGPE7BWxTOS2lreqETcfYhXP0Q4
	 UbLs9vLwfz4a6Wuc6OcdOjuERGfEoGCpFAQljXBl9pQg9NlZl7hZV484Af3lC8NE7W
	 F2KC2hd5Jj4A4RxXQ0tLd2t1x5ezzal4I+7iJCmdE8C4s4hLU+zo0HOVnVpPmNh3fv
	 iHpkqJ35zNP4tK/a6E7yA+AeTYIIMbn/vw9G6HevenfduvolpmztatTD9KLgw9DjIp
	 paiVTan4PtEtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B54FCED240
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172833635362.26755.3055578716184840902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e903cc2b55542c5aa50ca40d78c5af52452ad1f5bfeb79ae4c44b2c738fdcdb5
Date: Mon, 07 Oct 2024 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728336353
