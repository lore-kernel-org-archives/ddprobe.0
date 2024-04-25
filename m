Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F309A84E0B
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 09:41:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714038083; cv=none; b=i1CSG3QiAd1sRgna4a5rXDSwClvcAqx5UbfBZF5nyM39JBu92/oOEeEqQnby+C1mYKed0s+rcSW+45uM3MBTJIYtgs8kCm8+Pt6ASYiXY5GfP2o+KZKNo8G4vx8DYimFNwGJqiSYA5wI/yo6k4vPPSK6MlhDZgYGC1hIHZB3NhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714038083; c=relaxed/simple;
	bh=GxUvQixCVtCFjl6M43l62Ld54hZRawKeWNuoXkCPugw=;
	h=To:Subject:From:Message-Id:Date; b=ol+7doc7AsPQoph7TRnXJIenVuJTvDA2t+SVnm35G5zV/WsAZPNa13CFA7iZpTdWLr79MDUVOeRlt+iD4pOBfo2I0talr9ed253NRhdYTyxNmkGDf/8S6GS5FR8TZCFjYjyCjFoBHcbqv4CZsl+glWltLz1lihJeYNAC3MJqyQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z5+diiC4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z5+diiC4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4D19C113CC
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 09:41:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714038082;
	bh=GxUvQixCVtCFjl6M43l62Ld54hZRawKeWNuoXkCPugw=;
	h=To:Subject:From:Date:From;
	b=Z5+diiC4448GUFo49inEHk+buF7qYJArmJB3OMuGhM7OHHrq4Jeln4wx3ZnZEnIjY
	 iCbPxCdNqcyEjqxpSod1WT+0O+zaPilq/r1YDHLAquerbOkXBfWsvI8lrv26HQevEL
	 BxOuz+lx3WwP6BbXmj+roS61c6JFAXMbyb5jlxiaqdsPVLcHDCfHv+6WAvVWbDwguc
	 TnKeYmzFqaqiVRM5jJLyfWIB529iclaycBVcTOLlSr7G9XEZUxCUT2IUMZBDbAzaWb
	 CrElnvRcNCWhCHfGV+bjum9BSYMa7zpVMApvVdOCCkEjTGixx3/Kn2d0nUOYrxWxB1
	 UXndSgw1nOU3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3972C4345F
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 09:41:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171403808279.4128.13902888957262227460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 336b4854e26a70bb1ad20ead4c12db32bae963db303a37f2e367a9df8f9878c6
Date: Thu, 25 Apr 2024 09:41:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714038082
