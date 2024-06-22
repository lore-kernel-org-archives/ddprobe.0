Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72CE522075
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 22:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719094343; cv=none; b=GuAIbpx2DKnmAU+go5iFMjMCNsYZQ9cyhGoZm34Bun54IEwDfNKsGBFgHrEYRakjUNtMHEKMT/AOk8LV454YWasDQySg74N1AvvrUW3DhvFelc5PH5aBuTQVpgIq95WPiCAyTDLSCj0lpoJoBs6b6IcF86e9kBPWXyXZ5pi8AQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719094343; c=relaxed/simple;
	bh=Gb4128nIioVPdIB1kfiJ2WvxTJrOso6yBlH7+ZSKNJw=;
	h=To:Subject:From:Message-Id:Date; b=X2Fc5yb1+tKa4QbaZdLUMzvJYmvga/FXBFE1XEV9GqxFJm6rvvVoX8BfFtruDfRKf9bD5+XAQNvv9QmyKkcfDpY7AXBgrejAnexui7yafSGbFy0ud5P4Npat58fjGnG3kCM1pjXmLbl9L+miFvq3sFWKZmnbIG6INK3F/ewUv/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bj4Id8OR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bj4Id8OR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E233FC3277B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 22:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719094342;
	bh=Gb4128nIioVPdIB1kfiJ2WvxTJrOso6yBlH7+ZSKNJw=;
	h=To:Subject:From:Date:From;
	b=bj4Id8OR0FdJJeguXFNlPLDI/espSzlVtbz5AzxZksq6L3+Wl1ygoIFx1/wIjtE0M
	 /x15EfO4QxIc+4UbGIaHzOngECcF9/36RNK9GX3XpEVy3WijMPfX8SDcwgE251nXBq
	 9KAjd2z18MINZoG9dYt5w80v/yjA+S+gq2fpI7iRsqkcHuvwFPFIviba+gh/o5Vt99
	 LXwpp4QEpVm+6Hzt0l3NoQ61+eaLkf+nQ5CMYtPM2YHnhJxpIunmehGm//SIfECaqy
	 oVav/xC1rHFk+J0IMdeEqQvhj6hvhKE89RHGahg6niLXa0t1HHOkG/gPf3QcUAnlS+
	 y3b2RqYTYyXiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF566C27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 22:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171909434281.5859.18203436338185093262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11d5b09ee63b2d0df8841244bc1b702ea2836b14727e579c51fae255dcbc3b3e
Date: Sat, 22 Jun 2024 22:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719094342
