Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 309944A33F5
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 18:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791310834; cv=none; b=LjhEzYP8WHzq6awgeWkE3SRyLOvPlSGQwcfhRX5U3r2mf5O4jEjdA1iY/L4Hu6yAc0s7uJjR+Ce6a7X1G0QdDI+zFo81+Rrx7BAFoJ6oXME7z/uRAexa0zgT7ti/WD7gIQWD/llsPCJuHgBMS+cP6MszsD6wfeQYSQhoyxq8gV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791310834; c=relaxed/simple;
	bh=749d2fuPoirhSbghO7xaZgTKroibDuJuNIM5S6tghnU=;
	h=To:Subject:From:Message-Id:Date; b=pyqA0gc7+PYcU2RvNT35bGiwd4QTh94YiWsP41ZOUGaSdF3Fx8haYhVBS0LDoOqyVBs7EdES31p+UlloMGXhyN5laOqdn9is5d1j6LNKDZG7InuF+QiM9EPrDaHtcfU+YYSItAtWVXDBSVpZhNmVuDyHVkraP3pH+C0Q5GQnh/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PIQp5S7B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PIQp5S7B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA944C4AF60
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791310833;
	bh=749d2fuPoirhSbghO7xaZgTKroibDuJuNIM5S6tghnU=;
	h=To:Subject:From:Date:From;
	b=PIQp5S7BeKfYTZM6OIwhSUy1ID7JGaB6V9dfRC0rwBm79rf8rdhFif2hac4FEHfAt
	 Ur7u5pvWqWZaHK7ftU5DwOwNkBEhhVI/IKF5pthHOMikPaZztvOwdmhu244Zkr89bi
	 n0qZbOiZffYb7sN10Q3vrnjvWOLZDyl0mkTYTI/KFdfUyXZ9r/g+ITB6Lwozt5V1ga
	 aeJxr8D5W5hwvd93gUXxFlzWeLpmlzHeP6ZMVf+OdSgbh2JptFE1z8PD4BRKUSRcHr
	 J8fLbQX7DpiIFRL2EN3MqUBesVGH/vP7wh0C9S/sqi5dO7/O6ZEBK7GZitVqML/Uzi
	 HxOvdetmGQ0KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA526CA5FED
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179131083368.10273.7065347086189054564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cb89c61e16e21ada7cb916bc186518650dbda14d09b85ce174821786faa9903
Date: Tue, 06 Oct 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791310833
