Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4895E35E95C
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791018634; cv=none; b=GiAyBCOCPlZy1OO3BNFd4hizaGbbZiSswBhTHpZ6s1oa4/YMLfpSxsAchsU+BeEJba6Zj2wYEjxoy/B8Nkm1tlyHeevnqm7Y1iJmglaRCLOEcYR3TMTxaVP9CMXSdBVdhC6/qZfMz+S3eLFZy3LW4DbYMIS5somy2ebwKOms4FE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791018634; c=relaxed/simple;
	bh=OdDZn4No/8+FKP8/KYPuFxccavBAL6iUDGDmdfC9He4=;
	h=To:Subject:From:Message-Id:Date; b=KMD5eb10mVeQThVPwQpcA846YtHJNy/exYSmgXhx7djH6NYo0Lxgt6ih6iKDrlbzGpF1+1beKFhiThkqSVKdKzo3qucjlo/Ry1OPWFnm8MnERheF01vSS+wHvucLMHUvIMekiChFhk9YgSZXDwPotZ84CfxmDbr/2F860F1H43s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hQIzSN98; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hQIzSN98"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE2F5C4FE95
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791018633;
	bh=OdDZn4No/8+FKP8/KYPuFxccavBAL6iUDGDmdfC9He4=;
	h=To:Subject:From:Date:From;
	b=hQIzSN98QUOvOhGiLW14lGpoMAO30TWcnsb10CpKHUX4RqudtI/djHzyoqnZ3nGSF
	 R7h+qrxygFau0eTzDJJ03DIfHuGV0yDEKX6YXXh/dma3oRazWYDa9YColm04l24rZI
	 K+yyIsD73t4ogQf9yB8eLwiQuGKOo5H6d88hKdUfhueK7DkEpqj/WxecA5V93TDw50
	 gYc+ajZlyail8gKO+NLL6BxxFCicmj8//A9/Y0vQk2tJFLeORDr0RDMatFgbZ1dPEV
	 Lv+aBP1MyNoN4crjCSbKPMnCn5RAVRwbBk6P3DkFvwiDHICEeg/DacUm7v+VTcPIb0
	 7QWnxX7DK2YGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB017CA5FDD
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179101863368.29352.14954904558382037275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df70a2de69adb6234486a9048a6a0711c84637b83fe24210329c0e1495ed6818
Date: Sat, 03 Oct 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791018633
