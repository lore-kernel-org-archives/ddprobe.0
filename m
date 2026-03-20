Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F17F33CE49E
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 17:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774028094; cv=none; b=mfg4p+HSHLxLU2+qyrXeirFaeDZRzFjunSjeg0NPJCAlTcM0vktqeFRMonAqLhNEwkaOECnI4+tu/HX3uu2sKCokBEq7asWH+8M5SPF1H6jtE1TJbfhR4MtPyZxEZ81nrLYpNPjzSrgenlUVv9I9n+D8p6QU1BgAG+K+6gm+Nr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774028094; c=relaxed/simple;
	bh=GOHO233JaLKLLJ1yY77b2FvgJWQgRTz/sQOwVxwsoNo=;
	h=To:Subject:From:Message-Id:Date; b=ljbV07lSUdf100aLAtVc5k6rV3v4OxZOvFITf2G43/0QhodpkJr6t6KtK6B34JcrDEwrma7Sy+vv7gnfqBak1nQYzSHciTavlnKC06s8RjzbftmPnwg8KwLxLsoLB6SAPgPo57IXXkKzvakc9BPrIT9DYyz0M7Imw0H1ArQA+Og=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vBMQpIxc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vBMQpIxc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B3DC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 17:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774028093;
	bh=GOHO233JaLKLLJ1yY77b2FvgJWQgRTz/sQOwVxwsoNo=;
	h=To:Subject:From:Date:From;
	b=vBMQpIxcZ5/dPyRlaB76vACtTqpOMVyIuzaezraN43Vh55j2PlQUuId2wuw77AYKU
	 KPYCvAWptEVwwcFo2m1WvHcipg0ysjP4mWyKlWVUh/bs8gOU5vKmKWCxwX7YjNSc6q
	 hpqegxn0hn3MjtyDOX6qQ9fn9TECt/j/gPDprDmWjvfNkXmtM8Op4hG977JXdYSw3O
	 aBlqp5l7MUd5NF2IOXyxjLIOjiz03KH+EoQC2X0PuJc37VIzXPGBKMkYPVjJX2+q5M
	 I/eiP6lZJvw5fCGYhPOsVJGJHL5eEpENYHLX1ymXU0x0PRz95Px3FA7QF1vp8wsEK/
	 W4QawQIQsmfKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942F61099B31
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 17:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177402809359.4356.1503185396688930106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9f85feaa7055d1df62cb66a1910bad5c1229d9a818d89a80ac1626c3a3fea7d
Date: Fri, 20 Mar 2026 17:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774028093
