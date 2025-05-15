Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ACD6296D09
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747301396; cv=none; b=NjWkNOKV7OV9WW6//5dQEP4kNembuxGduAnGLVxRXEiqX6QBRRAimyCHgY7cZDBEgqaM+ZisTM1ThiZjcgpgTn5j+X+gEn8Rw4RXa5BvLGDuSSCd9vgJ8RIr4j25lBMnKUKZYeHvJP5sUeWcYHaTItjBKpMPw+ZKWra9+n7Ufrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747301396; c=relaxed/simple;
	bh=ycO6CHSD51Pli5Lpd/tJAtrV3kRzki2a5IXRIVzCDMc=;
	h=To:Subject:From:Message-Id:Date; b=COdGsANEc5Q+75NSAU81K2SP2nyWunCBMU3Jz7teJpDpiIFaWU6y8A06oEqnZiVpuY9K4SUvr9xqlRxqcovBhX48uWMmygk/GFcDE+dcjd+gU6wCIzua2wlsEP06bohAAYHRuCyCSJjwpf7cmrI+3QuQAUKlxfl4WZ779hUKJqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gD6KWpRN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gD6KWpRN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9953C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747301393;
	bh=ycO6CHSD51Pli5Lpd/tJAtrV3kRzki2a5IXRIVzCDMc=;
	h=To:Subject:From:Date:From;
	b=gD6KWpRNSlCBS5AP03GAoQVG4yzcknvAFQmOaNyfAKabb7UbMM+azxLpout28puiO
	 /M+EkN3BCh0UBLPXN5PZqHtMXHXbYNaDWzp16KgApm0hnhlHqj10jZmjPrVYfJx1TX
	 W/SsRO9NEHrLrDoQShVJ2ygl3cFRpG0BleE7tTN6X2GDgB/Q1Ca/Daaur0e/VB+yFS
	 E0wt4clbQS6Bl63xKHsllBjH0a+VWCzWXA0kgBjAwfU+u6JM0+YeT1R6sRoVzP8+aS
	 tVYsYuK+wkA1OE+qmTpzzY+0vlMFfJL//yd8euPbgFNxHNZd9BjzxG/JVmbvmBYjQC
	 w77xQQGhl8WPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D1EC2D0CD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174730139360.27915.15685805952181270477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b770d33dcfe39650e0fc94a7f0fe4279a1db07d4e662ae41e9f32c237ca3bd93
Date: Thu, 15 May 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747301393
