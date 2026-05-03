Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C58B40DFD0
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 12:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777811854; cv=none; b=QIxw8XtU/KrEE/3Nz6cYC6LFIWSkkmtSp0qRdpewI6N2aJ2pKIASxqrBEousw2t7YatRbxt1OPBwOOf/ULPstquoqD2rdEovKFM0BHNtfF5sRvyV7JyQd97GfVab29ucN+XoOrjfRLSrpp0Lz49pMNANQNEAI0hTX1rJqlMECt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777811854; c=relaxed/simple;
	bh=Nu/+75/9sOQyXF2CL9boDQ49BdMNGZJ+z1dVbtmx+WM=;
	h=To:Subject:From:Message-Id:Date; b=DiMvcaRkLqc8jmSo8qKGdtmgTa/V6p77WG87xDFVrtbvpzNdPHRv7956DCbhsop+AF9HYGlPKq5BZFW37hAV0I4lbHWTkcnawsGJ89P/mR/b1muzJLcunXgoCTQEBCkdpc1cJ0uHyMusCWBZTWB1XsRp31LGdXIHvS9/5dIpX/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eRk1o4QW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eRk1o4QW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD380C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 12:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777811853;
	bh=Nu/+75/9sOQyXF2CL9boDQ49BdMNGZJ+z1dVbtmx+WM=;
	h=To:Subject:From:Date:From;
	b=eRk1o4QWtYpwxLlf3dMFGmQqiGZz0PDr5ZB3WSud1lNyRlex+OPe9h4QOBTMm2rIr
	 KP0wIerFJNmOXoUINuxvrW/LMhAjmt43CFIjKa0J82uzT+qeZlh+5QnTfj5g5fIEbp
	 NBdvAG88hV9BEhvw7zd7ViGe+eMNZcQWpbjb1ja6OMByGPx5zKY7aX+26/VByUTdBC
	 n75De4wN/4ZVafeahCq5LbH0Nm+wjeCvXk9rrUT7hGmUh227ZxC5xmTmchMJZM60tC
	 URd8esWpLIfn/s/JPT7QxB9+LlHTLaUnUR8EmKA6xQVi8MTGEy8YoHs6wf+aUq4nyU
	 vXeYW3dbGScpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE0B0CD3424
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 12:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177781185369.16262.12749466041175054621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50c1357cf10ce28b0475364a51c4c00fd97a0ee4faaeff0b596344cb69e26bab
Date: Sun, 03 May 2026 12:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777811853
