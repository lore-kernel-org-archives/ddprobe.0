Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2151431D39A
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 12:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771419294; cv=none; b=BnTIJyPA8eJZBoqBfDAZnlGgc63J2Yz8VzcBSFBgo8KDnx90Q+rsDQx5vOpjjRnRFJJ7/LhxiGm9ZgnMMOnOa3Ypa0T8MFKs2SE4Sp+w/y+6ngiitFEIQLUWfmvC7cvTp+dG9I6WixHlTHM+SyATRrQ/Ic7MJDxVdOpldmmN1es=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771419294; c=relaxed/simple;
	bh=mEroZHbBDywvmQoSC1NgX9IvKN37nQJrfWdOk81CuJw=;
	h=To:Subject:From:Message-Id:Date; b=cMB8ptJ11+pZLex8BjRfBiPH3l82sLBVqOzBtpiChRIjoE9kvvXForFBkb65IbbfkbN8iCxAy1r+fKVqEhiGH3hWP0xPuVngY8p2oRdUODaAB1aAGW1WkA1h9BIRD9klTU2U4hIi7nkb3ktutW1sZDMosLhOx2Lkfx4Mw2BrlBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mSFoAzYS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mSFoAzYS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6058C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 12:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771419293;
	bh=mEroZHbBDywvmQoSC1NgX9IvKN37nQJrfWdOk81CuJw=;
	h=To:Subject:From:Date:From;
	b=mSFoAzYS2p/+3uZ1DQa7or7SsnhDaq5k84fSTgITX8dZuPajoWM41ER9LF7MpMth9
	 Yio4tku55IPC+daDcuQcU6egF/y+k139zNnB8lUiPHWBjty1/9KXaO6wSZo7EM6LMR
	 Y7PtbZYGJohpR1YLLjp9vVn2UVPod9WawPUC/e3dD1SDGo5nLVoo+9M7avBdyEif0F
	 qAxvN/R3iQuOj9PsymJIVNWTXNNy3E5CBczx+P3dsQUj24zbwfG92bLIN4YddRbxdc
	 urt5wOFQnsRDF4UkBBVdBsLJP4DSrtYp1MgXeasuOUV36CDedZ9owVL2X8v1Jj3BvX
	 ly4vahLo0hPgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94260E9A047
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 12:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177141929359.6860.3305706750142666103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4522369bb450feb3c0674c4cc16c2d1b7cfe7311f0e26673dc51a78503dd4937
Date: Wed, 18 Feb 2026 12:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771419293
