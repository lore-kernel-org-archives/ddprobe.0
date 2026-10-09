Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4790F3F328D
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791535234; cv=none; b=rATOamlt0Yi/+0zWCny0hEVreWi2TAyms0i+gHx1frmw34fdSqXUqKfOUgPATuGZuAZ6w3w/OE9tdjdxQ9SeBEnyQAknN+414ujICg4IzlH/Ri4xuPzuA/fxVVtP3CiB5s8am8/wL8NuWV71Zi0yiLPUr57yNWXtoicoMiIO8Xw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791535234; c=relaxed/simple;
	bh=/wkrQlY3z3mcjCsikfAdKwfvDHpqNFBR49b14m4Uj3U=;
	h=To:Subject:From:Message-Id:Date; b=L6aGTg/zbZ1YOYSr/TfSoPG6vwixufQPzlu7Rzu/Dmsmu8TNay5LqE7cZTVSp3AtE7TBuZJ1YdFAeSFK8OT1vUeExOURoUwv+Fdmo15sBvJ2x40LDGqV4rT+ZzV6YKAl87srvTc6FZnoSSjNuH1puG2dU1cjB+BZu6cQQ95CXfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iBLCttgG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iBLCttgG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE139C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791535233;
	bh=/wkrQlY3z3mcjCsikfAdKwfvDHpqNFBR49b14m4Uj3U=;
	h=To:Subject:From:Date:From;
	b=iBLCttgG4Y+LigAcbgkX94nr014Ik6NubsPw08kkit7/n9I5thrG0TOSd4ZAeMFml
	 RVSCxOBayLwSIQ4bwkwxC/T/JcW/7OdceuhRUXhtZOY7l/I+kOliqLtupR6G6ycyNF
	 S1MWMMZNM82iNpdUYgzlaSr1vQwozoqAD1xuD0KBbBd6o2wsTRpFxfTN6iveal5ohK
	 sc0UyYh1NOfuPqn03FKZQZEJSw+8mWGUsswRJR46/gYSHz4RFdRlbk4juXSoJOu/Qz
	 JKM2SENuEORROAi43CjYqajXbfPCwwKxPCf/5t1Bo0HrzZcLjCgQnSVZDXS7hLp0py
	 L1Gf+TinQm8cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB899CA6012
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179153523369.10742.10231643226574217376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dd4756b8e65252ae7aa3569f112525e70a6568fb705d55ab19e29b8edcd9e4a
Date: Fri, 09 Oct 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791535233
