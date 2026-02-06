Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FB173EBF19
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 05:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770355434; cv=none; b=Vsn8xB65q9iEsr2tHWt3OvXaC4LsKkAqdVFyO1VTwnFm8DodILz1zWREGHoj4cJpVP8bipyRzdausj6rwVIW12s2iOhRqtYNFDQdOFtT27T1ES0FXAMpQtsleQ9JW4p4gmOpxz7WYd3Ih1NVlAIvteXw+BQidaVK++mHqkeXViY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770355434; c=relaxed/simple;
	bh=FmfXc3YdU/n7oWVPDkGyR/M1Y19HKZlDFvlLbpLjtZw=;
	h=To:Subject:From:Message-Id:Date; b=rFd1u96ON8SwLy3sSHkxAv449L3CHmSbkJpFLZmOgVdSQlBrfFI/BhDQ2VWG/KoTmrwNxfGQR3cAh3XyUEQpG72Ei1nOs6a9Z3NBejyjtDECHQ8tX4RTxXxx4SjmecKdP1j42JwRJgwDPAgEZMRCZFIfxYa8yt6A3nKk68g3oLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cSApXkRZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cSApXkRZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B875EC116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 05:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770355433;
	bh=FmfXc3YdU/n7oWVPDkGyR/M1Y19HKZlDFvlLbpLjtZw=;
	h=To:Subject:From:Date:From;
	b=cSApXkRZi6ThF3fysCM6vi9qg0UIaUsQ8vsY2Pm2Nj3oxspFXmfwZGR4NyuWJy1TP
	 6tQR3SCzeL7/f6Yxncj/WEJpq6PAxGY3nJYQvgESU3Vg+/YCrmc4XpFRuq/+jOqy36
	 Bjb28Nx4cETJLgXAMkZ9f9WV0WBRlWuhpTpVK8naCc7EFBVL9k+HB7foyLQ0fy3Maa
	 yYsXoBlG3mPNQX3uoRHKD12y7f0Vey59jrQnfpnRH/JgG7LjyB3yjBscMkQYenibRv
	 h89n/JUAfvHwn9yL7qNucu+CDudyTriCXZi2dzJ71AdSZV+V3lUhL82nVgF5pa3x/n
	 SDbSa+T2flZSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4C0EEB28C7
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 05:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177035543364.6782.13161808450989700211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0212fbda6d6c8685f738b06e986a51ecd73c829789b4ed22b12cb6fababb4b63
Date: Fri, 06 Feb 2026 05:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770355433
