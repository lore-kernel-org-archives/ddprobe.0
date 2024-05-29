Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F9E910A35
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 04:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716958463; cv=none; b=gb3tHi8eWO61UaF9dasYoWp0iD1YRZ1Z+UeuaUSPvIXvDw0rlw4Rihc5gg23SuuZceLl4eXY1B600hk4ILc8BFY9vaxJK3M37RuOzwHYFZhUENyoIovFvZU3MKcK4ogpSmAjNRKNGI5bFmtrf6lJt/FqYm4DWOjtLCtl9H124eg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716958463; c=relaxed/simple;
	bh=I5WScpl82DYjtgiA4GZX5On1vMMvuPfZ4/rcqbvjHyU=;
	h=To:Subject:From:Message-Id:Date; b=t+KRBys/gN7wh/oo5takwl6JVP5TU6KmELsCl5IVfY68nBSks7o6vNbHvP1zM5KigJ5VhxhdIuJHGYtMeeL3Paf6cpAhE+ykequbVaewb9GG5bkpntMYYw7CB5dXdh9vOZM843sdW6WZC6lN1LE0djfsglmSjzau9X3fu2uVx18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nsnPCql8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nsnPCql8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E672AC2BD10
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 04:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716958462;
	bh=I5WScpl82DYjtgiA4GZX5On1vMMvuPfZ4/rcqbvjHyU=;
	h=To:Subject:From:Date:From;
	b=nsnPCql87C+miXn6nvBAqI81jGnt6Oj+zZkXb9OTX8xBd5DZfQ9oXjch+s7xc80VV
	 NFucG/DVmaHDJ7iuvccrDbaH7SY5E4EKURQO8J4Uxq6/wtrQTSqfaANlWqqWH8eGO9
	 UXK+OMk76VSsyM+LmnpiX5N+ujJ+/k3Wx5vVo0hKMc6TcAU+WYiXytti4naAA3VImc
	 FWE6MsmlRYSZ/Is82TpWbNN8JvwjnKfIOOWngn7Tv3bdYAe02PHTV6CuF+kZYIPBjm
	 G4G3ctNc8PFF50o8TkdE1CLXyBF2NQW8YD430zzBaTHVT11LxWqTENsp2/hnJAWl0v
	 EZ7vcPlJEMOYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF660C25B75
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 04:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171695846284.29945.8928716550192740556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7453d9a75cfde5b2ca5c4e4ed286637f49d59af99e9b6786b53db6d86f7a804e
Date: Wed, 29 May 2024 04:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716958462
