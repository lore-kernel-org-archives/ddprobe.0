Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B344168487
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724220354; cv=none; b=E5StGJhcMUeB0UkiavR+ifRwdAUdBZVdN3kuajPivU8grlznAtMDCcoorqcOQw6QuU+OLjm8Usm3AeXCEW2qCaZ0zS4Xfei+m/7WmwZVMv2YYhUQJzJ7nSQafLz3J5jigIoGS8MILOyhzJbJ0kpOLIHB8s258nYdKr1lEUiemXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724220354; c=relaxed/simple;
	bh=7YEXCqTm7sPeVZ9RfEWDIwaTeyIxLyWoJGf3jNTzzGU=;
	h=To:Subject:From:Message-Id:Date; b=sEn2Jd2xVpSX17qs3gOPLEfkNXyguPsX5JTcBdRi2WEUQSShX8Ne24vn3fK8J8wZXfP1CuZW9a83AMoWd+TY8eRnTp3ANUrxWxbSfu8e7ta/1gsJBKReT7gCoaP21aD/Q3GSO0rTgERJwYfpIY+D9rGe3wrcmX/MEudOsqkwGUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lx6BOSYS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lx6BOSYS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD93FC32782
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724220353;
	bh=7YEXCqTm7sPeVZ9RfEWDIwaTeyIxLyWoJGf3jNTzzGU=;
	h=To:Subject:From:Date:From;
	b=lx6BOSYSRn7HtMDRrb+kKa1WGPVQTWNcWUa+INGmYHzbTyy7ah2EBfT7z9NutMFS9
	 48VDJ4TE7+c5Kj4LADpLowEUxwJ4DMExT+DwomMozi2KynCJBTsB23C7F4V6t7milP
	 vJmm4Gz3DrlubAjmaz/V4Qc7Nehs4S9hTo2oQXCdllx572Uy6DD0TSL2Lb2go6+hh0
	 cQPdz+cja7rFbABK3pdmc0+Taq7Rq7r6O3lCqDRJib17/7o6cZUOV6k32479NCnmcL
	 z4iZ2t1RQdoh42BO8EQsR5Qxelnvr7VYgCHalqj5ciQHB9hXCFjaqpuUFiRzUm0TjP
	 fmWxFWW0JRwpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96699C52D7C
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172422035360.25931.14173467586683642420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 869d944082f32bf85fa24abad9fe17d7d06ed167412aaa39d279b78a465f0660
Date: Wed, 21 Aug 2024 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724220353
