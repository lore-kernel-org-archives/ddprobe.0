Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E37B2E11D6
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749825594; cv=none; b=t3XpVrenI95KB1t5F12fQJrlpIV61X34+pjwWRTdIcFDsmQYYcU2rEBo05FzaYdj6wAuJKYJe77D4F5NMYvnR5WKJl+bJKdvIMUqq2zv2FPjjUpOLmqCkvjwHI/XPEXhO7y77DTy+M4X2eg7xilILCGrDVqO+Dd7npXfHTQv0ec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749825594; c=relaxed/simple;
	bh=6vqO6rXGkbNt/ryAw6QpUfUmB3MOgUnDXEiEN88hY4w=;
	h=To:Subject:From:Message-Id:Date; b=bwoxSNLEIiVndRDQtVwdPkZBcBK7KJ7M0W4phvbOT/agY4t/atzdxu7d4ZPRbMX2viNQ4xdkavLFPQVRbOwaWhnx+3Dz2GC1nSEBOhPLTbYtcPnbjEjfr5xW/Bjt673wijaVlkoaUPJFXwS7HHUUYSWUsPw6uN8OY7e5UAgY22M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C6woEDwp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C6woEDwp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE723C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749825593;
	bh=6vqO6rXGkbNt/ryAw6QpUfUmB3MOgUnDXEiEN88hY4w=;
	h=To:Subject:From:Date:From;
	b=C6woEDwpqOJ4rpsWyxMBvwOg1swBpNR6MElB+WesnkmPLZqJyRWOT3H4sQcu4WTw+
	 FJlYMdqyE8BDowoMtOhsEe+u2pechCGdQuvFxbE/cBt8FMU8uoL472nvyR2AALorJo
	 zFNw2ClojrvpG+3dpDTn3/2ydEsno8nxLPDOYDENX5NuZl4dD4T/HHpcvkk5P/isYO
	 AhcrwFnZ0qxXNnSU2tn85nHKrEY22jmMscMeRwu5YFD3HJmQr0Zj9kkog4Py9unuxE
	 5hrbs3AAZinzShVxMOoGukgSyXboRn2DL4LAye3P+Hxdn+pNaGsBKfLUl99n/i6bgH
	 yxA0j7IJDMPAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 978A2C71136
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174982559360.29749.8501658177344591638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aec6929403d79ef848f2ec33221aaafbcd4ba8cdbcd03dc73c92fb2b0794ac73
Date: Fri, 13 Jun 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749825593
