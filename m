Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295C23207
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759582194; cv=none; b=XKYRTSXFDO/v4heLYOYy3sb2RMXMlVOy9Y9A+biYVEJlOWgkwWS6Hslf4RZQ71eCXiOXK7bhukjkllX+cO1CQYoz27w4NAJV/WA8A5dZSQqnQTja2+UcMy7WLk90/ex3Nh+azZCsC/wxXCbv/jNsmKLQrALLw/KcpZZVJ+1qYQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759582194; c=relaxed/simple;
	bh=SrD1wqaJS2FXiV7mYQmsKlvyf/Z94DpWtW9NXC+u4Ew=;
	h=To:Subject:From:Message-Id:Date; b=K33JhzbwyUIbSI7qU1NSGFTBH0T3swl/dIMAPcX9g5xdchSHaEGC/w9RXPPR6fEsKRqILcYbAVCsPeGLSEvJeJUMCu8WnfkhEtNuzbJtUm8gZ+1LVt4+HExP9poAipl9GAqQSkgCV4sUO2Xb8zbStDwmOybx3pd/CN9cw51hLx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dn9eIt3Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dn9eIt3Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58CBC4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759582193;
	bh=SrD1wqaJS2FXiV7mYQmsKlvyf/Z94DpWtW9NXC+u4Ew=;
	h=To:Subject:From:Date:From;
	b=Dn9eIt3QgngYnSayg0qKQ47l42g6wf5/iuoLhkOOOsyY/VEJcDfInYcjnr9upELin
	 JNl4ZHIvmepNoB8RzznDjJrSexDZ2jMuXTEKy4qYPnnUJ4DyeQzbYof94GvceuHfUE
	 BzNAquBZUF42HhoTwAI9hBJ7Z9HnZLQu7LcBdlic6+3cgF+GXEWvsKDIjFBp/iWMXM
	 eBn1vooo5pg2NdyNdW3C+bZu/Qz/h+I69HA+J/QUEH4qOUmbH0olsFm9quySkeb5Nn
	 ijRURTQiPe3KU/jh9oc6n+NOoM38Ac2rx2gBsExhRgAbfHr3Y78eIhLTdwC9i4FTWG
	 54iR3r79DBE8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91524CAC5BB
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175958219357.14609.6963018650503893620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0a4fd8fc76ef4925139d2da67be710635ed1b762caa3c0b18570b59a9ca31f7
Date: Sat, 04 Oct 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759582193
