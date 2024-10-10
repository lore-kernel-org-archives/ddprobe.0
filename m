Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15FA929AF
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728565554; cv=none; b=ZXmLXwc+sJDurRO7fZLyLAjOEONgL8b+ydfiZZRLo0myZYOYgVM6OD4xge+2xbel90YojpRGf5mm/4PqnU124sh9HP+bsswDalyVLgQ8MPz6/wW2Gogw26W3eH3nk2J7n4qiIJ+Q4ckVvrXjvOS0UW9QD5PZSIwoLFtt4hsfN74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728565554; c=relaxed/simple;
	bh=Q1i5VYk4PMS3B3kLsNYtSxZK0jHsIYktuP0NSuAptj4=;
	h=To:Subject:From:Message-Id:Date; b=HglY25eavTx6RKfOnMkVoEdncPPqJ2vBS0HVxMX3K1gTZKmVl52CjUnk5ySajOF2aRmasgvKzr27L5JeqfC+xSE1I/ZT9QmL9KS5DR5/qd7lCyLQL+eXmrDjIR0Ugh8YZHaZCSwvrFLSnS7vl5uGETnVME2Pu9bHh3pNK9zKYc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XS0+AIvf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XS0+AIvf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A828DC4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728565553;
	bh=Q1i5VYk4PMS3B3kLsNYtSxZK0jHsIYktuP0NSuAptj4=;
	h=To:Subject:From:Date:From;
	b=XS0+AIvfHQ/+BVPJuvkayqv/8oh6l+XNF2dJzdfCxY+C+M340t0ravlTO3ZHLHNj+
	 IzuXfwbbDNIPEfTbD0Le/QALlGLpMuoGrcGhUbFOzWmdnAc7aMLMlxe6qNmT/dBOvz
	 cSQ9eEtyxzNH8TB8Av0L9TM4zlwYtXpyXskwilop93fduX74Fzcy9WsEQmR1+SulYX
	 3O+c+LO6izs+bQETRqhheoVagP6BJTDEj9Hzt46XQ1CHnfNt2LG5x3pTfp/37tfymG
	 2sAxpnaIQZvi1ZYD2RBuKDzE0v+fm0wRoMlRe/bhuBxip0AVWrRf6z+M5tOLtk3LmQ
	 s+ekExImN7C0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9262BCF11F0
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172856555359.30265.10467346724683088116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c434b99437e93919066b77ee08e6bac44061e8fcc0cb49351385a759e7641f6
Date: Thu, 10 Oct 2024 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728565553
