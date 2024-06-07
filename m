Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CD45B64E
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 02:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717726043; cv=none; b=srWm8Zagk8W/JTVaI+NtCU4R4GpZcWNPessMfGp7fLGDaj7F0rE2THJm7ODpLJIx9kp/zn0iRvKiJkjxtaH5SSnZilGz3ZDh9nf8x+2l2Snd0A5KfXsrdMaREJIF6lsybmHpxOFbzh0RxWQqq4byZ6l4RQLXnBFNwtAcXpM3flE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717726043; c=relaxed/simple;
	bh=nKzvf1Qb4GL/j1dHHYFDXE/fF4bqwMjfQ1wn2RmLen8=;
	h=To:Subject:From:Message-Id:Date; b=oIGzQox5KAwXZHDLLrzITNJTy9/GsuQrtxhcn4DcvJQ0SsNHM/5W12HHU5zhrMNCQ1qJ00H6s01n4yvDbyuUuo6Sf4UoWzBBfSwZK7Npaz2H+/3tHTLd2mzdYt0mMY++KjVzHrYiPEh+VsCh4uWb95UjJqypnUAeN9/EDCJ75bA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WAj7MWMC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WAj7MWMC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE31FC2BD10
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 02:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717726042;
	bh=nKzvf1Qb4GL/j1dHHYFDXE/fF4bqwMjfQ1wn2RmLen8=;
	h=To:Subject:From:Date:From;
	b=WAj7MWMCiGqS9Uvi8iNDmt/MX4YMn5LD4F1i49kbsdtSZTCsaGExEHlKotLHFjUPd
	 Tl7B+frwl5u2jbDsUEB5Pwyj1Gp55OnQ7Gor8VPzlZqKaAQ4JegBtueZ+72jGbd9lp
	 V0njurEt+eZujvbpgRVEv///ZvKW7YVn+J+iQfgzJKeH8BDONuXuV3mKC1TF9J2LCU
	 4QRtwMEgGHdsz+AVhF6XK5j50cKAzZb9Ppl/2cQf1SHoKeCdvytbiYayRJ11Fvee8q
	 wbtcD+EDzZcF7ZasRr+ZPJlCNeWTKd4oQtdMCZpCAxidPHxrPyT+XCDqZchs1Ev96c
	 zq2iHWOvWKpFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C561CC27C65
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 02:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171772604279.30919.8987178898949535103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fb09e390ad4a8140d75905b94fb3fddb4755b24307ec05a076969e69797c0a3
Date: Fri, 07 Jun 2024 02:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717726042
