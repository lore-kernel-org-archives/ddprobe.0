Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 780FD43ACD
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 04:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714969343; cv=none; b=TfX74dMQYffW1zKEGjoz1asHfUPT1IR45DxCv3X58ikR7FjM7CBgwQnth5UQdTOAAPYYI9SnGS4/1EB7+FrjlekV2v//2uoXB2RGDttGsq2CXw6ug1x9FgeF/a86VpciP8p0WM/5/Mw2mn/mtg7rAi1QYQ5JRwpsDt17Sv+4oXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714969343; c=relaxed/simple;
	bh=4xdaIQttFgtpFPBVNEiqQXnOaSvUt3Wm9/RStwg/Gqg=;
	h=To:Subject:From:Message-Id:Date; b=Gm3l2ljuAzvTGScjWMEUl11cgnvSn+JUxkt9/9Bdvmhrh3dcMKGH6sXK0YHjXyizXPHfRN3JRudtfqu5LrEmekUxgAgwxmMFISk+TvQBZbIIUdaKdZ68fvisUzD2JTPh4EnGmqLJEwgaZCAIHeYbyffAJc0XAIFCqMWtsavkPgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hBh/Mk8O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hBh/Mk8O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3116C116B1
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 04:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714969342;
	bh=4xdaIQttFgtpFPBVNEiqQXnOaSvUt3Wm9/RStwg/Gqg=;
	h=To:Subject:From:Date:From;
	b=hBh/Mk8O9VjaELvMZd37bDuBC0MRDDszbVPX2Rbob8o5BrEhwKFECAxkI8CZnZQmc
	 oJwnLT9UyvqLnAkXXNZoOvG6Ay2ltmB77lnrMsNzltd6sPopjS6vgXrAsbDpzjX0kD
	 gUHXOvLZfLsl2s/UeMzrZ+rJeCxZEFrnl37AqLCcR8MYIHQPDU2q4dGw75MARSa+eb
	 QrVNv9d3gUzUdHE+STfO22nohWuLD0e5SU0uHv++X5HmW+qwOcjFLzk6N8DrjD7BG7
	 qOpyvwHoLO7yQTwOWP7dMVvPAelREGiqD0BNDArgdKIQBdpH30EdKUV6DCXxKyD6hH
	 CJ9gH06HP0H8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCE14C4345F
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 04:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171496934280.29095.9026127528476943311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 375cf4e8c5e44477ef0eb3369652d305f3334d6bf3b5bee4a77b0ae38e34740f
Date: Mon, 06 May 2024 04:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714969342
