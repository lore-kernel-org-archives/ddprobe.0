Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58DBD3C3F42
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787242834; cv=none; b=kfLLmZU0sebH1bDTm93OqXSDl8SxUbeQduC/ZrDe6ePwdlaaRPyi/TKAMsgJ8czUQ85dHMTO0j21uxRgF8tvYGoGpmrQyyhctdEHwF5Esorri4RmEWgz++lxaSHQY+OoLq9OA9Hp6TwPcOLm7jxfq4kVl5H2AkBwsdaSbt+41og=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787242834; c=relaxed/simple;
	bh=uVdl6MLeYMAQtBSVhqKQJJEByFI0hKYfMR0GsEzGKrQ=;
	h=To:Subject:From:Message-Id:Date; b=c3Mi1FSxfhVkv6w2rN8NDJ7FcPelCD3prgnpukP5wN/hEhIu5TgW25xw8MriaKLtUbHaZ2QNSqvP9kfrGG+4R9YCksN5VU5JJzVckZJWw/Hpocg62ErG8pafjmvHCItCbNIzrAp8kXSjhkXwS7UzlPXKcoaYcyQj+TCrbaJkXMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y44HXLJy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y44HXLJy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3F0AC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787242833;
	bh=uVdl6MLeYMAQtBSVhqKQJJEByFI0hKYfMR0GsEzGKrQ=;
	h=To:Subject:From:Date:From;
	b=Y44HXLJyO2RI/REqqWk0+SvLwscTMmk4SJWTuNePIPfKID91EtKUBCVFol2jQ2Rdx
	 O8HqZZpwdicfOgCpXrjx+9pqu7lLrkF45bu5CCibgSJ2vv/JgqRIuWMXcQiIeh+jvj
	 ABXwp4v7MDO1g1VSe2EUjyxvYzcB3fv4d0aD4P5Kaupm7I9fNIEk96gkUmJRKISx3H
	 U+Ge9Z0pwoXAnFzw7VFI/Wfm1cB/AMQDTGgajz+hBAap3EWuuP7IEHbvLXhJhCK1mN
	 AgpRftBH8/wy3pIH0xJUq4l59Zkct0ra/LPIp63rYYVOad7Md4iBI/MakHn4MeVuxG
	 vYQc5OAjtXESw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B68ADC5DF81
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178724283371.25455.3680063835483726335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc80840fb2758da3f3f2f3967c2e0e11d989b4f33b344aba2d1014edd0d1414a
Date: Thu, 20 Aug 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787242833
