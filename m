Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6839851C356
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788987634; cv=none; b=h27e/J1DI94espzHLS7gfPMR0HmFdJAsj0sSxzMvszpsz8kJVHYUHtMsBq6JQ0TcSMSWiqP5dW49dCcjwG4RBMfyylAD6iQQSMVbzIbjpbDDOGETAWdZyUegiwqV/Mqiox8z8cc+akpQ+JTUWVR/NcUkOTttL74g9tMLxshyupM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788987634; c=relaxed/simple;
	bh=fuTUxltAUdeP1QHDjVJdTOXZDHtI9QJNJ+omQT0W/10=;
	h=To:Subject:From:Message-Id:Date; b=pYZQFtVb9n5smYT1wQENlgGiwYcjsHkn3yr1uLtxdxBi+0CMCKaDrDCf3UiUUFCB01VJOcVzVEI6hby8ufhIXLoPbBgf4beJrO99vRNju1TNI2w9PFYL7N8kGR6fCX06PRoLxz2nKoWtVkzlGdTSog1ovqJeDxelM9t3aQs0qpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BXeUmk12; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BXeUmk12"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9591C2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788987633;
	bh=fuTUxltAUdeP1QHDjVJdTOXZDHtI9QJNJ+omQT0W/10=;
	h=To:Subject:From:Date:From;
	b=BXeUmk121Wu7TjM2/OY/KZigdQJ7MlTDZ8vkCLFu/52Ricjmdye+LGPUNeo689EnR
	 zlwihBicnCWaXiX/VY/polm8icYfVcKDLiL7BhMXerYgxO6AFAi16ni+RxRDEoiRFN
	 b0vA2izRoseV0PYYyeSGSTAryjr92h4ZqUBJaRp7ahAjmLz2f080mQ4sNreQOuwJWh
	 urjHPZhodFBVgu4GGL3l07ljen9ncZWqktBvPbx+8HouSvkcW/egRVL+OoM3lkf6LA
	 XhnXkxcUvpxPtRI9fUhL+GPwcRO3W2fO+hwdH+z6/+OCTtimDCUACJO0EEh1bEwv9U
	 ZPLO1RKQBafIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1D72C79FB6
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178898763371.21568.4577088878053636133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d05e3b82ee73a11365b2122268205c354e10d01b1aa17f6abd6b101b658e62b1
Date: Wed, 09 Sep 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788987633
