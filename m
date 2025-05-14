Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24FE21F4607
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747265994; cv=none; b=s7+yo7LIIsbKJZO4/A6tXe97kHOJtyktldiwnlGYN9pdMzlKE7yAGbCbBldb/SpIncQ9EHi47053EWo0i3JH97uuiOQuGtJ0jbhd5NRXjVBPbiWv1UBI3yARQ4uCzWdGyIAqAxi0k6ndI+lN/puF+RlZL9oAqD7ma730UBhJmPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747265994; c=relaxed/simple;
	bh=FVdnDIwhjhS1fXMK8OFA6elxg90Ga2CBgip//nJq9tk=;
	h=To:Subject:From:Message-Id:Date; b=tMeEy2Jv2V+jMBSzOzVmK0RBwWH91JTjs1K3h9Is6+HiRVhV7Upjp9HOPNoGJTqmzrgyYcwkThiV9QVAYzDJvFsAiIAyGv4HbMZLjAq0E7PL/r8WYZS6HIXGWCBVg1iBIklgiWTGjq+F/VfrCnA95uO60KN71Szl2KQ73jZsKeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VnPPwWWP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VnPPwWWP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E704C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747265993;
	bh=FVdnDIwhjhS1fXMK8OFA6elxg90Ga2CBgip//nJq9tk=;
	h=To:Subject:From:Date:From;
	b=VnPPwWWPV7qxNz8LRwyz2UlRKLxtUUqUTQ7PfogcCx66bDmEenB/FwK/kmUsdfoSV
	 wAj1vVgtH0Bc7rlIz62qbShuPm4tmbuLfRwxVpNtRhgh62QieufaJdw4Qf86gt13ei
	 myySuv1PZDzaJ99DUTkJSaAXOZrfpEXaB4W07LyXlV2Z4F/+zJ3CJE3x9b7xxqPig7
	 iw+lqRa5zXZnlus4pmyGOQZkhGgLXC47gELFCO3ymUP22LhGRR05cVlsFk3Cl307jK
	 GzN4PG3rvbw8CH1K1tsij1zKQEUAoIknhf3rzSUGYEZ3gpLDafNya3Ct6+MpDitKrf
	 /uZEey24oN7tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC6CC3ABDA
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174726599357.13811.9922028595655450142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ceedaa302e6b595d4e0b9014a32126af3220eb30935c78a13f9d5d3a09e198de
Date: Wed, 14 May 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747265993
