Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4164D1422D1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 23:05:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721171123; cv=none; b=VUg2PoJ9NTjR4hs0VgYBq+oISU5qJh87KuJooPMBsxcy5AzZh8XvHF1zATQ6zLrqNUxFTABOxGy1I6rp9q/kknGDoY4/H0CQ+IOhhMd/CetiWkpWFA7cPSKtUVGlVtC64c8+eq+7kdRZDg48fkVwViIVyMwG8a73kEp9ddzoQzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721171123; c=relaxed/simple;
	bh=ZrE+XTmqNactJScORNr6qRnNZkdZ2LBQmS7yuQ2Lu7k=;
	h=To:Subject:From:Message-Id:Date; b=BwdB9GSB8/Q+bGkfD7XZLVQ1/kfUXqEPcXVDF6ktLzoeSdCn5zV3PuA8PJBb1fp1xaFxSJ84Lc/hV9l9lFB1c3M/hoq5XCOB9GYc07mWSoSJWDwAGRGyHqSAUywmdAS5cKc+S/ZrMQONrjhSpMj1xSl0lbUmO9FLvQhv1dczKsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ncj4A0c2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ncj4A0c2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0210C116B1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 23:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721171122;
	bh=ZrE+XTmqNactJScORNr6qRnNZkdZ2LBQmS7yuQ2Lu7k=;
	h=To:Subject:From:Date:From;
	b=Ncj4A0c2fOu9pHW5blpjQv4Z+xQ3/Pg2tndmdfYr3i/R2X2KbVRUg0CNm62qj/F13
	 PZTG8z4jmRMODfbQf0Yxol57vzN1hxVY4XFhOx8x7oE5peo2f3VWldH8zzvMYDT5KS
	 WZDJ3qbMPWDlzPsXk2Kt21hopx2LFAvGRgRvt6e7HUYfFXV4Um8aq/2ncZb1B4eaoM
	 xvgo/J4O1Iz5Bc0ihybp5cY2a2GrFEcf3XqTb9HJgmPGHqcMn44jeZSWgM7ilHZXNI
	 iI1RJiyw0XJQGsKnEVes1yj2d+Sd5zLk+eTNDnA+T3qUdCaxMFdmn+ByDKN+vXiDrD
	 RyTcS9eDnXYVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0A45C3DA49
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 23:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172117112278.32627.15464948375538260052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28b000126f99bad409f564bcd255cb7bc1cbd7e9dcb8d10be446c6aa42fcd7bf
Date: Tue, 16 Jul 2024 23:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721171122
