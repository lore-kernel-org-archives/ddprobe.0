Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58E964A2D
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744939194; cv=none; b=PIJaL6KTZarcqRePlmspggTHTmwSGMryQAC6/nkUDuNZE0jblpQXF823FVyDpMC/x2QecsCxCyrPT0QHw8m2PDfX1LCq1/e+yKgt3bx8bikC2CzFmoUf3ZxNQ2105kyg2pfKNFhLtXk5mAU3s3HXw7bdJzhcT+XokYMWvZpux8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744939194; c=relaxed/simple;
	bh=qdlDcOdB74LQv5xyVBY7Wsxj5vPR5iJfSEMe5d9TmSI=;
	h=To:Subject:From:Message-Id:Date; b=SdWKthkhTrJnWDB1vKNKbMPyQLcjSGX7MsfEFmAFaBLxDPh83DG3ovvG77HGNphCoe849M+duWCYF9NGFdppdjl+p0B+ZL6YCSuAlFA8lWF0bunCuFTKtQ4OQrUBr8WCQfHU94InsaAVYowJ9hWey+qd10vj33TrIlluFPgxOOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d40pAo6i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d40pAo6i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A978DC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744939193;
	bh=qdlDcOdB74LQv5xyVBY7Wsxj5vPR5iJfSEMe5d9TmSI=;
	h=To:Subject:From:Date:From;
	b=d40pAo6iYWMdb7evghjCs5ynf37FllrssjisYrWKMOs1P1Px+ZkUXtwYIr/HmL1A/
	 H8fFxbz6zlldcMdXt6/UogQH/p/QhFSDz49kuuY0ihCIjqmrkcKvTHO8O9IddAxj9o
	 La6XJAXWUlHML/02q8YydvPJ7Vuk/gz0KlrX96yYmObK3XuaeErW+IveDVbifAUkhK
	 hTwf/pl9hXyEulaqZGsHhUzxdpR6UJcTdH9L+rGX2bMEV8eYphwC8NmY3BZ0Qvyq8v
	 tKmIaB56aZGlCaTiTaLSQHZf59V/q/03Rrt1e4A0lobgV7jDabZZBEFspXSUcqGqkU
	 gxWuZJqPo9qfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BC2C369C2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174493919359.17003.15253042779783983744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e702ae3a0962433ccbf85e60461ecd2fe5f4b281b18e286bcace92a8cd4daef
Date: Fri, 18 Apr 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744939193
