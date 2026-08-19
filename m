Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6985D3C1973
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787168434; cv=none; b=H2yOX+p5g7QfHcP01Ky1fF2p4CKMqlgMhu+RY/sfa3gMXKnJSPZ1PL3ekfutus89cn7Pfv1VIMA7wTelf1pe4i6GCg006wfqQTYkywEIMpUO9SzCpo8NezPjFBY5vLS23Nas4446RyCNUjeIEZy3B2yBeYtDxDWmc2HamsIpNcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787168434; c=relaxed/simple;
	bh=zo38bqkDTLOtW5T3mrE862/jFPGS66ZjLNtKDtS8vBg=;
	h=To:Subject:From:Message-Id:Date; b=sI6WlrlM+zc60e1hKeIjfH6Mvo7fNdm2ixkwn6eQ4TVOGG3wIipi5T0OtKPCeVmG7CeXbUFTLFgL3JHtnJNo/S159YtefYFZlyQ7uuyAbPBaNixzU+55hq2j++MFgBqzCJBKt1MqZe/H4GflWBCwGMFlfy1ef24RRr18txBrjIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=REblv1OK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="REblv1OK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D79DBC19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787168433;
	bh=zo38bqkDTLOtW5T3mrE862/jFPGS66ZjLNtKDtS8vBg=;
	h=To:Subject:From:Date:From;
	b=REblv1OKDnxXeAtxUQtZM4/rITg6ltXutIe5FhWpAZSHip64PTSnJudLpQnnvTUfg
	 VrbJ8MPj50NEJklVbYLlQqudFf6F8JkdaHdv8/OCqhAkGFGBxHerapvO3L05KPHTtx
	 1Xh6WIkCaQOox1J2yHrFqK+zq1AG49a38bJywNlWPTq66/ZzZfA/6EWLG02sAyF2B9
	 2KNi7xhxfTpdrFPwOIbCaaTndGokbSTLz6SP8EJdXJg4mK/egBmLm1bPSg5DeOfdRU
	 RM6irLqeVPIfSK59ffU9cTt9Y6ump6UrkJx49Pwt0AqjHLuDrl6Do16iMyHS0oNJTo
	 sfFUTdI8XnxAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACCDC5DF81
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178716843369.17466.2365708591146988201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c830d83e69faa7d5d9d47edb7ded7ba4368f03dd99a5bef0400e30baf81522fd
Date: Wed, 19 Aug 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787168433
