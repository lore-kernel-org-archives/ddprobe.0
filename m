Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A66724E4AF
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 05:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783141714; cv=none; b=oZwpVmaPIIepcBiUKTRIaneSvwBLdiyDHO67ctpal9DLw6HpsDyIQW/hbzYcdzh+z8fRlxjPpMBeJK92nvTbh72X5Ms7VDRMEC1iXs3YL9syB1togL24C1RMmbmQ9He3S+Za08QUYMwmQz9Q9V4ka2xtERF1sgRnPLzwCE/KptM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783141714; c=relaxed/simple;
	bh=j4+1h0d/9T1bAhLDkq/eVBeXYntOuYeUDDbOUNmuSCs=;
	h=To:Subject:From:Message-Id:Date; b=mgL7bfuA+q9iU847K52vj5jMTyhgnyM8/+SVm/j+ahEtQShT9ur4htQf9LFewPFUnyQLVnuYi93/1xuohgprRiHbrb4OF5h/QynjSoGFMoe06djSxdixY8ocefCqMhiQr6vmfDIwBY33KjS+ln0ZcQzo+zsp3LNJrIFZPHLanq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=neUPAbHU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="neUPAbHU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0533C19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 05:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783141713;
	bh=j4+1h0d/9T1bAhLDkq/eVBeXYntOuYeUDDbOUNmuSCs=;
	h=To:Subject:From:Date:From;
	b=neUPAbHUqLnCZu/8r1i8Qnmjr/3nP5f67jQgo/9aIgHFHI9xKuSMoCTui9Sa5KlPO
	 XXVxPY4mBl3N8P+wMIbqwmO1wy7cGwogpWdr56cRpsLHwf73aOdfL1Bk19am0psQ81
	 dDCKGSIql077msgxQL/THmozJ5PrP9ibpvo0V9k+RoyBZ4rPen2qIXJv0jOq1Dbc4q
	 ps7c0eQy9aVrDMihAVRmPPZN9OW3En7hgRpFFzIri+cLDpOni6kJTHfun73fKpENFx
	 opYMXTZRWa+ViTEgLoXbyoAyXaGYQTwgcusmo6bW1bthvx46xSmKEzIgyxV9saEDvb
	 dSki/6K6I7g0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB671C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 05:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178314171368.11867.9027081251975016089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae495e15f28a5cb4b442d02998a9ff26e6b31dac81d35d10404a314a644c4cc5
Date: Sat, 04 Jul 2026 05:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783141713
