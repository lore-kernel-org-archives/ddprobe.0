Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2497A283C93
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757408995; cv=none; b=kOqOA0+yLqz9wdFG50l/qgafXXOpzxoJDYI1q6B3+FFAjAmtD1tGsyfWwOQf1UauWPNslPObSi5cQbSy0AMB6rKE7Xd+f7QoXC8E1iWphnjQRdvTKJvii5IAnDckdWF7LnCUhFa9TDeCkmn3lBLj80shB/Gge5cIedrEBX9LNMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757408995; c=relaxed/simple;
	bh=m9oD8WJ/QX5zcfNmnleJnSabfuvIjkU3GrWrNWt62Q8=;
	h=To:Subject:From:Message-Id:Date; b=htQcC0URHc5XQriUJ9pgOhQ+y0+Qsg1tHDcxp/bjviQNaHuhcMRbLNFL+LNt2U8ngYk5j+adZYRo8LV8IPV+q7FglanqYdiOeYxfPfxrg3gDZOoCRLJa7K7z5a84lnS4+FCb3N7h3o9DarTGEMmhif10JTZHUJ2ERKNOyYR41d8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HjBuffgr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HjBuffgr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70FEC4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757408993;
	bh=m9oD8WJ/QX5zcfNmnleJnSabfuvIjkU3GrWrNWt62Q8=;
	h=To:Subject:From:Date:From;
	b=HjBuffgrSe4PigLpZ+97vTO4RBz11owZaz+jbMMohc8pVBEvN0HawLB52FFhYB1lc
	 TrK3gWlG0C5HgxNKp0rsZjaq+yb6/Cn0MKuEwtnY0C8SjuYqCYb8c2NDmnl8c615Xh
	 BzYFmBk49qqbN6Or3slfWIH73w+8nUoLrYe2l/8hHw5p9gwKPT1UQ55/M+ylZYpIpW
	 J9ZRCRb42DFJQDlJaZ/wymsbX5TDh83JtMPZwnA5ohmwcCmTzCgYdwn5L6xVskoOgN
	 UqOkFptH6Syt6R4gE+Zc6nyyj+gpF5WqcsL5DSzaeEdRV36sX1s/qBWz3nRmdpzFi1
	 IrYelz9MDIOwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928CDCAC587
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175740899358.25413.11832225488545629826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4912201a0b4a934f09361c526cf035f41f5932736b4dae2f4e620d83bab0e37f
Date: Tue, 09 Sep 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757408993
