Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F6592746A
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747667994; cv=none; b=GVjA88PcujtAdYKdncR/PKumFeAoaFI462p88e7fo93S3rTqQnSzqikqzJrJdvTl/Ui7IkCXmeOaeU3lw8n3DaROKvXGLAf/GluHDLXbD3eVYeTuwSx2b3KKgz0SYNLrfyAw45RFjq1m70I21PNe12WHwdCA/aCQFLyvTKlGG9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747667994; c=relaxed/simple;
	bh=e9Xees5WGCt91g62qCtzdymtziacRKVM9kIxfBrKqBk=;
	h=To:Subject:From:Message-Id:Date; b=Iufyf2QmGpSd4NAoCeZms7I+95RzTOvE7KyMXM5PTXPkQ3tiX41kJ18TQgr/i7VITDEszzwYNA2rOKEBVhjrT0raAavySfBuwdfrcgMUy5VpDK3tV9gqss9YnWZEF2DOPR5jet0YYzxS4Jmkud1NcumahlsFp+ogxTKdHG0XyKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E7EpDq83; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E7EpDq83"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3561C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747667993;
	bh=e9Xees5WGCt91g62qCtzdymtziacRKVM9kIxfBrKqBk=;
	h=To:Subject:From:Date:From;
	b=E7EpDq83yQpWREbnwDknn9M6KxljlYCSCkAjtH82LKrH7AhxjRrUgxzafaOOStNJe
	 KVYdKx+IlYI6EE2JEoNcKrxooarcz9Gcq0vzGVDL3LcOoMA06GzNwmpMnCM3fKi93w
	 xUTGR0D2Gz/y6dTcgRt9IJxUv5gTQvbMi0K2kl5Cp1RbTAIJ8vAJPHAYmxElxIgX3U
	 qhwCPhy5/qILCILEgWZ6RbbnbNCHngzz6ilePpBllaV0up11iExav3h81Dsbqdj06V
	 /dU5ndJqjZitrG8ZoDqzXyFUDjnWrcAz+V1kpowNtHzrNYvTw0fU9p+K3R41P7IGLw
	 sJI1ToveZ57vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94996C2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174766799357.23603.14030368357245551140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8804f6d9ada5de722ed6e3dd18b69eefed1512de4c16b40f51256fcdb7f45cd5
Date: Mon, 19 May 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747667993
