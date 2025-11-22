Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B106299923
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 11:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763812314; cv=none; b=t6nv7AA1j/h6gy8s/G3CJvsFp4ouCVTD1Ha2AWrwhtuJHjlWL+8qqFvimf4g9zosuO0Tk8lIjoz5xTc+90xhWPZrvb1rpgl9Y5DQ7C+6B6QCbJEmk2LtLSy8vxX6DxiXvXdUVz6AMpBslMUJ1gp2UAsssDhN/M7aYk/ZD4jwPYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763812314; c=relaxed/simple;
	bh=WKaVKd6exjYfZuzGM6w12VkhMqMnOJ+XX0MzqG3tJ8I=;
	h=To:Subject:From:Message-Id:Date; b=k2Av+NS67A7J0o/TvDiWlo2w25s6VIs25HjHhRumKIj/5zR8Qz84eBS92co/tQtsgm0JJzRuKPOQ1Z+MF2cq9i3hRI8+M83evL8wq6j5frU/dOSBlpIJjjW/i6gY8LYGBrkBsUK0/bHCtmwhicyeXxMKrJtKeyURcSG1CilaXqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kcH3ASN5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kcH3ASN5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D6EC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 11:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763812313;
	bh=WKaVKd6exjYfZuzGM6w12VkhMqMnOJ+XX0MzqG3tJ8I=;
	h=To:Subject:From:Date:From;
	b=kcH3ASN5Uc7bZmlMvul+DbWWQFGURfJJyBTJiIVgq0mo0AI9p8walr1vwZypryGtP
	 Jv4qub1yp1TGobVqPZv7MpaxjEIdRy3ICvpitUWxIRNfRI252Am98VDAzbUhUlrXXo
	 If4q+uA36MO8h8IjX9+wODG16t0ccHDGiW0m6uc9nHwAmMnBpgLOL1Gan48hZDy8rF
	 S4duwEyrETG6M7yZ9MwXlzF5wn9skegVmR/FtNMdaOa7innYzx2R6/T45cwhDzwDhC
	 qyT2Ueyo6zFKYdOGHa/QII0Wy5Xk5AFVEAFfKjK1NJq6ggazUfiCJ2jYgaxRNwHKUD
	 5LhliWyVmnB2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97136CFC526
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 11:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176381231358.18638.9673521681640932233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44d7dbacf6ea344b795ff48c1dfc1d50ae9e04be23c9bcc53ba09e6668a38e58
Date: Sat, 22 Nov 2025 11:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763812313
