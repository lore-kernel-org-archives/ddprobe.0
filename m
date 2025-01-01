Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A6C246B5
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735697154; cv=none; b=qFy/KqUB3bm1dhhihaQ5HfwTEdTt3vdAxqHogwiSV7avY/ho7RZtRON/P+s69BSP7PD9yaD9+aTMt3lOe8rzdgaYWNqBEzr+euwCkkG21OwvgRWavtr9xAUt1O2RmcqyjcWG0DFgLyPx1oyJIHmc1dj9/DgBV/IwA7wC+mkP9lE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735697154; c=relaxed/simple;
	bh=VOhLB2todeHDtbedcGN7bW6BuaBssqoiYOnM/Nqe4yU=;
	h=To:Subject:From:Message-Id:Date; b=amBfH3dbZVne66veBqwC5hfdlK5hNcrhq0sR9wu8Y/V5bo0mST0CNGpPSXg5DKdnqkzq2fUUWmR4t6lZy5hqgFFcfCMOF4vofPJ/eao51MavF5TAd28IbRuJY9e+c0FPDFxK1XaxkgvOjdLINU2sFly5uN7T79wsKKwgU7VgZtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q2DTqKE9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q2DTqKE9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3E7BC4CED2
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735697153;
	bh=VOhLB2todeHDtbedcGN7bW6BuaBssqoiYOnM/Nqe4yU=;
	h=To:Subject:From:Date:From;
	b=Q2DTqKE9PvZjCcSDdnwy1LfZTFybLnrE54OULEChK6keevBHCwctzMSiGI6bsrgJ5
	 P7dkVuEjfnVPrmaoKFXuiQ851Hkg6FrPT+68tWO1A77a4eRCw/pE+pecbpGJ1rgtKr
	 r67s79f9Yg1x0Y2LSyEYSNuC4aBIpivel4b+XRhPUQ9bSCsfa9HRFKY98yv8oL1XyB
	 MAZMYuBbLr7901KJTIWCNCuugRFpKKdgGgokN9t6MW60hb7K/Ja38Ew9wiutcAVsra
	 d3mKieUhredsQkA4ASgmu/75NueCWYHmEh6vt/c+nsq5HsZFc0r50xq2daaZH0xePC
	 EG78dWoTtFQfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BA89E77188
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173569715359.7665.8344243152611887324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83486203a7fc601464a386c0ce7c05b71c5d18a7aa31a8cfc051b22d8596cdfc
Date: Wed, 01 Jan 2025 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735697153
