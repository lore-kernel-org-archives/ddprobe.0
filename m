Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 464043815D9
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 12:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784463514; cv=none; b=caIt/kuD9AiW7lIH5FbdBpW4DmnjAbwFMPpDUeRzQqTD3HA4A+KhVVRIp/zvhykSOq807g01HWaPzPJ3NlOu70YhBWjarXYXQsin4BtplxmeTRHWsFm48KrKyQxbDV/eEIoAKiHFsBB4tbu7ySRLOLGEb8hHA8oKkEbophKr7rE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784463514; c=relaxed/simple;
	bh=a+SuIf1Yn7u+aOxfH4gogM98JdEmXu/1SXYXrr8foqg=;
	h=To:Subject:From:Message-Id:Date; b=I6TtPzgXysnvlMkwiiQtIyejfLY0v6vKzGIFFXtqAYnlJ1t83rCWLuqVVDYcN6rxUWgC3+lK02nlV3oMCJ4uvi+W/VX2u606Utz3Ea7u4RvU8oY0LWwSChy3J64UXKZjTIRrOtzLDoT87F42ojzcUBL3EK7j/5hyuErWUxsYl5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ADrJug7j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ADrJug7j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D014CC19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 12:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784463513;
	bh=a+SuIf1Yn7u+aOxfH4gogM98JdEmXu/1SXYXrr8foqg=;
	h=To:Subject:From:Date:From;
	b=ADrJug7jKYb86XcdUHQfoSn5PIkd7ImfHoRYAG2GvyIPcJzUnABl+SQAlHutfyF/q
	 BXIeWkmClpo0ae1fYzdeTu2x+n/hjtWhXhAk3R+AYpF2zmrl0WpGHuOCxeXYDKyOvP
	 PvRo+qRAHyTyguY8jY7UuAXW/pfwkmsbO2AFzriftwCc3aBicqoSNhzO390fPiAGts
	 i+KJJ9OiJVFtg4GxkH4sIOEMOVuGAT+22rpkWLfG/DMv0Kk0ylqAGLT6TLVlK8oQ1O
	 nb0w/Mh4EQwLX/c3Q3THf8TuYHVojfmp4/VOEIzp03C5GeMts3VIYdBDr57C8hXy4F
	 MtXPVaVaYgMWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE0E9C44512
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 12:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178446351368.30165.16023593982563630431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f99e56116ff97d8158be80539f05ec9e24c2546f611716d119a1e59e8f59d74f
Date: Sun, 19 Jul 2026 12:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784463513
