Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 298A83C1F
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 07:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764228174; cv=none; b=XU2XyIsUCmQ4r1nkDuqQy3EStkglbiCM0pZa4xwrK6fHyAmlFNh50v8wRlRHJH/BZYluCOPQYKyNuGZpctcuFK7ySlHCAJX5fNgEwR4KPGcL9wBtmHoRngGOqtWj84j2jLLvTG7PWzvz8k8qCPePI1AH1opZp1sxsqi7w1jj5Ik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764228174; c=relaxed/simple;
	bh=SXSVBGeDASRvGWJ56yWtJdpQ5W/Me/uFQ/iX41oBr8w=;
	h=To:Subject:From:Message-Id:Date; b=RGrnnBWi/ie/gZWq+ngQQ4EXUygKMByKPav0YIb6LJg1BjDHImx1urzCs4YfhqfuBUFk2BvEhJz6A+FKWQo0DtxxrIsbluh5taerNnkxs89fVrSTV/rkThDQ9Ns08PVwOWvfYt3mI4q8VcxYmaIoSVQeY05lBg/+fd3LqrtK7A0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iNxw93ny; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iNxw93ny"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05CDC4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 07:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764228173;
	bh=SXSVBGeDASRvGWJ56yWtJdpQ5W/Me/uFQ/iX41oBr8w=;
	h=To:Subject:From:Date:From;
	b=iNxw93nyo1V6R7n1l/WtZfyNTajG3GPpRxCwq5uzX7/28AFSRV5EFZ1DciMBgvuR0
	 YG3DWAmBVCnC16AfePu4iQPEf+6rvMO+5Ze4pYIj70nGlzAHAGH8dmvdZ3Yh2Kr/H/
	 FATZTejuoBabgboAC9gndhdEMax2QJxa0LHEHD4bfmws/nnMV7XykUVzHAznEOy/uQ
	 C3c1C80QzpvopJs8D+2vVey9UxT10B3jpv9K/soG62eqjamK0q8+Kzp3ekxNXhYQEV
	 6v7kz6L7Yys9bW2/L/F9OlVWNI+2d6jddT8tJsrE36+voQchIe2797cfsHJ+vQJCuH
	 WeoxX32Xp/rJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CB9CFD2F6
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 07:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176422817358.27686.13139736357217386939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f7a4a65468003b8e8218d371e86fafae430008004827b21a23806fb43a9f364
Date: Thu, 27 Nov 2025 07:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764228173
