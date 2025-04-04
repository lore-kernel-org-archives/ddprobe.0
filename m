Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43CB61F4CB7
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743780594; cv=none; b=VN9+J5Jv091skpAAIkxkXqM+6VF/OUfeva57xXD7UxS5gl6+bL5Ay0FO7RPCEisxiaaxeSvXBGfOAK4Q/HRP1gNLEs/+w47kUIY0KXxPkiZf/PwIou8ydKnyctIiABaxC1QrvqSXO4FNLjsP09D0TLMy2SFeGurny1EAwkpMEk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743780594; c=relaxed/simple;
	bh=8MntOggSEAtHNoWOePRuuGJMndr4TNTtXtpzE78+zuk=;
	h=To:Subject:From:Message-Id:Date; b=ozCLrn7CIbGNVntiHZ5On2rSlBJ/JqSZYo5NKILi5a0bSjiwpmjLNPCVjY2RvYuT6ObVTXexa18yrUYHmEUKLDUZKeXCBNrAOmmubiQh4OCsKVnQEs+HPOq+p1EtmLburJLGZxo3gS1n/hq+rugQ0OtcwVSMWLw/MKoVWAt+utY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FQ5U1qvD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FQ5U1qvD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0F55C4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743780593;
	bh=8MntOggSEAtHNoWOePRuuGJMndr4TNTtXtpzE78+zuk=;
	h=To:Subject:From:Date:From;
	b=FQ5U1qvDoEf7ctRSHnNSNcMxAyovCgJ9KPBh61XgNksEqAVQSPxfLrWYvImAZtpaZ
	 AcjAx6bj7037SlegfFiQbhD7uMNbq3sNAshEXEdMCos6Vxyc+H+KN4iXky1YbH8WDV
	 k20IWJV+0c60nbnyalUgat6qiEkyCyRLoZZ1jVmYPEvLjezxuRKdVSZOJapuhVgN2G
	 btfyjOMf2BVQ0G3ghAYj1cThReVo+2wYwN1KG0toLKREKRwzwUOHfVstfqC13+Cdap
	 N1qFwbc/PRMBD07ryqqGKpsAvYX4fc3QHxE2jLT5laLZ4NUwJmdBYfTPnuJmPvluMn
	 ELZJiODfTrR+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9933FC36014
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174378059361.1643.15517099949308794503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 844bd160f3bfbedea49b22b492aa3075330fd041002a1e46d5b2d5976d41ed8a
Date: Fri, 04 Apr 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743780593
