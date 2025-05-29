Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B69B28FF
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748477994; cv=none; b=cJ9gcm+EfgehIlIgO2S63pKqXt8jyspUlrRObqu+3W+NZ3THyLjTB9ALx6F6RTyB5Ccf61cjs1YI0h2orwjJMQh+QGoPOLI3/sr/VstfJMUDDG95CI765m06KJJ66KHmuMqU3LTGTEOE8tYf24AWHrei1qxsjruAlPtpvurDxxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748477994; c=relaxed/simple;
	bh=KASEtKCBRP5rSpqUUVuckEBRQhjr74P0HwJfvOOk7oM=;
	h=To:Subject:From:Message-Id:Date; b=TGjr9CXkJT2/JCAQDrUsJt9utnjGNTX9AOcohZgumBUSmUBF+Ene4rmegIft255WtAL06s65NikFau+Do2fcxhjBSYqfNrI9KBGAqm7E8plzwEbmMXKD+7BXX6jxBAcWrvutxQw+QJR6z/33DWgvbleEIm1EeIMNzUGnPT+wRG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BKLbTjYH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BKLbTjYH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E103C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748477993;
	bh=KASEtKCBRP5rSpqUUVuckEBRQhjr74P0HwJfvOOk7oM=;
	h=To:Subject:From:Date:From;
	b=BKLbTjYHSGUzxlBuY6DBbOYikWfy//MknW6tmCzT4RSF/U0X/TD1YUjlnYMVagKJo
	 23OjhM6KjksesaKR45rPsd/viU0lBIRW9q1g9qAS5GlPLiLx0KC3PLzieCxwElSGZN
	 YgbAOEyduPUCdrtVvwCVTiD9wYpQ8dVQ1npCDQPZ5RCUtd18X4jJlmqXOgTOUCPzex
	 seirpXdbFUawQtkdrBkkc53ZiqMn0LfXnmY7nCVs9Dcxt10BsTbxVOEStoqSMa6/sv
	 0F33OOz2m2R6rmheAOMmPTKKbZRF+FmmnpJCwJrEj/zEYNoS9dIF1pHJA2OgJtE/rw
	 MOcV9/Z3ehfcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F53EC3ABB2
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174847799357.32011.3648999957555758847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94ae9c4fa346d9e0bddc74625a733317b62d4c304644bd6bd4b544ca7468f3d3
Date: Thu, 29 May 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748477993
