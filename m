Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A8E2563
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 01:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716687263; cv=none; b=NCMIUfdzuvmh8781SS8TmrJKPnVAhInKV0ijtgEuevpWfeDefyRyz1Scf59wVhivI3aWoTxGFZWhKPQSbHj32hYUxiC2g43MI81dw1D4Vi5se5HFXEXWdebDGEktB9p+rUnxyco+K+xqvmiepInCgwr4vo23l+pAXYcFgKyCB1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716687263; c=relaxed/simple;
	bh=KDG1XdKHAcUjbT8Vy01J8xH7s+t5e/0+WiyNouDW5Zg=;
	h=To:Subject:From:Message-Id:Date; b=Y/HHF9Lus3Ui/3Z7GYBw/2JMoL4zC5B2gU0GtSlLJodDccrXRDPgasBkQMQZ/FU2a/o3UHhj0maBnTO157lEOHQXLLS7jfJKT1heBdbwGwMis6b/MRZFJNDFKdIdnGF+QWIMlZNBX/5PYBIC/EoRXuJKJfHjUL9fTZ1bIVskThQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kMkfFblR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kMkfFblR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3C85C2BD11
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 01:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716687262;
	bh=KDG1XdKHAcUjbT8Vy01J8xH7s+t5e/0+WiyNouDW5Zg=;
	h=To:Subject:From:Date:From;
	b=kMkfFblRBthKc4nDtywHfwbp7IffOSs+uCebEfJeDrKh1xL/VxIhQ+gv6FQx3OzmJ
	 8HBqizrUAtslLb/7MnXJfEx0jcfdd4dJB6yPDV0T6Uvw5VXOTqwNYXcRtpyKaCmy3c
	 4w9KFajJ8Js2NVGTmLogs+MXkfpEIZPHzPN/7EON84LK9iCdVISftbPegMKDZYpU3t
	 14/Vc/U5Sxz73Z4YkLK4s2XJCOn4SZxNcppL09TB0j1YCgxUaMUDSQHV+Ha42vSh49
	 YD/4oJnlXPMfboNuUuSqLBvZPieYgviw9ZTV/RWudfln+XaaQ09gXbN+MpUZtUDRfR
	 iNpl+CVKjczhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEE90C25B78
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 01:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171668726279.9294.7355466201782093509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 278d2757f0bc86e7e6191613a5d1326529ba5aa5b3cef804ad1dff5e19caebf3
Date: Sun, 26 May 2024 01:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716687262
