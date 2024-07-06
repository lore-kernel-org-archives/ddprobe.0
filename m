Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5586212D214
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 15:56:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720281383; cv=none; b=Hd2e/hR/oyU26LPaywMN2393IVEpfmUJ2NUc0wKhyttLuJAKCLrbxNukxzvyu2JIjOepv2yjtldO1EjbQaB+UN1PBT8ytQxZw4l3RlMOhWRAVG8yx6oDnvVoGDVz7QrM1r77hJsj78G2ymW3INfwxhrBIeoAaQJLwddje5Aq4hU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720281383; c=relaxed/simple;
	bh=DXSxdI4iX6u1SZg3sz45wTGdnENdjhh5twAdZpr5si8=;
	h=To:Subject:From:Message-Id:Date; b=CT0uxKptR8cBClQgDxrNjwzTZmk/PaBnpFRl8gfA8xF5r5ID9GIzXnx42GPHAPQaQ6fs45oD3X7Ig6MmdFqOXbkfVgD1TRfx4FEkv1bU6Tpi9CZnCZOgo0sdQCDuteTLorSJe5b/1W+d4KBXQyHShOUYJAZAi5pgZkL7HfMH07I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=alf5lr51; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="alf5lr51"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB909C2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 15:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720281382;
	bh=DXSxdI4iX6u1SZg3sz45wTGdnENdjhh5twAdZpr5si8=;
	h=To:Subject:From:Date:From;
	b=alf5lr51xbHTCYrx7Rpq2WmPCef4dfCKNWXyF8aicu+MnufEJRuXP6AwiDWH5ZKEJ
	 7nvkKeNYuW+lrxHzANWr+MAAGsJpDoIKG2DrveNfXtKKKoQzAE6vM1hDD26OIHhu0Q
	 zxefA8WXny7lIRJinqdWpBiVWcyFg2bb/q2IiuXuMVXhvIiocazasBetmDG2Dgo9HV
	 imWFV1tMrUUJw7VzxDzC5SblyhoqceEfeZw4+lhT3EOhR1cGNlUYKjK2fOuufxI6u3
	 5Y7WvFeKX1cjKfh+gWY0b/RvQu2b8SJbhjiVaGjVf1oE8NmU62brZBKoR8NnglLuaY
	 nrUa3q1j6I6XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD211C2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 15:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172028138276.27495.14944583588656757993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d024fef2f46513e19df30bedf0731d350a786882e310edaa720f05f194c8d5d9
Date: Sat, 06 Jul 2024 15:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720281382
