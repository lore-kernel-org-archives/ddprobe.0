Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 808D936AF8
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 23:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719013943; cv=none; b=T/yLXSS+8NGZrVxNiNsq8F+JoIoX7BwmTl+TYzWZTMd4NkZZA5ZxEQNUBpj+lrn4biMqPMzVL14lkJt/8n0e5+dJII0jEuc4jcS/3bep9veqPNyCIKpRuFFIr/16A9FedaADMZjJpr3kcZxGhb9Edeb+HKRRW7yHuttnFysvgm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719013943; c=relaxed/simple;
	bh=Ui1oAAqCI2UwC2u/mWo+vQAqVq6fkCYF9lBTV9h/sNY=;
	h=To:Subject:From:Message-Id:Date; b=AW+T2XevaEocwEt9pBrSaDke0HMiGrzo1oe9sqWviWhvRogOq7+jJvEh3ye2hYvMHvlQI7prha70BSFT4ZsRpdbK75xoqVRSSx+7PS67AHgBUmvRIxWCasoHquHz/lx0RswSpQmLUnVHh9gfEUzCUaV0ZvX+MwWTaq2u+hqXuSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gdfq2Reg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gdfq2Reg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0899BC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 23:52:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719013943;
	bh=Ui1oAAqCI2UwC2u/mWo+vQAqVq6fkCYF9lBTV9h/sNY=;
	h=To:Subject:From:Date:From;
	b=gdfq2RegGc44NOeHwT8u/lxQehoZrAwS2wPnN5ZPacvqIfB9M2p5wNEkHsc8Dj6iu
	 FCYEZ1eovfM4oQmRhGHlsS27hcrWOPrAF+apr+uje8Eb42bpfoZgVtRhiagAkAf1V2
	 HmLkYB36Nt0XgJbYy59eWGZXyZ1nqNMIXU5hvEAxTIyGo1kexgor4GZ8Xb8bJlw54m
	 XfTqFGycUZ1RuslxTgBmbNcx7dsYXdFkP9p4tyVMjw3ccSgb6a/93i3BTqWWZeieko
	 r2lnLfP634rwViHUxgh4j6TEFvZwaI764UI4Qe6j1bLjLEx+LqO5ZhyECZkhXmQ7aM
	 z8zalHR/XdJug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DCF22C27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 23:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171901394287.20075.13527958476881083814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf29557d17cf0d968a4b0a49c11627e59acf36aad4b075e513017c9dd7280c0d
Date: Fri, 21 Jun 2024 23:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719013942
