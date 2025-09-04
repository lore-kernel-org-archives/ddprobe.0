Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 589DD32F75C
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756952995; cv=none; b=f9gO/tJZPT/7A52lvlJqoSe+R/5hCAMoOOUAicQLxvpLOJXq92/ZKcthTGC3MhfrathF4MhVALkyxYXB4i/T3W3m6Z+pK4TdASFP1xrYHgcNTQY1urW/K6sJfdQSXQx40XjARrT0fOqE/0meXf4QDPvpdO4uH4Ui295IfEcPK0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756952995; c=relaxed/simple;
	bh=+nJEWkx6OrF1z+ERkEnbLh0ruf3LTIYQ+fnJ0cNErLI=;
	h=To:Subject:From:Message-Id:Date; b=rW6mAs4iK6QPf8L63usDnQk3/OdAinIK6qUaX1a4M5hkXKb1R52mC7LWY5ntc075cKEkEpyo8DcSJycz2k6V/0AzXFPm3Ho8HZxDBOzy61VrueAI0xRQ4aMQsfNwIp8Oe5uXQVIEge71kGdeOFp/f/KZVXQTsZJmMHMeBqIuie4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DA7DWO1J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DA7DWO1J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F5DC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756952993;
	bh=+nJEWkx6OrF1z+ERkEnbLh0ruf3LTIYQ+fnJ0cNErLI=;
	h=To:Subject:From:Date:From;
	b=DA7DWO1JoUSJxPYMvMkyzYTxJleDgyG4ubOFOF/UErjA7EVKDjy0k1esDwa+h7Q+m
	 0mk3YP9mIesqxyOEZHD1v+zLySGeXxEswBnE9HazDG9Oq7d+t+E5unc2Vsv3YcSo9S
	 Dj9co//ONbP5J+t31XhaNsYe8Z2metoq4U/ypitUHSzMaC+oZmMXAd4AXCAu9bBcWj
	 9+Kt52WlDtOy3USiZeZMYPqzuMA6ec0db/1ynIBbymnnlgbn4rgC4h+FmDwMrcffoV
	 IrzIK8m8Real3AchijNCV7DlxfccdIC3ivMNWQnv7egsCkrz050HLfpyiEMobUUP7k
	 NAFDfigNAiMoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920CECA1015
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175695299357.2710.7954157333899030016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ad64589b33e7da104376eefa531b3b5d89251cb880eba11faf9f80ab738960e
Date: Thu, 04 Sep 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756952993
