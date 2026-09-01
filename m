Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DF4F1F94F
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788221434; cv=none; b=iF99kVGMRLKVAqeQVA5yhOfZ7XIOaN2U02ljge/AJ1gPvfH0apjcQE2qySKyBRoaQDs/Tx0kcWd3FedaaC2E1XEEKXeL14Au8kLvc8PZsmgPdV0Kb0hM4+3IstY93/lwjv7q8y91t7I7bnNvU1aG8BPoWpN9Gdj+GJW7ITLa3GY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788221434; c=relaxed/simple;
	bh=f884TSaNEb1PuHJ/zOHPpyps9JPWOVPLhqvdbRmBs9E=;
	h=To:Subject:From:Message-Id:Date; b=OmYcKQTGLqOLa6KHqm9nlS0UxtBr3InjbFW58WAOavkGOX2tXMlvtpDPO5E/gE5YE0VTZsap036hVRC8MrIuAHWa7sQ3vLVhzbRplBrwiEex59NUF8A9inuRsI10D5Z4ErLLZc0/ZiQHr/Jl6is24w6VTWHK8vjbG26EzTMaTe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lKaNKiOY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lKaNKiOY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDB41C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788221433;
	bh=f884TSaNEb1PuHJ/zOHPpyps9JPWOVPLhqvdbRmBs9E=;
	h=To:Subject:From:Date:From;
	b=lKaNKiOYuVEos8o/fk8jzs82snenOQSUz+Djs/6wa4HYINWnLzu9+4zYipor6Offu
	 mFXvR8u79QbsGi2KsDvbPGa8ZpL1g6DpL08qFgJrGyN2sPRwj1xQrBiYShpapqzO89
	 a4dQdWHj7yzR8tJZ7XRV5JANEaKmcsmzblx35xB/W7fgfNgKKQcEbX3cyhpzXAZir0
	 m4KpG7RYOZfxxHBtPv1ChTuOXoXgrSIZschjAVo3tFnOmervkKBg8Sk35T7+CJLJ/6
	 3nNL0c7Zmrw5yjStq0JjqvM9yjRBz2dv5fMobQ3Hb8YKObVPSzWv/lOO+tFwkjRrec
	 X54mxSvxNX1jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA45FC61DFD
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178822143368.20160.1196345285626977618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90acf3051e2483176bc80d33993e1535647c8c04b10cdd6550bba4021c6db623
Date: Tue, 01 Sep 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788221433
