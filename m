Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 024822C21C1
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 16:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771087494; cv=none; b=Pz6EbeO2CtDUXveP+hBBvCEoh2ZIeVRt68pWZ/mnnzkt8bakN0tR7f20KyUsCWpPu5b718I2Xrcig5X6TkyWVbsdDGXShk0EN1/yT3fuIvsNhnIKLRK7cd45qMzpRXtdIRjaJILA2lstX8cdashy/s9xWjg7y6uuvvtUnpzUDfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771087494; c=relaxed/simple;
	bh=gmML6J5nT4vxdf4eMBbgRSJ5JdKYONHwbYmiNrd2E9U=;
	h=To:Subject:From:Message-Id:Date; b=byXyZPOu/C49gyWT5hrhNFJXx22DZhA8qlpFsWP4dtXZL1VpuF+mZwJoKGhKCMe7CRBrb819T1eQ5eg9TSwJj9JDZaaejLxY+f/CSVI5h6FhOG8OB4QOczeqI3/UAk+p8VgeSUQAoKBvXXdZUhl16qyr6SiUccMv+hrR5Sx+NeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n3OJVrYv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n3OJVrYv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B28EAC16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 16:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771087493;
	bh=gmML6J5nT4vxdf4eMBbgRSJ5JdKYONHwbYmiNrd2E9U=;
	h=To:Subject:From:Date:From;
	b=n3OJVrYv3Aavcz8ar59TGlgXhntQTJQzSOoFlNWUrwTyMxIoiUVclMAmJ6utrISFT
	 pttwiKThn3S4M88c4t/gI03BYUWb4Tecgx2HGKS0NSJQ3W9XK0gnwENSknwg6THfti
	 VSFZCixn1ZKT6crWiTsU4Hux7soyTiW7JiCZI+CJTsbt96jm7C42Ovsw+hwkctPXJf
	 l8Vm0LslfcjdPNdr+ZWrNwWVQI+DFHM1LdHwZMpqQU7U/F9+IBhug+GwVY/FzMlGXt
	 +niY5rXmpOuv1ZE0dcZiQKf+KV/1/zLtezjNa2HaGDl/j3Zij5NKCHUdaevNaOSZud
	 0GRAl5BAzXZhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9901EEF5848
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 16:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177108749361.9214.11521494764798805920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80cfd3966597115f2d893fc84cda5e77c8724ed89dd7d18f1965911d8a247c16
Date: Sat, 14 Feb 2026 16:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771087493
