Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32BA6372
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748998194; cv=none; b=OSsNSZ4ahXW0LMWC7BC1sV5Xnr+SMDk3vDdofuBM4GitRQTS7bN400XneVXx6VLyzkO1vle0S9KRvw+T+b1Be3jPIDhUL4VUQXs0f5lJjswKUbswpfdYlfp/i4xlKDAilnINoXLXOb1VuqsYMT+fp0PEEmppHFudmjubRyGXIU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748998194; c=relaxed/simple;
	bh=6jJezGA4In3EMfVmqbw/mp6rpYmKvwi2oEYz0qbZv3o=;
	h=To:Subject:From:Message-Id:Date; b=OAGbcv8S7XJCNvGvXoU32rJ6ZpVbEU1PjSbuwVQ7jm3T/o5p+WsxWex6G5O7EUO8CrFjQPgIQiGA6br0t6xJeZzbJiK7grKayBeXxBPbWyQRdyBUo8i2GYlE3HXLXP3Pw7HaEj1VtnTmiAh9pE5sKf1OTNIGLPlRLE4IoBhafu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RA0hgfMV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RA0hgfMV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A908CC4CEED
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748998193;
	bh=6jJezGA4In3EMfVmqbw/mp6rpYmKvwi2oEYz0qbZv3o=;
	h=To:Subject:From:Date:From;
	b=RA0hgfMVPq8CSDmjFFZ8HRq7XNqV2Wz7QaBG61JUVWFuMXFaoyto+4OrQ3urph+6e
	 S4xSL1X3SIpi7YWs1bUgUiDg0tCt1i4nKvOMW+NsU7VAi6k883RE48z+fvF1a4DqsP
	 fZZwNS8aE5zj/OKv+Vo9ibKQxtZQ3wG1d0N9BaD6IOMbDj9VTxiJTs/rkeXcn5S/kl
	 ekccv58UdvXnWzUow4reYQsUjhU2n/0a6IDH2mYa66Z1uBnOXh1gaW96DQh4hine10
	 s6TUdX+I3i9HhPHa244SvJ3sjGmDk8UwZ6XmCxxRB8IRIycl/NQmG/QLiRf9X9q5d9
	 qqNTO90FeLDVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96164C5AE59
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174899819359.19893.584558933501032352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df7d6cbc361dd888a5b4f36d63602af209fdcedf2d22b94184bcfd12d1a4289b
Date: Wed, 04 Jun 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748998193
