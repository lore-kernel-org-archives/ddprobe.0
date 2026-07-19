Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6758637F725
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 23:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784504314; cv=none; b=CyEU9oZsoaClJ/GAQ6Fr1Mbo9/SnQi9N6tpYI5wPFq7xH/q1VtPq9wYDTWUuNscwkkdeakpVq03Z9XCkWKHXbAtLFYiFGW8BV9hX+Q8Qmzcf2PVRrsd/qHwT+NqQjPv5Q9OPf7UMLbue8JtuPZitddQeV/87ZXk/JLHBTewzDtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784504314; c=relaxed/simple;
	bh=qTFLgwL7V9Slg5Yn7NPkI6nqzFlNLeq5EBKLKQVIp04=;
	h=To:Subject:From:Message-Id:Date; b=OGoM988/aV83SozuQLKee7EQn9zd4ulbg3cfcUsplz9dajlAsv+DmLfiYVUgGqQjtFBFLvYEZCew1miJFuFr0nyltXjiXL267UK3+Wc0qWKuTlrweXC7tA/cGgWpIl96ON67H/GCqh46imSi+Fld5r34gENLZIkgyDvDd/4RQic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B/Eh7ADU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B/Eh7ADU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D578FC19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 23:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784504313;
	bh=qTFLgwL7V9Slg5Yn7NPkI6nqzFlNLeq5EBKLKQVIp04=;
	h=To:Subject:From:Date:From;
	b=B/Eh7ADUoQy/Dz2IB+YaYToji5n1Vea2vbjaHgKd1tU5lYeWyCNRKHPFPbNG0Fa1y
	 jz0Qe4ToS7mC6rQQQ9RzUssRSl3oLeCfFr64KVCV7dtvQIFYgoRFOf0cX69cv52D4i
	 KQcIIst25ZAnYTUmUKCfPzRX0u6SzqMQAWEd7aQZRwFpMqpwHoHmCtsHOAJueA2ufH
	 7vMcWb6y2aRy6cWZ/jsxpZhHBWHO46+9y+/b+YLWKkeByn4MN5YGPRdJ5pLIeNl4zr
	 5KA27Ql/BEd8/sIIctpLPxtJv+HNsukjjV52qkZnTHL7Ze0/hxVhV4fXCOC8V2jiZm
	 RRZiFO2mmuO2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD31C44512
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 23:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178450431368.8053.7101204270807431769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e1fcc4dafe78fc309e6cd561ddac13f70170a4987585b0ad902e569d21bdfdd
Date: Sun, 19 Jul 2026 23:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784504313
