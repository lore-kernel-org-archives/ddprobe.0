Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6457A2EEE76
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789858834; cv=none; b=lpBBUaidKBOY124F+q2MEMK6P3RPI2UVm/INB0YuoqQYkkLeTimdr1OzRdKQOT5LIo9B9KFKUvTafRBFocwhFBS+QfUUCWKlFbfBaS5cmw+L+Fl16Q4+aDDCVpIKJAQyuWNCd4IzujQsAcwGRxLaQJNtatMnXk0q0wXvoNVM6fA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789858834; c=relaxed/simple;
	bh=Wd5SPeIg+wEYir5xU6pzeoFXmycIjFKPfC5QKzR0yzc=;
	h=To:Subject:From:Message-Id:Date; b=FvCGjyIi68gfRnhp6AhyW2FXpnS4LaA+ajpeqKjOgNkCiyiZyu7g4mqia2h4+hYybNz7W1P9ZSRRYYEJnJvWVFlYrR1k1+TQtOIpUs9XjHmXozp3LkbHzWYMSxEx8Vuu94FgMJa1L2IlRdabg8aMbLGlCCRRd5l2IFRuVi9VLdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dHvejjih; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dHvejjih"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB3CFC2BCC7
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789858833;
	bh=Wd5SPeIg+wEYir5xU6pzeoFXmycIjFKPfC5QKzR0yzc=;
	h=To:Subject:From:Date:From;
	b=dHvejjih+Bgj+M6lxOIhUfgKkpqD5C3H7jEx+TiRH5botT/xJYHukSPEIuUSTLKnI
	 1QcWlbEepRgxQU7Uz3uSoKjSZ+Zd2O+suyL9Dw2B5m+VLY+dAqWKSAndFgC8SunhDG
	 U/SbJyYlU4p2xjZl+5A1ZGmIF6ZmzXrs9QKCo/vO9rwwiPWfGjmFRNWDp+jQhAyTB6
	 Nc5y6mW5FCjZj2eNGL7OqNJUD7Er4R6whdtvrg+f0GwXUztMgGHQuDxI80H1fAdhts
	 bsIZ0r2Xz40FZqE0fSjQ5NnNMWetsppj7Q74KXy5ccyQtmLDQgInsnXyVkmnqqNpf+
	 3asC4/c83vvkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A91BEC982CC
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178985883368.7453.13482828156727933764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 097b559d04609fc07af631dcea03b0b92659854443592e1ce718747b0426203a
Date: Sat, 19 Sep 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789858833
