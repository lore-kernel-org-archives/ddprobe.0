Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DB133AFD1B
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 20:10:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790107836; cv=none; b=jhQ53LoBVJ+LaIxeBu+xy5KM/2LtlPSsL+29podW8cWaS6qPw3bqn9sKQh2/p77Cs5SrJaYsy1YEYBn8QxhCC2i6P1hGm9nno60iKRej2MdwXINtiobAEZLtmvpkC+NGMzHXagHk5jsTVOR2Pf2Al4yrIJAp+Gx+SgdfTD5prOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790107836; c=relaxed/simple;
	bh=vfOh47QOUFplaWWyEQKjtDwNn9KY8NEnEviouK1PO7I=;
	h=To:Subject:From:Message-Id:Date; b=BHA5IJmly4dVEzbcGmujqUG2nQlFibJ4kIaTKbkPUj1mK0gMkkkuSaop6GJN8gq+KS6fA/WyIJcSHPG+MuvUrjPYEKLvgiOlzk9J16wiULJDwAwsRbY9bMyyYnTeRCzH/isoWZg/rNmHwjLecluPDzrbie0nSwTd7Ml6i4bOLqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kf4Liva5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kf4Liva5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D544CC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790107833;
	bh=vfOh47QOUFplaWWyEQKjtDwNn9KY8NEnEviouK1PO7I=;
	h=To:Subject:From:Date:From;
	b=kf4Liva5xRrIqpqCnbazyAdh1MaQC8LQ18XJf4CybKPAypdm1hKXbU7Bkj+ekxmxu
	 lSnMyRrpyZBKt+pMpWpf9Qfv/qJZ1KB5SyISDwe3+0A+aQ/7Z3xpn81LYOaSckeY0x
	 O1+mZ5wb6QI4ogHQyTRvJTaLncIXEJ5G8n5+I57wllXDnMQJBNVXHva1WvF/P1f1ZF
	 9/zXnH8ujJhUEAMoj4+IPONLUPAIUOG8Arc63AKVBzPlnRoaVYx8TOiRf/YvYnTELT
	 0WDLn7ZthsLPAH8CTgMG9ho3kRzNfxlE0kZhQ8HuUNnxaf0X9bt5EdNLRmDm9JmnRH
	 jXwcZiyeva8jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE36C982FA
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179010783369.25039.17297206543399801481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c9697af2a058e9ff9bc519eed6be29e6a2a073bbd4d73060e320b60564053f9
Date: Tue, 22 Sep 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790107833
