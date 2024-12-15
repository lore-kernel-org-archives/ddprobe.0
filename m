Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2931D1FDD
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734240354; cv=none; b=AN1GcGaAIG7/6rA6essgytdpkd7eTUGK999zhc/WY4lsffmkBYnibYflZBzX9sg8PvwnQDjn6RxqbEpxDQ6RIPzN9msHxdmVrgk2glX072z4dsTumPIcr48uwC/kvntpgA03sUQR57hRkXI2CUb3YaL/cZ8NmyltSPJUvb+2TbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734240354; c=relaxed/simple;
	bh=GiVJ7/WDURX08jch1SPy4ICJM80fdEzgOCNINc8kXlY=;
	h=To:Subject:From:Message-Id:Date; b=ZpNgXpi3jVol1Gha1rlgKEf9QmNtDWL7USLQ7BbuuwiOozIzY2/SWF/XGfMP+wDbgdgzbqtomnfNuZvxHynaYP5JOOtWFTLYvWi6chnu5dx6tdWrgLHPBAAzQWxhY63XfkZtYqOfQp+gp/Rkf7oceUR/bMOcArfqcTe72EW1M7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XAULX+eZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XAULX+eZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E6AC4CED4
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734240353;
	bh=GiVJ7/WDURX08jch1SPy4ICJM80fdEzgOCNINc8kXlY=;
	h=To:Subject:From:Date:From;
	b=XAULX+eZtXqtW3Gwik/QkGqlVsXjBq9RJIFGOFxJ05fdHU/o6SWwGdcjbqRwPjcUv
	 zxrURGhVL7IyJfFVzwntdxGH2PdauEPX/NUee3dOrEnfoAfrL02woki6AsOYfJ0DjH
	 NK7K1ccymRmM/maxCnbwUwbYu5WVM/h8B+UgzQWxzCR+wH7y1gS9FzHxf9wzL7+aBS
	 IWIZ5HOCJhrSPnYEiluO+OrqK3UWM1ouGKeFYx/bK31McDRzMsK+sLI4WRs+GQx/wq
	 JQto21Guv9FApf9bYz1K7uaTwUGNaxoowSn2oocAx4h3D+yuSxJVzyJaKWNlzmEEan
	 0iFGU8aQcY72g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BF9E7716A
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173424035358.17345.12609172007491248453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9410dcabf0923bfdfe87748b4829e00102c5393f10c002e341c0c449515ec3f
Date: Sun, 15 Dec 2024 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734240353
