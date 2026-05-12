Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 416A441B365
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778565635; cv=none; b=Yxnvc8Dlx7Z4qDC2i9Vx8YmgcU/8XuulsbNor/AL4fmYdS5wzhJDDnJdHwfwA1Cm7ry5Mp82/R3b1xoUDdlM2+pRrKeyRir/J9m0ctWHIAuICnGs6VSgiF7NsoQeWzmolB9j2Id3+dvRuDvTri7yfnlrFT8N8/oP4Nl7UtP/emg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778565635; c=relaxed/simple;
	bh=bJ2AlEEhSO3L6UrNuKPuQQ3R9ncQYUUawJlCbczEIxY=;
	h=To:Subject:From:Message-Id:Date; b=V6gDdchGAMjizGTJav1hRP9nir1t3NwwIjpVQfXUbcelcT51c0En8iwk2fH7S4o0KbqaTr9LBMsiFOdLmY9nn6fjjo1hJwWH9c1soZfeh8S8Ewpm0VK0i4i6rjRzhu+oqpUtCM+Ho4nsp1kIUPuFEAZ0zcamp5QbG0mW+UtzKLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c/laMomH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c/laMomH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAD47C2BCFB
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778565633;
	bh=bJ2AlEEhSO3L6UrNuKPuQQ3R9ncQYUUawJlCbczEIxY=;
	h=To:Subject:From:Date:From;
	b=c/laMomHGgZkdAqocrh9xljes8DRBJqtfAWt20xExYK2/Hl+oskFz7S4dyulApIgl
	 3a00EzCUkWLFUT1GQw5pcyiePN0nTS2eoxPxpdYvIp06u6gi6oNKDIAtzP1QkwlZts
	 k17EYny5EPNEz9l97PyUHAfvwkDkcGcAcu3HuY39M0hnVbAYCwO3gCqm9pWsvaKgHF
	 KkczEuu7BXAzTKZTxM6BwstZBYkfvaDAqZW/ZkLevHlI5EvStay7Dpi90x6lVUO100
	 VlJ6OLeN0pPC0xLq0aVH+S/omB+rHbyOWf0QMDtOUVrvDN2U0nHOgUxyoyEeUI7jvE
	 DT/OoVOVAeQxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD6FCD484E
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177856563369.31719.6423988665996289060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddca581661f814919a1a7502c4f17bd27ce0e4f6f686f28111ed9b13e0703acd
Date: Tue, 12 May 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778565633
