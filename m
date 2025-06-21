Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F99214B06C
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750533594; cv=none; b=U/8Oho10kLjbX+rmqEqFwO8MTXefTkB8NHX5nzekO/LDtG/AitEtBzuqPQuSxhKvUWObkOlb/sTQSEXxpMjG8bjqu3l6fDofFzNryv9Tl18nqKct/Yg78fRIzijpjwgsbRa7h6CAL9OEzFYNPM1lrk1l4kvgR/8kABy8sYa4XQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750533594; c=relaxed/simple;
	bh=mgLly88U9Qa/blNd5ECUz0TXvg7Aut46jZxxJGTk8m0=;
	h=To:Subject:From:Message-Id:Date; b=axS1nnmPTveQXoHIG+iJhf/ZsAr16qY0SHq4pWAdQzwKZCj8ZZ7Gx+BZ4KL2iHHlI6kGuwepOPoOsvUVG7eaYtAR/zpGar0SqgG/LjCN6F7uABmJr3UkY7PxGWUrxfNNLG+f7iBObSR3KWvwVbBdiGuh/t8fBRevaJXoLplJHE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kk9k6SCB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kk9k6SCB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB8E5C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750533593;
	bh=mgLly88U9Qa/blNd5ECUz0TXvg7Aut46jZxxJGTk8m0=;
	h=To:Subject:From:Date:From;
	b=Kk9k6SCBc+2JZBhS/bVKdhxA+YmN4PWyNu5JrGx0iPUxpR+GdFE8eyn/5dBE5Ko9U
	 N1U7mw6gHQKBXgSeAW588Xzh+F7vUwQInMjV/DJty2XFHtfM5ngu6lS5hrvX4mEFRy
	 eBcybmFnPGHVvZnx80GO5kP2s0Bjb+EA1RpMvODzzWgs1730uG4p6ASoMylqSCyn//
	 X7Ek0XEoLb8+VeMdH1sOiuJyhVxM1mwr+0qY2Wq0C4PcnQMU11ZBXQgXwURmxSHTOV
	 Se+pnxx/EhghOa5STQz4eBSDrJ4XgBqGobmJ/kwxTHrLHyltS0CBs3+p+iauQn+mvN
	 Ho0ZSrPs99iZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9102CC71157
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175053359357.27001.11205192503635706488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1482c4aac7347297e8bf6aa9c80ceba4d4c18a91b6793a55907e7078f4482c6e
Date: Sat, 21 Jun 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750533593
