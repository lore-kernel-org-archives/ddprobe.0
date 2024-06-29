Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52CF62B9BE
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 12:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719664463; cv=none; b=KazkWSSS5jNMSkBOy1pkmp05bUqsrnYMGjKSnlZNgmsKrsEan/AbsrvTW4mawyi50K9ckqj/etDEjLoq5DYwJ0tONUeEgs+1yoeIJ54elgP0Y3o8bUM8Osh/9xpFHEqPtEWkWRyri2Mat5inzv+/Z8GSFu68lBZuqanLFBra7f0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719664463; c=relaxed/simple;
	bh=Bo6zGDhNhC8/yNZXm53EH55s11qvv5QbBsDr+RrdGVE=;
	h=To:Subject:From:Message-Id:Date; b=I8YvAeOOA/P64dTo0NYVZDOL4UI0mqDOb/HNauzmfOGyy8uq4eo434kZn263FFEkCyMMFjXTqd5mjclcQMMhrzbYKhSbbYX+IYzKzmmqodkVoa5MvpAitCyE+dij1rbRKNC4ir44ENm2DZRN5WY5DNOc8XM231edlHUDNAmqY6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oJCM5VJu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oJCM5VJu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3D40C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 12:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719664462;
	bh=Bo6zGDhNhC8/yNZXm53EH55s11qvv5QbBsDr+RrdGVE=;
	h=To:Subject:From:Date:From;
	b=oJCM5VJu81tudhJ0VsamPKdAn+8Jfw3aDN3qLGWorohhESiYkwkReKXaYKd6BPYeh
	 Oj677+64YkDU37re0v6Pqu+x2EMlH7nSzs76pz0Uf1dRpdlcFiavaarbBb+2eIEZ0t
	 R1+grtBL8kgCtdK7YMv7W4i4nm2l0Bm9sMcealvd/Rob+OY0JfGlYjSFfkKu+490ha
	 CI4g2qfvw2gsUBZZ5PN/LBmZ7BjGSM9/3kGeiPDSqnBGCmLWqwwiNfgaQ3I44V8I8Z
	 ipziHEf/cXF6DChGQ3KMSZB+Y17xKEmX5QOPl772HN1/zvqIiGSQXRbhUEuEwI1wql
	 Go49vvkaih70w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C11C3C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 12:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171966446276.1364.4465686086749104504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 047e1d0abc7a33e6fde649fb37a4782ac6fea4e6918f03264d621c2d58006155
Date: Sat, 29 Jun 2024 12:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719664462
