Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C07E01F8AC5
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 11:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765713173; cv=none; b=cHGmMCqzEjTNTvft/TkB0BeE28a4bkH3Gj5SYZQnS13njlzqQl17EqiP54kiKYF+PlZ5ItEl8iphSN1sC6potbvxsFSBStJMk6k67r4Vw7/m9nuLGSM984RzjvhJvUJGnhNj1li9Y2jsyMCCv2rdjZlgn8mSpF0x3c+uNYYNROw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765713173; c=relaxed/simple;
	bh=MiMBjgx22UvddmM8ela8A+wSr03ox+bNC2DPr1n2/Ls=;
	h=To:Subject:From:Message-Id:Date; b=A00xp00b27TNmyefmYCzIpwYkibu01GYVPdJkwDeDPjiNuRXYskLez4l2A4twFGT6cnjTchJjHRGvHIjDdwSxqCmVHUoqt55hcxGU9T+9NDSessfaAL34E+NmwLIK1PDOOrrQAz17DU5xI4O4Vv3lK2hQaBudKSDZNmRlT8KKq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JaPWSVOL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JaPWSVOL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98E4BC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 11:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765713173;
	bh=MiMBjgx22UvddmM8ela8A+wSr03ox+bNC2DPr1n2/Ls=;
	h=To:Subject:From:Date:From;
	b=JaPWSVOLjYTv2rDhpbGpcFQueCFroixCG782LMB9E01x9J+Y50ZJMxYv8DD9wihTa
	 2bB2SXCyFOcq7dqA1rt0yYK2R+XnFwmFuw/XAodeeq57oQkUDhEwfoPEULOwWkqRaO
	 MMoFttSwBBABvDmYenJcVILeCseprF5RCQ/3DIM7xhcWPrN7xDuBDg8cRMSUZNOYKt
	 n3kWAjj+BaDAYN+bFVAoTK09P+KuwBsDOa1IMcYUP+dsXgm9EI7eE/Y3txBqUR5RZo
	 xCai0T9JaNYN27cTku68qpnNEFDS5b0iTKzhIiw1T4Cg1cnnKcEexFaSx7F7/m+ceW
	 CyAHHC5UqknSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906D4D59D99
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 11:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176571317358.17360.14323876688429991891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32ee03cbc36ad1bd76127e6c19f496ea38624cfad20fe115f1edf74f96936fef
Date: Sun, 14 Dec 2025 11:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765713173
