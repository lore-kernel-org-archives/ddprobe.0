Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2FE31386C9
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 21:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773092094; cv=none; b=uF75MTyGZ0ask7/KsEhzAf6ybKEbrbS9CAwU6f1/17wrJkO1eZFqzaOxSGz3qWzNQPVlx9mYEivyUNWhCMymqc0fVU5t8UexXUya6cY/Gysk44x9SO7qENsZPsbcK3CxGYp2d4EPB/+qVtgO02vr+UizOhXAuSpuExqCepn8tJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773092094; c=relaxed/simple;
	bh=gYrYkbRRGI2S5rvYhIRnlDhHfhhVvrE8xjsFR/s4TzM=;
	h=To:Subject:From:Message-Id:Date; b=JZ0ytfFwdXj8OQTNX+rl+bCGUk9Slu2i5kM8kSB9UkXECesVi86eiqKGc2P3lR5SNT97OSyNlsKwPVi/DE++Lj1uual4G3+d+cPH2BxcbsDzdlKhOE1om21EgVRWcuwbbotkBdNVH4WS/pj+UxJz53fNJHVp5sCeqYiUrulaquw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U64R5gYQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U64R5gYQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FA7C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 21:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773092093;
	bh=gYrYkbRRGI2S5rvYhIRnlDhHfhhVvrE8xjsFR/s4TzM=;
	h=To:Subject:From:Date:From;
	b=U64R5gYQ62B2MGkMAS5TrvJxKwVyVrRZus8bavZGcFyEPnguELeake+cY81tQ0p0R
	 vjbhkfgwwDU2fBB974fZfiSQhF5idAL8AQCn6GMn5kCJ8D1jPurjqIhKCP9jvH8l4j
	 kt1dXZFZvCwvDW2UuBudKEkLHTUpYmV7mvdN6tYpfYGUOKrXzf2F2PFR5hX03hmsoU
	 HC/YUTZxYRsZDIIcgmvT6off6ROAe5C6mT6AhFZHP9MIzQhZF+yYkpHm8iCfVhLYQX
	 9o04UAkTvbMEzqPRNhQOrrnrdd/aplrkab/PJrawEn2ZMXJyk4h5p1M8y0OB57Tw6j
	 w6N9g+0lJFMfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B9AFCA193
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 21:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177309209359.1913.13533682690561204331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9becdcf649fd92d228aab62f81369e97c49cf31895da9faadd35d17325bba47
Date: Mon, 09 Mar 2026 21:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773092093
