Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D8DB232395
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789291834; cv=none; b=FfX3IEmLrcrtx0IkZ3TC/PL6BFwdIwWFikM1QFXi/pFX5S9yYRiW712RMJ9nUROm5t9O8/a5k7FDFJlQjE+EYbQZCY5L2qfcQ9CEr78ysXwf3p8QCYlvmYykHenXImvy7ySjv4ofq+Q5tjzr/jP8TOVjz1RDsrycc1xfMHUW22Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789291834; c=relaxed/simple;
	bh=HtpPLmGsj9z5dk1LCo0GSZtlF8SDbC67hNUnQMhW48Q=;
	h=To:Subject:From:Message-Id:Date; b=TimDcIhcKhiE8LBdgfQZIg6Q8iNIfvEL3JQt4t4QGnjonedUZY0TI222fZTevmnDbblwq+xfAx6pw4awchHtSTAqtzCfru6ophVo9AdIX5USE881JJZG0GXuKEKRmVAxYtAKJAhKyIGxlf40E6r0lEZ2G8fDuuVFlOiqBQq2+ww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oHdjSTpq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oHdjSTpq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D48A1C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789291833;
	bh=HtpPLmGsj9z5dk1LCo0GSZtlF8SDbC67hNUnQMhW48Q=;
	h=To:Subject:From:Date:From;
	b=oHdjSTpqeyEdt6aa3R14kd8CU++4HppGqB2CSZi9GcQN0scKwr4QYU37FMd4RxeRR
	 ncchU9lNdM6ZO3gYZPdInlZBbbc416AzK4IbSXSG3RNBNgbXxWRE8ZfpuieTgc+Jvv
	 56ZJp3zEKshdh59fzXDmNf1qbkX2zA2ljpAY5/lWwpoLY9F40qYU2m3QOyDfwv7Uzq
	 gHUmIeHlTMir1lJUSwIC2zFrPOSI6Fj+q1FjDVWQaNk3ghDylQTvynBCF3oNZFKPya
	 lshIpVuTUoQkSgCCNW7pKCZzbyyupGtRH+HomTihXRg9Fe3LY4J9XFLs8w6yQGO2wR
	 iDcw9douHqlVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC63C88E40
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178929183368.17197.10005326835968460091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30143c8fd99444bed1edacc26eb08b0083e1baf18890a40aeb7fa04f9083c78e
Date: Sun, 13 Sep 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789291833
