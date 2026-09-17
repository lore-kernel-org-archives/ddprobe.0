Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 442A63BBFAD
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789622434; cv=none; b=IJpmbFEg+9jpFjE/vmwFvIqPX9wxi8VyC2UZviU3PliMQ4a7kB6ddH71cRbrlREcuJBRj3SlnwfEzR0q3JORX0Au6FPK2lusmv2MMN0HL/ZBYgbJwu3oOetfgc0Jss1dCYQCMRkFjVyAQKBgTmjrerJKXEmDFk7v9eoIk0YjWNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789622434; c=relaxed/simple;
	bh=flZFfDKsHmlHq8NEOiX7FSCwZy1ByGKfWsWaEH5DOFQ=;
	h=To:Subject:From:Message-Id:Date; b=qOj0/S8EUE+XofRRyvfZDIJh0yJieLD3XiGDhwVS2XSzM+6SU3oClPNV3zHGLKkNHcJZa6F3y5nyuMIUOzTorowmmg/kVDOdYtoO7HeajgKPrGAjgOyHw3tvCRuHZXUekk4X/DMY0+0WkUvf0rW+lR+XruBsf67z5MzyNxDEbPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BJPToElB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BJPToElB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7C09C2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789622433;
	bh=flZFfDKsHmlHq8NEOiX7FSCwZy1ByGKfWsWaEH5DOFQ=;
	h=To:Subject:From:Date:From;
	b=BJPToElBd4DxefSR2v1u6uNgnUhHCh76RbhxOMRK85rFmHNyTeXLPUZd96UckpN9f
	 OY5xxIz4qiXlzcqbWCQYpaUI/Dsz+WGU3z2BzMXN9NTDP/BqKf8//zLpNIU4jBwX0t
	 FxLUJ4ccU4UavdjQPGAcd0/FO2BEdzb8ODKqK4hyUOapKfv5enIn+68s9eaiXBwk3I
	 sqnqX2V6jxYi3ineFhmD9QLoD80YEirt6o3oxv4o+q1mEgWZX9vUmJ+h1spuh0h+11
	 oFUhlzHEdRAunCBdv331nuu5q6dv5pBMzk2tHfmM4R/g+liCYVdLFIYpM7B36ioFZz
	 zPEcqY9jFsifA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB5E5C982D0
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178962243369.19886.12101335715469377621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9e040cd4b9804dad10e51acf4072ea906fb8b2015507710c6fb85670fd02b2b
Date: Thu, 17 Sep 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789622433
