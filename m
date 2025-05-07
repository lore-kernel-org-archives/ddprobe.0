Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 302F0C2FA
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746581394; cv=none; b=swjy8bsqTGwkQee4cKcylU4Nyx+SKtrrJdnuWEeeREMraeAVCbj5hfs73OIfibjjttoi9pPjcoZrtmlsd07VpYfbsWgVULnZgRmhOf1KqCjEFq4316Hw56dGX3fNJLrRfg/jjuNRbzJrM5Qqx+OOphHLhjKLSgHAqmeNvqHdh1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746581394; c=relaxed/simple;
	bh=rWD4mJcVm0rdT3htJQ/h+zQuMxUcMaU+kVknjYt4GJI=;
	h=To:Subject:From:Message-Id:Date; b=r4yYbEFdZjhpmEuPZmF2D5boznLKG4w+IWSTMJMwnNveqErYodOoJWYTtGBuNiQwQQ6KQUNsUNHoiRknmvgWeMq6kwqaV5MB/w89qjIdaX5EU3NZa+ih22ZSOc1FmWUUZ8K0mO8qFFXiIqo3dRd1ISWIacpujJC2m9czm8xYT+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jcrSBEOl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jcrSBEOl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CDBAC4CEEE
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746581393;
	bh=rWD4mJcVm0rdT3htJQ/h+zQuMxUcMaU+kVknjYt4GJI=;
	h=To:Subject:From:Date:From;
	b=jcrSBEOlBr+qHIc2Y9zqOMR50PH3Q367vIhbTHW1qDXPyULeugomWWpteWgIcxtPU
	 HZ4JD5lVcD/84O1jLtYeM5vW7dEMOiJDLsy68pGMqhphtjC0iYTuOr78ccbp+8RWCa
	 TGb9BbSDc30X/ro0qEOGGS52TvqaRw2SDqzVf6DrEZ8gBQGw0jDeHLxaNdowsnYKQJ
	 hOi0Da1wq6n97r0ZloYxeqRenQhScB5trGwEzBxdVMHeA5101rn9HlgzKb9i+wcdRz
	 +Av878w2SU5rqP4Duq7CGwf0Y5EAqpTv5EseDXtjpWLyxGjLt5hJYGNO+Tcy6BLAnM
	 s9J1DKmQFSu/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5CDC3ABBC
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174658139357.2401.9375769084173103930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ef6d48504143126eac35a4c8f49a5406f0ee1870ba610680c2b508065adcee0
Date: Wed, 07 May 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746581393
