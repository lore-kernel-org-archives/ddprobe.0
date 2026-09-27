Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 188F839F168
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790514034; cv=none; b=rYrD373ExMtpLMjc39mpds/HCTFT/7U6D6bZXz3VVO4WAGvieArtKZX8qcelKKq5UoQrtspXLxeaC/zKoQm6EFI1c3yE+EJvgBiK+4zI3D0yDImLbWCYeSubQiA+ok/GQ6L85epem/nEviHzyQsoXEaCmaSGDxsUu+5Q0WHF1VM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790514034; c=relaxed/simple;
	bh=TaZvkEEFLSk0Ne666946MxQXt3mK4ek5weuhy+xwu2I=;
	h=To:Subject:From:Message-Id:Date; b=AICqhHnK4/+UHLKhLbBsx6nnDEIP0muS6RuudmiaM/GsxMj5Ru9+Y4o/eCbWkMtjdJiO334gUIJPYrSkPYeCXUU5oSF/jWC9qUQyYIoXDL98vK6PtTtoTz3pdlFiImv9cIyhYr4JspCLvFrnq2RNCmV5M4nM8cb3Usiqirrc358=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XWDEYRG2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XWDEYRG2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4539C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790514033;
	bh=TaZvkEEFLSk0Ne666946MxQXt3mK4ek5weuhy+xwu2I=;
	h=To:Subject:From:Date:From;
	b=XWDEYRG2JyYwXAkSLSNcJfRTuo0BwMStFndF1q0STPAw3+nJ2Wf6sK43JN6PJPYrw
	 tuPbsENKinobNn165o5BgTeZMqZ+vNrj5qM6KbeIadV6F6Ye/EedOVNTURVTR2NbLt
	 MPwz2BA0jxObdWsDTJeu4QU5oBbIdt8vv2z+h2zGGUj/kRfIF10QJsKiGBM1cjWQQi
	 M+xPZem5gt86CTwTSQDTD4WSt1thBGRy92+CLrK/hUS1LJT3/V14NNWH7DoesjUUlw
	 Cd8KWKMXOHoU6DWiNvYw8igVFwUyokHt/ryMnC519ui2Wb+MsJmc471GD/p3+CNDIB
	 qzUQ3zfyS9ucg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE30AC98324
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179051403369.18284.5002162231251332999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 433fe29b9832f9e07ea7ec6b208edc0fd1e39df209f06ceab8b5f2a8c7d25012
Date: Sun, 27 Sep 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790514033
