Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 238D614D6EF
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729047954; cv=none; b=O0ZFU28F5f3id/dPfs4aGJNHDKQs3D3m8Cy3vFyWvhM2dUJIqnsxFUInwL+7/wxyPPOI9GL5SRVWOQdS4VhZ6UlzizWDfgLGIK/kOiAsYg7dIsHaO+d+B3hjJK6I1AC5jOcMt4gwuuKJNqxlgiNw4FK6mpeOYNLad3h5zAALAzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729047954; c=relaxed/simple;
	bh=rO7wizucLyaJkH/SqiIJkwYa5IpdcKD6jDLeBEy5NBY=;
	h=To:Subject:From:Message-Id:Date; b=i2uV6n5+Y6+uS3kMwDykXjOJCpBvGZ4GHWK6fTMAAcVMZ3w9ICPSUp0kmZchnPGO44d3JgHkJIdvPK6UB3nr8CA56Nu6ulS2pc88ml3KFX/n7SNkGSHEay30XebyxGAf29G87iVJGcC5dI5JNeqbGStwjrNaasglQlwayr8BGF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hMLbCT+P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hMLbCT+P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8567C4CEC6
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729047953;
	bh=rO7wizucLyaJkH/SqiIJkwYa5IpdcKD6jDLeBEy5NBY=;
	h=To:Subject:From:Date:From;
	b=hMLbCT+PgCbur+JRXRtQPAyGeLSM/TlYOBKfzZD8J9JgHFYreXLx0i3XgACsR4Ddx
	 9FDalS6rFG4GV5POvwTfeMSdM6IjI53Ms9NKpGDXcmQ5EfZHTK/sMx8XHVEbOtZOcN
	 nmd1YNuWiXQK4heYJ/heCpOgaJ/jnWoDrN69tHqgsgfVYrU8XmR9BEp7Z0tKTgFW0W
	 Gd3z8Iwj2T1Aa+OXlqfVYo8Z9/hmSmX2WygfApet3AXBJQX9pFCmKKBwDd00kHuMzY
	 x1UlI9mZFoUB89746sc+saRakx13+Z6JnU0ShlaMdtr6MWoCz/Jshr7yczZOgLezds
	 SN0b7FXuVeCUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9415AD20693
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172904795359.9348.1287602999340737132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0174b0a4517969cacb2060e35962a9122bd6cf65d01c061cd78f2255049e186
Date: Wed, 16 Oct 2024 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729047953
