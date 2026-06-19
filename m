Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54E2F1EF36E
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 22:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781909194; cv=none; b=LCRTNUy8o+KhX/GsNiN0Qwh5RdqzPXtUGGGV/5Ma0U4hgXvHrDxIxup/aAlPrxRxmxfiqEpDxaYCXjy17GxdPRztR3N4636vqQzv84eN3nn901Kd5GkNywIr289NbVV6W1MxIazv6pptbNgqBPQ/kHbDdEdoMqSXkJmal0GP0rA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781909194; c=relaxed/simple;
	bh=pyrGJcdr11Kn5A44Atj3AP2D6lIvWHGvgUyXWGEp/Ok=;
	h=To:Subject:From:Message-Id:Date; b=hccTG67za1uxMOkT5WhJHaKKOFdBfYaMTeDLeJBsVoZc4K5IA+MlggHCNJ8pMlXIWOkzBUKClnPMyc56f/lQ10pl1JKTtjWJKxVhYGTDX3guo7f+Mt2VVHtJMNWuqT6KQTOXRRSLhK3VcShG/40QmBDkBFkgrst1ToQ5ybZ95dc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ucHtRaW3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ucHtRaW3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE91BC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 22:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781909193;
	bh=pyrGJcdr11Kn5A44Atj3AP2D6lIvWHGvgUyXWGEp/Ok=;
	h=To:Subject:From:Date:From;
	b=ucHtRaW3hjXQoDgp94ZBB+QiO2jJFy9HYiPMgoLucUIbeBiPIqbEQ83lCdCLBggTt
	 lnoBwTDyBrZrV2ecsru9dQHWzcFU1kVP5uD7kO1MqX41IleAyGK3Ad1esnRgOj3li8
	 WUH1j1Cd8/TZGwX0242wMMvykuOR6cikww0MxTrvICtX705WlIqY5VpaQMu8DdDXsZ
	 J8+PqEL/wV1Da/ZVwZfNw36m66J+q53Frua9+LGoNl9ZwOgFbhAiiLXjY6EqMlIwGM
	 /xFM+9z1KbzcUrMpsr2+QG+UGXfWQWd5/GpFyVmhK8rWRvmiNUsA2AlGAA3dtdANY4
	 kFtZAtTr1Mebg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7D1CCD98F6
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 22:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178190919372.1524.9974147856965316730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: feb7cf77504630e4332415097432fc8aea26769d7bd53a710828e9b51b5e6f7e
Date: Fri, 19 Jun 2026 22:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781909193
