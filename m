Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9C135394
	for <ddprobe@lists.linux.dev>; Sun, 18 Feb 2024 06:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708237697; cv=none; b=IglCj/rc+1/5OqLHRT6XIA7SLvrSjLyFpPE5okCpS5W3JWhYkko7xRiijI8DFK5UA/4rqdTEaTcZv/ULdOWqKfWKJRZAr/8BC6gUCjLEXmA3UutqWiZg09spcDLisKZgaWPpPgurhFpecgXgyzYOiSPH6jcOP128GX6no7LdHgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708237697; c=relaxed/simple;
	bh=GOx/j0dhpdpG8VN3WrcrM6w05AN9XnCtnTiXbLeJo2c=;
	h=To:Subject:From:Message-Id:Date; b=PrnKvj2XtwF93f4iVP+P7T+SRQP2fn0mO0XL8FEMTi9vh7eLIFprAcGhwm3emLUsKPRLZbS00Qlu6tDRawhoPGlGt0fzQ9T9Rgtozvy8iVKYm2uavONyngYWHz3HYKJyT7BmJzpVvbxxlsjx51iaRHlhAxENFCPXq+565+QCYyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OOfIpg3M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OOfIpg3M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 820C8C433F1
	for <ddprobe@lists.linux.dev>; Sun, 18 Feb 2024 06:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708237696;
	bh=GOx/j0dhpdpG8VN3WrcrM6w05AN9XnCtnTiXbLeJo2c=;
	h=To:Subject:From:Date:From;
	b=OOfIpg3M5ULGyBdBoJ+MdvIPxInri1j7yB05vD7sPjjUQ+D10akPpMi3gE7KmaD8Y
	 nGToZBFSJCTGhSWT82Unt6K2Yi64d08Aimqp5P+7uvn+ZEUdjtDj87HJ11DEQV97LY
	 PkVWajamx1i8m6OwIfgUXe/5MaLd+1/8bxdsNR0vsXEJ+44OMn/tv3m45MvHsp5yh6
	 ph5awOUuJm67FmCihJcsulLpYoisto6/CmF5wue7PpoVxiwFnt+oRrW3wK1ZsqECql
	 4c0NIllFVnbbeDUEGOc0WWJWEv/ACF6YpW8f4AKk01B5OTtdSPnqgw7WnQCuygwTEg
	 /GOkTChF3aKKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 643DEC4829E
	for <ddprobe@lists.linux.dev>; Sun, 18 Feb 2024 06:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170823769640.9308.9397126259111928463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff3d032f66d4651dd2cb19e9400a5aa8a33681229fe03cc399a7e46bd5a70afb
Date: Sun, 18 Feb 2024 06:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708237696
