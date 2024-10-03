Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F3823AC2B
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727932554; cv=none; b=Qac4MYp4kEsi74E+kMjtC7qI2Ldcbo0rVYM+oF4Jzqk7h9lyeiToc0nY0Bz+jrrIMVHdhnS14s2DPgMjQZRpyMtR2O4oRh/Hc2Cn0iLBGXNnV+JpnlpZG5oBX4bfpzEihE3c4DSz96J39dXff0yIDZNGGyIFmOj2/HRQ+c841Z0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727932554; c=relaxed/simple;
	bh=LlhuM65qURqii8bEoXog6/khVor9HYynczs4+KFgCn0=;
	h=To:Subject:From:Message-Id:Date; b=avmCOcnbglVEFoxuK4efvAoEgBojBfLvdI2Kx4S204ctKBoB6UjUQEnlhi4XdLSOQJDZqobLu7e3ljw27FbazIpFUviNN51+GxVck3jt1bwVLAsvPj62TMZBWcjdk9SLVZ7tJg2u1ZK7Wte+4BhC+9Mf1ugJ9tbuDmmTAeXPNzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SWMZaKYy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SWMZaKYy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7FA4C4CEC7
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727932553;
	bh=LlhuM65qURqii8bEoXog6/khVor9HYynczs4+KFgCn0=;
	h=To:Subject:From:Date:From;
	b=SWMZaKYyCPS/fczAkMK03gU168J564Afrp66woasTZ93vdrkDBTit8OSavr/Pmp3f
	 KNycn7ex9z7mgeLGNo7NWQgKWEysJ2oX2uRq98ktGttaPz3o7ukqgPz3lVzc5M9A0V
	 xQI+1T8gtNdO6hsmi0A6YsXDIXLJJu89pQeUXYJaj10Kk2QaZ/kaCLHwejdTNtaXr/
	 JarhH5P5rpPK1HYUV1HPy1OHX9du/OR/kTjXttAfHp4azHaaAzm/IHvveih2xr57/C
	 mPpVs6RboxlFrDSYX4JpVqUUfpJy5UKBuzBeT9hwPdUv84Bc8bCIBxWbwVz5VtzGJS
	 PhoWTEloskkpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A721CCF3191
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172793255366.534.3641909066161597300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3af2b973bafcce431bcccd167591b76186dcf7af8676ee20416f14e073a59d0
Date: Thu, 03 Oct 2024 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727932553
