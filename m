Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07BAA27467E
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 08:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769849034; cv=none; b=IVBmeQ2Q7OJYYzfisInvdpcjEFCqKUPVfu7fgkQG7d9tQdolEhBpbOz5yNRXp1zrZzLDGbahy+1/Wgwhf5SkmjzF8kKUAzx52nBQKfTNlFY/fyx5YRhn4cGwOerwjcjFFQSX2Sw2SIaLysUOgkOvh2vfD/Kc9jTldVs2nUFmyK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769849034; c=relaxed/simple;
	bh=alf7V77c2JrNV7KrfhbkHdXzIczNART8gbqMoL+QI8I=;
	h=To:Subject:From:Message-Id:Date; b=SQKzuqHpuq6sy+/8rRTQRgVMCBBy4Ps1deZuzu9T5L9BjjiSyWs95aKttdsHP3k+0n8CcKRHPd2N/pNQx+7DB0cAgj0Yo+jHUgqYyHs/9+cROgF//wMPnor5p4PHKlkWaHGxxf1oMLabDQMvZdo/WqS4oGSyhEx2OsiVYJcsDmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qR6a01yJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qR6a01yJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7ABCC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 08:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769849033;
	bh=alf7V77c2JrNV7KrfhbkHdXzIczNART8gbqMoL+QI8I=;
	h=To:Subject:From:Date:From;
	b=qR6a01yJBHKvSIV5nqwSsGYO+8KzOTvOB9S7vHZHGgPUKLzX+Dsgy75vOeHqMDTQi
	 qd/d1KtEJ/kP13ATA1HVcZxB8m5s636SRYVEXqkho2fipFvaYdLzjHkJW9vcqRgcQb
	 SHJ+aUDveVsLe2WDDotXJ2kDuH+z3P1kbYht/VUat6sx2q7BIDql9VGsp6J2wodK4a
	 Kt6CdIVVrEKXb1TZhEe6GzTNtYbBEtIVHfdVgMoxKtBBC7AXrUtUmkfXnPtgDkM8FZ
	 gtH29fihs6ck4jVSo5kytERONoW5rlImyujoSeE6ZByzS6dz/gfyr+5G24Oaxkoqjo
	 43RstybNBXUng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96EF7D79763
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 08:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176984903358.18450.4117764410426331437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cada8f9b67c23080de343580d68267c077404676868d9172b5edc4cb7172e5cf
Date: Sat, 31 Jan 2026 08:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769849033
