Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2407E1AE867
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723641954; cv=none; b=XDwDaURjBXajb/KyJfYXqWCZn9navikRUFiHe2S7uhxaKVc3hjQ8je/BHwklabY/ieB44Z293MXD58s+c2TnpMUkfucWDRpOnTH7izevt3pjfrag+xpmBpndMVEqa8l5+/wy2828gMOKczoyo0A0Z9Y7U9yO6rgeMEJqeiHjmc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723641954; c=relaxed/simple;
	bh=VLUtqs49X7KBuHcu11VM7JeE+04Y4gGrRqo2xEFRwY4=;
	h=To:Subject:From:Message-Id:Date; b=ghAxJKmlSr6+CMJC6f6igyIu7Ese2RgdBIwUdxMF81QeHzMiA9X6AS4XqgYSuXktn28lbBOrWOG0O0WkJlp0pP261KpNsq0aKDvo//ZNl8JNA6tZ//ieeQwPssV6Rw+fHN/uWrc/vKSzmg3+d+YFPsWXvldKkHVQLSgy3EmzdDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fx43Qtku; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fx43Qtku"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB033C32786
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723641953;
	bh=VLUtqs49X7KBuHcu11VM7JeE+04Y4gGrRqo2xEFRwY4=;
	h=To:Subject:From:Date:From;
	b=Fx43QtkuiYEKXUUGg13SYxOt99+r1wj2grYIdfNMfjk2/3Pk0eL2SeViHEmwHSJJy
	 uzXVlVdcMYa/mTwZV5QspfVvg+O0nrX/mcDdgzyMm75kJgA7bufWKJiGcX9KufFfC4
	 kiXPNe6HDCfTDM3kiYKHuT6tYHDcRkI63OKgTTmsmqxXbECVLt4cQhuxsTn3DyiHAT
	 75zOh5wY0xdo5yWOtGNoRdEUoj1tnv+aVS7p3NjOVzL/kaSYmlUmKnHylUuaRxP/LA
	 eG+nS0ovYela3ChFZgFhV3aztOki12XUoakH/k4SYTjBL8L/y4a2LxOl7kPyFechMn
	 oRtOk0kPMewPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9799AC3DA4A
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172364195359.7617.6954088251286402909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6526e65bdba3bae7210915d41558e812dd8a6f3ae1db58cd58604bfea9f76405
Date: Wed, 14 Aug 2024 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723641953
