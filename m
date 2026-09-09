Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5101A4A13A4
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788957034; cv=none; b=MBPQXBsyHfI43cL5MSb+h2NFlj5Z7sKNtuO1/WuaRlBnlT3NBFlkMIcsz1L7SdYlOiS+rXWt1P4y5IOMp7tjRRf1U2nM+D2afc2ksodzum/Pzy6Y9sbnGqBF197Q4HEjraJ4qDKCJEaAG01LZUC0XeSU8XgwwDgusRZBrgqhL5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788957034; c=relaxed/simple;
	bh=J2NijY3iJt7ud0J/QUoOWsDMdVwZLubaxryaZDq7dck=;
	h=To:Subject:From:Message-Id:Date; b=PuVoBe079BE2gAgLvwFjoCGygPEM9qA5aIvIdtF1fAuoMolkK6hn+pofVuoa/kQgZXVLI3/NvJiJLB2JOB6KYKddBjfgGB4OHqc+pI55eKXgf8S8rbynyz6ZDv4LmG4fktFk2gS3b8hDE32OqY5zK9cDdlnt1CEVwB3QRpQ4Alk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rz3TdzJT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rz3TdzJT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2C19C2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788957033;
	bh=J2NijY3iJt7ud0J/QUoOWsDMdVwZLubaxryaZDq7dck=;
	h=To:Subject:From:Date:From;
	b=rz3TdzJT4bGIFw/vpLAEwAIJsuuq32nZ2FMsXXlug3zvXSSaw2nXCPEPgj8FlqDDr
	 +25dIPWiwQl/6+SkwybfJbXPqnaVwODwxiMq4ckQH23avGEbkaJt5LDhMLamNnZ/Rt
	 QUNLxz2C9rng1bQNl6w3HA4tbFnRCDuK/81jtqBiWzn47X7MqoJgTKn3atxK3UVm1q
	 LH72p8N6Fgc7hgFZl1+bnXjRbAtAZ1WtzxYp9/kARJw6mdD5MK/kN253bgKp3ow4Sz
	 7F37QFGhNKVft7YWBc+eaYoTUcYRjip8IN1oiJf0dgrhzAUzNtAGqaUtpmtbXiy1VS
	 Vb97w9qDlyRGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF89C79FAD
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178895703369.1642.18417428517816805644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bf40b67ef45f91c3a12bf629d9a0121fe3363675583bdcbc5889b8ffbfc237e
Date: Wed, 09 Sep 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788957033
