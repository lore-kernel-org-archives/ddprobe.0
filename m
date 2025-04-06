Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52F7F23AD
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743901794; cv=none; b=Yd1PO9EzFVCvSD7qKSmQyYz4GubQLlOGJQO/XKhWMWfz5r0yqJp8h2qZGGxxQ4odqrT2O0ltPPEjp3NRzveZEUDvcL5gBRWGzqJcxP8T7h2W9ajWt6UxX8jeekTCutSNAB8GcbKIZSoZWBb0ivBPMFWi8DKFcFYeJU/x1DXkB84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743901794; c=relaxed/simple;
	bh=jUC4gO2kKGmY/jwkHxgxng4foDR4zuA3BM3FWBB+2YA=;
	h=To:Subject:From:Message-Id:Date; b=A9Gg5EYLYvI/FaNc+I7kPARMvWCtIrbYaqf+BA5tLU5zWTU/KpepGlSnmKNAeAmGFp1SFnicNl6DfiGp/gz+YG6Q9l4zccSsbOoaa6O/LZVuuHNM9MD0jdPUJYcIUBqjJSV60w06i2PFS+NJcsp2oh6RLEuepPjGQ5XdCl6X73M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B/ar30yo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B/ar30yo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9C9BC4CEE4
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743901793;
	bh=jUC4gO2kKGmY/jwkHxgxng4foDR4zuA3BM3FWBB+2YA=;
	h=To:Subject:From:Date:From;
	b=B/ar30yozY03XdPbUKeZkwa8BjMl+1n3SVEiR5u3DIEaCXsYjwxoC0bMRG5d/wzwJ
	 ufriJBhIAczGrMYYHaaVIuKG+N5u7VJNa9EkoMlLtQP+ES3r2SuVqBuLuhKPNLF+6F
	 lr+77QILH7BkJEyaReBrqbUQnwBvYYl+gs/nRuj51CMQF05ebsNUY9fRS1IWxx3l5u
	 jTqFZxMeuKwmgFEZlN3o4QMIynhGm+fYQaHjbsFYFDfmF7J1ycnDaP4V24OaT/Fc0v
	 AeS65c7/mRdTnBhAJ2Yvla5w47wqVyeAz25JrhiuKO2m5vCB0v1BPQDDdt1e0jMd6w
	 af2gHCycjQwgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A06AFC36010
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174390179362.18931.11617623127073016282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13d422f27fa4550f9064fbbde9d6a5653178cb60c2f66235536c792cf4f7d6e3
Date: Sun, 06 Apr 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743901793
