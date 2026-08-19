Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E53D2428463
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787136635; cv=none; b=L6eFpwzmaj7FMMOVo2eLS1z2VOFygWGmxHf2zd9p9kdGIqOJpLofwVe3gKQHHsHql741vRG+Lc04MkdhTONs2bD13jakxPf3jzu3gX3V5j62AGswtAiNYknn4BPbjqTKT7MBOkWANsoRIF6QXnqV2Ordy1bMUTny63AI2FnkbHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787136635; c=relaxed/simple;
	bh=D2c2+20JzGEPec8Q/f7tu/o4jCuwN5ut5HV9BTlLM8U=;
	h=To:Subject:From:Message-Id:Date; b=ZUhqEjcoQP/kb3iMH9ahKEvl6EYlznrOeBiFB3F80kOIrEI8vuN27Vhz6GDV5VglqBeZajHFDkccDjCf6wDCxn114C2jdhyB4Z1fsw50YikPwIWc5cZViQMdNGQOxkqvLkddJ7JD7NCXy7mgE28JVGAjDeJUkMJmfMz9kWvwoHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FMBMawvy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FMBMawvy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 20775C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 10:50:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787136634;
	bh=D2c2+20JzGEPec8Q/f7tu/o4jCuwN5ut5HV9BTlLM8U=;
	h=To:Subject:From:Date:From;
	b=FMBMawvyOqL8COBnM07ZcKK690wgSyisq4eZIZO8BQCPWwHbatJDC978rPFzlehMI
	 QeEKsN1D9GebHOdHBcz8gDFh3pROMX4d+aQ0eDMsG12emPnz59C+4F4FCMfarQZEeL
	 jlRKvqOERBtQLNuIXoub6aIZev00t8IZ1cAVOSbmCuCerGBxlsCbyKUmly/gJdnjMv
	 8UoYXNTtNIkU5PASMJq5Z+L+ecy8KYyvYxjH2q80mkh893TIi75ajkFpJIs5MgVZg4
	 VqNap4EXJcQyzWhZp6GddEAHUtNrIr+q0yooWEV1LRd0KGKNa/eieDd73ANhQM5Tpm
	 YytTJ8Afjxueg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D57A6C5DF87
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178713663385.22678.5435542971856449243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2059ffa338373fd89820afbec414165190e92fe34b148e93e8d445df611a2d66
Date: Wed, 19 Aug 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787136633
