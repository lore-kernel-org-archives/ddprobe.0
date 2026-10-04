Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52E0233998
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791084634; cv=none; b=dMM5H7V07NynVZ9tUgco5WSzTARvv9zuyLJv4Heuz0dhlvULGBdRA0PE9cthra0NIt1Aq+Rvq3e3XDhvY/juKAT4e5Nft42syc03/34g9GmTKHstxMeDsY2akQRDoO9N7Mt7GO65IaR4MQiuVZ9/R0Pt5znY2MHSo8WoI4la9Yk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791084634; c=relaxed/simple;
	bh=s41mu5qfwKbppqgZMdhcX34jbjISDxWf8bqW2vNvilI=;
	h=To:Subject:From:Message-Id:Date; b=OxMVfhvoGkrHNWfT9GJx9pDCm3m7/FkMxbOTmz8c0mjllQnsIWx9BfYoTrmpqZvX6PR+vecIvUXkpOFyG0TDMgioaatSVZQyD5ixXdeVBF8X6VNpKz0tNdV6R72KhDXCzutgRs61K292eNqdSX/6V75Sr/dPoQ3rrzJh7SAn63E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WYu5UrsK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WYu5UrsK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D89E7C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791084633;
	bh=s41mu5qfwKbppqgZMdhcX34jbjISDxWf8bqW2vNvilI=;
	h=To:Subject:From:Date:From;
	b=WYu5UrsKAMpx+h8H/fp+8QlFRWi3y76O2r5X2gAK9dwORspnh/FOAULy7kY8KiwIJ
	 DEGrK7AV/7bdjR2m2gQMtK2McleBxvYry9vd4RhpkBRMGz5RYvXQ+SeSj7nn0p7bWF
	 myj/ZSMYT7oGH5VIgry4oAjM6ylQF6DeyEqqlWuWJjzziJE0/RF+ZVJ+qHQUqCETr7
	 99DxbeyFlzpzlIAy3NCUdXACpmHqIstHMncF0+Ft3lmDF3BlLX+V4Dd6GpSDX+/Nxv
	 K7A0A0PCYb2tVPiL76V6EnOibaCT0sEHyxYO1fEzspBRDhhrmTgZDWwCjZ3NfYQIj2
	 n3EZMAKaydSlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B35D9CA5FCE
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179108463370.20152.6481044659161481622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b58fe6b05ecd268017a6f7fb68ac2ef7ce888532d1b7ba1e8fd27cedf98fa36
Date: Sun, 04 Oct 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791084633
