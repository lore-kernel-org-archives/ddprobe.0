Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CE36226863
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 20:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772570094; cv=none; b=ivT7mdvPphmVj9epK0up3hSK+oMNSq01JFP15CrS7HC407YAlg7l2g2laecHhUPwiPmlqDi/LuFvR/s63JQaj7jGYdeUKAmHuFZo7Bv2GJJgL5NV3vmvW+BJ7WAnDSGAxdlQFfUfn8U8TXzKcBSDvz7qMCeOVQAOj61FkqZlPXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772570094; c=relaxed/simple;
	bh=mrjEgcd6w7MZ2sX3Xyp6+1LsnQ0FGutnbFi3YU1Eedk=;
	h=To:Subject:From:Message-Id:Date; b=ErETVnlwA3Yz3fWxGUab1HIGYp6fkRi2lreoxXprgKBl3ZAHVVxJZv3Lx6PUlGpuYzlrUPOMh85Nnd2K+KHNo50Th7JFnT9I+SFyJEXbiVu/QGHOAGrrzbgUQd9bImMb5Xg2j1J7jhDj8d3tfbGa+e9LtZ2SSqXIukbARvTHQNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e8AQoKa7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e8AQoKa7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3841C116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 20:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772570093;
	bh=mrjEgcd6w7MZ2sX3Xyp6+1LsnQ0FGutnbFi3YU1Eedk=;
	h=To:Subject:From:Date:From;
	b=e8AQoKa7WHfr0gJmwioqfHpUFcMiq5IUwG0lOrmupbmhqbA/rFLftkkI06j0JkcTO
	 ErybbvcbB8i3bns4OH8MSqBUvTrFKe4L/9KZUbxxNJYZL9hjw+jtg/Vw0UOm/X8fIY
	 PGRoJ61Qrgvj/i/TQdBycIddK2Scw8Zldjz3FBI362DVkkISZ2lQBdAbKPiii1WIQp
	 KQ+0RrifK//j+Zp7JTZmLtlSfx+R8/9g2YtiEKvq5ooeuRsmrqWT9yMlh5x6pK2tp6
	 Pt+9hyzsW8si5kCJ1KrqR60h1iCDLlU2zXA5FYUJGWTAltTApZKcjMqNFj0diOjAIb
	 vf8zhf6/HfcXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFB93EDEBF0
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 20:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177257009374.15281.11528037235783221602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 800f1dc343971dd1d84bf23f27aa2d36b81ac39b77711383b09ed39bc407872a
Date: Tue, 03 Mar 2026 20:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772570093
