Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C1A62AEED
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743179995; cv=none; b=LmP2gN1qgeYQY97Kge5pnwM36mHZMHpJIoifj8YxsduVHfRM5J8NY6JCwRr9CFxHkJT1hDmFtMpeYfb1ZjcxnmlH3gFfw1tOc/+1XgiJQ8ECAJTt8iqtEtqdzkbwd0fTnV+Z35ORVUSs/m7GxT8xdWpp4T9JMLyy6iLvvwmVHzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743179995; c=relaxed/simple;
	bh=lKm33Fbvyj+WtAcM/0VBUhtxReiQmsgRIY/xK+Ila9s=;
	h=To:Subject:From:Message-Id:Date; b=YABcoO8IHXffU2a7tyw9zpVUlu+FRM+GwrV0JcZjICgqXIwwvMHODGBjnIPm0/wk/k2zX8aFCu+BXyuda8vu1/SHgcQIWiAh/HB6SGvSYOEDo4PeoS+hBkTo0n0gRbAd8hDMKdgYgf4PMIKJIlE9MKkCNVDPQl3XGWBibHpRSbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tppvn1Cy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tppvn1Cy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2CB6C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743179993;
	bh=lKm33Fbvyj+WtAcM/0VBUhtxReiQmsgRIY/xK+Ila9s=;
	h=To:Subject:From:Date:From;
	b=tppvn1CyNuuUjHa89srLJlFBFt6ENa4FAuP/VCnPxnxFCuoK38Kg1WR1ob02qbywJ
	 lxIXOFoe5i/gADv5plviCZjKHQi+fOJMoE6yR2mC29yqKieDzMecj++ihCq0w0knlL
	 3RvHYxE0vVKcuFVB1EWpudgz4fdUyrGOqXO+Q0Fs25dJ+y36s564jHLxkrGbrFFMiz
	 2gjSCVi5mE1O/bosWSvj8C/VtwndwpmphACbBT84JdWQfsljpPgSsbzrGgBBW3JFu0
	 qRQMbprsJQhtZ8/MoUGRFGyz5XnuKSNeVlXP1KubMlx2hWEEjd0bNrKh3b6C1T1oHi
	 YyhXpMgLa+msQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957FEC28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174317999360.9723.212258742242953822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d324809276ab1491b2e781b97100c80f236b1ac03c91a259de0dd81f82fd98f
Date: Fri, 28 Mar 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743179993
