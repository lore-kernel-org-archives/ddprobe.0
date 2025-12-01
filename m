Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2581643147
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 02:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764557574; cv=none; b=VuIjVChy4+QrZLN5020CMK7/2Bh7sAk6FBruWBgdAbl0TvQ449KoS9pPSArLXGmU9zgfLf833A+tZFyxwJhpEJRD1QryBB1A0MEO3hY5Y9mJXx0g3av4Eo9bfceT8RxnPRhGq8ZQyoonwW41DbyrtHQuakFj5uOQ/+Uc+2AO4/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764557574; c=relaxed/simple;
	bh=g4xp6D4JTnuL0j7RcVjYmvMMtTpIJ0EVggfGGeYtEvA=;
	h=To:Subject:From:Message-Id:Date; b=reNqReM7kM9TOIY+b8EEgmJIgazHZdcaeUd7miRaLFZeahoVIncO8NPQaQmwQL5q9VZnKLZ0h0QQmxrxKeNDK7XXEfrc2CS5QW/6F7TAV55VdelEAOWSVCoN58CikTEEd+4UuCdTGDAWbVUcMl6Y0eJaQyMxBLYDCasAYsuEyrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eIi1dq5X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eIi1dq5X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FAEC4CEFB
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 02:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764557573;
	bh=g4xp6D4JTnuL0j7RcVjYmvMMtTpIJ0EVggfGGeYtEvA=;
	h=To:Subject:From:Date:From;
	b=eIi1dq5XTdh6tunr2+n57czhmYIhK9yUi4oVL0PQbkVYU0WxfXSLzf2nS5u211G9y
	 l65y3LQ/GvRR6QFeTnRpVWpOVtTKgCmR5EZIc/GDSwk6Afpi9eGpk3DQoGBp9Rr4/S
	 IIB8f2CGEr457baWIC4cIouxUkS55Aih3Q/rBqlZonLBSDaJ0Qc9Mofxoom6XcmQjf
	 QTjegq8USl34JaDkFX1Js167bgerw511zA/865nyDeRzHbBvcZ06BP7PduJ3dos1gL
	 egFl02pW79ZtPIC8l1fsN+0ZA/+xTPMNLjs746hGvNXeBf+kMxKmqpYwwD5BKdg6W6
	 hsli3VB6l0z2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913F9CFD376
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 02:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176455757358.5077.7503073009790976953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8710789e89d747cec3d66a60b7293eccc841cd2ef2901028d45cd826363acbf8
Date: Mon, 01 Dec 2025 02:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764557573
