Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35F2A17555
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745418594; cv=none; b=BYbsC3hjlk/TVQQ/TVrji9jkapEyHiugXkoEX0fvjsjFHy5ZdvhlsrCtmMmfpJ6XCrM9gdLOws04W//zWjlnrQMGRzHTEd3bQLXKbNBGeXm99B9VQSncT6ldY6CXKzQwUhpzshnYnuiPB9ftv9H7bJhv5J75jH9ELqppOq/4k6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745418594; c=relaxed/simple;
	bh=HNa5c7LPP8UgAcBsJ+nqDsDTOVG6AjclwKzHbGtKUgk=;
	h=To:Subject:From:Message-Id:Date; b=RrgKOWKEr/hknvyMzHD89lJ2QvpibDsCn/gcIeCMybzgv3NOeIuJ3ByZWwPaomqprLISfnMXK1pHkyiHvAZ3LViQIbvY3eysShwcgM37U+wHI5TxfZzCs3VstyAVkW9NCDsZAT5fwlEmvhNqEgoVZQIEWnVk03dlcXkhDD7FdJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JJOIcaD0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JJOIcaD0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C40C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745418593;
	bh=HNa5c7LPP8UgAcBsJ+nqDsDTOVG6AjclwKzHbGtKUgk=;
	h=To:Subject:From:Date:From;
	b=JJOIcaD0nMZjGS9SDm+QFx7mOi+wbgBk22O8b04KtOXzm9HdXxhmxJJatKlST7idO
	 C2V3nUfsBqFCHQ+NuM9NLqa98EJgCebDaDfuDNFpYZsf3uSZxoQMphffN/TPRQ5UaW
	 DjJTGNn17TUIJcSsbyYMHkyYiIxtdHXVw8DfrB8ltfOun/1+1LjnhrlLgT8GDi4Pwd
	 id7ldELDoeUIXcSkBnw1l5M1KoQ+f6rI35M3oalHxLHR3odQvrMFki+VP2TfngE3vL
	 q8CyOAt9SeIlv6+bEUfPeX8V2RFDeT5JSsBU6+l+Z4xmyR47r/J+75KZJ6xXMs361f
	 9jtEFrgtPcfWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9013DC369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174541859358.560.17500761588629331902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51b51056aaa79b78dd00599be358e0b438132c8535a80b579b0df3aec9de5ade
Date: Wed, 23 Apr 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745418593
