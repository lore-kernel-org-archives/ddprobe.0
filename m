Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FC295BAF0
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753607994; cv=none; b=dIyzc5y22V73plbaaiR2FiNzZiEFrnVhpuOPl3HH16lYR7oOwKzl0kVURe+A2QWcOIZqTnyJLvcee1gP+ThakHoIGJqXRtDNjPiQmfDvyrh/HNUsx0Uni5vnTOW7Jqq5GTpAnwQpNAxF+y6kPPAF3BujG5WJpbV4WJslpNjfI0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753607994; c=relaxed/simple;
	bh=sxxjD+qE2BRTULNkPEYk6IEfppve/f1vELHpheS64XE=;
	h=To:Subject:From:Message-Id:Date; b=VwFxHwx7wtBfUCM4yS/eX/XiR7wrcAEEIpwWVNOE/uFbWgw5RsUyVZ7U8ZBCsdnwz9ERu4rysV1eT8/4cOUXSBuL6v9KwIdtV0szL6vUBSSFC/GUDtvPUnopstRa2t1JMffA6cubqNOmQyfFgJpiOaozMncchxkyJH8Ya6nFrew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PJnckLXV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PJnckLXV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6353C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753607993;
	bh=sxxjD+qE2BRTULNkPEYk6IEfppve/f1vELHpheS64XE=;
	h=To:Subject:From:Date:From;
	b=PJnckLXVao9vtqtphF4Aqifb1n5bwtZnQX+Xf6enwx0QitWKMz4Ygg4MBaD3q/pUu
	 kTZUwO9fT4OzIoYko+nWfGu/sJw5nnEHuFqjPwY2GQP9ny5rJB/B97nNptULbgODQo
	 0HJStUix46EIF6TOAsUTGVR3adZIZjbo0qWVEJlP1Qv0ciBmp2nAAvmxLicXbHDwUv
	 KBZz5mH7iNJ1PUQcqbbMgH9RW6q0tSY6kCgNbzsPp1LNp+0GRM6fslsrYh+dTtf1NQ
	 GwqS2kjwXSlwOUxzNweRa502tO74pi5MsxcMzXHZGxaNzyR1xfHuPsoqEei0I+suf8
	 oGHmDvQto1S8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926FAC87FCC
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175360799357.5674.8915491174563321707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb3a524103c2cea3157e3183b688c1fb8f9e33202654c14c96f801ffa0aa8c50
Date: Sun, 27 Jul 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753607993
