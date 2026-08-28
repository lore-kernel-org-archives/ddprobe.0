Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41B54286A4
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787938234; cv=none; b=HUayrOHh18lWUfKTWtcSBOx46eAMT2qSSHZaxlKQgw26kYVKiiHMOHzUME5SNwT7sQpk8LXqfsb3RF4COtogif456dOYwuBbqN9359cMoSgtEUibo4Yelvy3CA/zn/VJdDDRKpsZ6aYXhmrs4Qk78jt8taNiGcLnM62XFafGRGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787938234; c=relaxed/simple;
	bh=Tbq+RdCxjIL/64dNZ4UYKz4lC0xk9OJt99tC3FvJoNU=;
	h=To:Subject:From:Message-Id:Date; b=ECZy1MdR/uUgjr/E4p06g2u0DQnmgUQm5kOZucjxdl3c9HXmtS78mkt9IEWN06Yo4fszExkGBWGK2XJFJK2528shkp8Y3zD0YQq4pePExkwpNBcfsrxUSeQOX345+g/vYmSWgIMQDF28zpiDDRxB05+eRZ69cTRWnLi6urxdh7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XvA3veic; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XvA3veic"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6A60C19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787938233;
	bh=Tbq+RdCxjIL/64dNZ4UYKz4lC0xk9OJt99tC3FvJoNU=;
	h=To:Subject:From:Date:From;
	b=XvA3veickRAiAo+yE9BoYmlIsWYd3SxV/kF3AKiXd01m6s4b1co84zyQCl/JYXlih
	 ouJHQIlQyrFD7C+LffKMDfTm0RXzOb/Z2Jfxon/pWsgNX+gVPHa+/HMRLWflvuFmYH
	 ec7QeH/PwRrJ6xi4TU+UnvsK6+unc8SBzZx0ulq0t5JgWhmWF9t6sHqQejPFrtKRhk
	 +IufLY05xeAAIFYq39SGCQqKX193ejIPoEz+p281v9NYIusNgNkT+t1/69Oosb3YzH
	 KrcHyEKq7tXUiAcVON24Rc9/Z0/czXOnTMJvGRpNOELP5Mg/W/mp1x0qxY0h7S/EPF
	 xNGrL27XupcgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEBF3C61DCB
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178793823370.28335.11447278840458699921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4553af0ebd6a8f5dc0ff6ae39624ad4a9eef6cefb68822212971d8c160a81cc
Date: Fri, 28 Aug 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787938233
