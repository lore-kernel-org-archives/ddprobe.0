Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21355227B8E
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751654394; cv=none; b=OzXQ/+mdmVo90yr5M6+XNmctMdynwrOeBwbhz6+K/4X1zmdMOh5avyDfyjwHQSuXC7u4CdbsmNw2b3nQruK+jDunnDvRaVX7ZDPbY8ZlRx6dUSjILT5fp+GSGNgdC+V3b1xe1kg3MuajcWDLy/LEeebEEmEy36HAp45XfBt4/Jk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751654394; c=relaxed/simple;
	bh=Klut1O51M0jVhUu1B/qHo7QvBt5Sug4ul4u0QAz9SEo=;
	h=To:Subject:From:Message-Id:Date; b=Wh9nKPztIdt0iVK7E7kXkwzczgUim/FFbJsqSWYNG9kTx9EasoiRYPIi9psOTekekdlQ87Eb+gs9+cCfS19h2wqJANjQfBZjr8VClqjTVxItCPvrzCUf4+nOWn4466W3aBBrX68dVMEtIB+m1AWwCzFhQUkPCInCSZ/cTYdZec0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oI/3udEZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oI/3udEZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0993C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751654393;
	bh=Klut1O51M0jVhUu1B/qHo7QvBt5Sug4ul4u0QAz9SEo=;
	h=To:Subject:From:Date:From;
	b=oI/3udEZ5XCySd5xXotGvfY3ZX9j09Fc5TuUEfGNzhS0upaLo/5ddJMxYkzoTXyGJ
	 efsCy5HZSzDA2LDgu5tP4hj5NWa7sFT5YseI9sdyjPgAyFhRYz+kmjOtjM7xpHwrYb
	 rMQEVX3YzCWPxw6xgsdTTZR4emqXFnt4U0dJinbvPw+EeB8vtUrWkFgplEtuYAiww0
	 8IpVCnorhcngYi9tWpB3C6+hebZ7EMnFUgqv8oiM2zIBIQXx/Xq0GWMQ6Sr+807wZZ
	 XA5RAV2DO6vIg2lu2xJidabeCd9GBK5BVv3C+V2ihkvnqHbsdF1aQo7k8wZ//KRPgc
	 74vJMKGPce8OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F31AC8303D
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175165439357.28357.16448035693072318248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbcd869ce4696ac2dd49957b94e160ffc6af4b95ff0f177c9fdbefef19a0fdf7
Date: Fri, 04 Jul 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751654393
