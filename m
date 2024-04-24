Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BB1715E9B
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 02:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713925223; cv=none; b=CKXM7YN9ImKO8Qn6+wJv7e7cJDTtc/c9dz8LdRI2sYlbraUBP2Nc/QH5WcpoNrrN28HJWxxOxLq48gnijHmdadehGyS5qCsvjpfahxfP8czCuxplkzMBteUmrh46uhzx7ZZuCOYFw3VKzKVlVpW8+K/UvWz1NBmBL+JjvzSupsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713925223; c=relaxed/simple;
	bh=Af7J7Bm4hpGRvCJadgTA/Q0jqXeZTbsAXMzYxod61CA=;
	h=To:Subject:From:Message-Id:Date; b=EoVEHHYNTFZALN1uVgcZUmAuQ4xDi7EpPDLGdYJYx5yZiSu9hXtHZoh8+GosAz+41KWQHZ7EF5S0iGp9g2e6uH/1G0p0WNTXdDMOAiiWi7bUPW0QgQvt27QX4vaeGo5TImy77b3r5SwD+F670ezifR3+lzvw+IUnLhexkn/Qwv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V4sI6hB4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V4sI6hB4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04020C116B1
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 02:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713925223;
	bh=Af7J7Bm4hpGRvCJadgTA/Q0jqXeZTbsAXMzYxod61CA=;
	h=To:Subject:From:Date:From;
	b=V4sI6hB4RZTiIUS1gQ1/hrl5KSEXVkkTr60cuKez++w9d08j8OC5Fm0SbY6q/MpX1
	 XanBwixnWp7aXlXW91RAkY7o89WGdAmdHVQHgsF3C16NONJ3X6589yygtkQWpTKCIX
	 5GEi6JP1uOKgSEMjQe08slJRskVpNXvuCDSwms6NpeEhSG83V/B2/wX0z7V1BZAPSE
	 Q23NE+QqWMyHwefRqTm011agMhrwKp6jwLJumagVFufFRYJBK9xRGHXHnk2/FeXiqX
	 fTvXFVs0MAe5QP4JELXYCZtYC2iJSef2w9WMOiMrLqX+9vl+zZmOxocDtO8Uk1i+aC
	 3js1/rSsNp5+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFCEEC4345F
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 02:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171392522283.5273.15033672490167358194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0787f6e3ed62fc771c6e15e7a34d17d4362134cc250b22695e203a056e3d62ec
Date: Wed, 24 Apr 2024 02:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713925222
