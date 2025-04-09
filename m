Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33BFD1B87F3
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744196394; cv=none; b=Z5UoRTiGBHeyAcGIcO2SJoeUAkF6k8QJr24hp7QnugaYHlCAupZ1lpU3ni93H/Y1lOCXpLjr/8nnafZG2159wNeSlj4gvSrVXjpmHEMo9aCNuhOMKN0tK71mpzvqDmT+P2X8TtURnSUihRr1ic0AmAlS6W47hq7tOWQBZ+5QAB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744196394; c=relaxed/simple;
	bh=tLzfThb0EAdAh3Jl8ELCPrMFEHaaFCmxpVPMxKDwmYk=;
	h=To:Subject:From:Message-Id:Date; b=nUkJbsSh1QCuyFyxt0znyZoJPtGv9EgFqFAn6HM+frVP4x0cY//0XrvSHl7CpugYyiPmJnzD+1iBlfatU2ZgtWw/NutMzGY6d0bjttts2+ubUvhcOORkeG9TDIwoDnNXR0ryw0rsi5nUi6X8Ja+/YtKRVYuh6qqxFTj8hyyMFL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GuBOF+GT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GuBOF+GT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A871CC4CEE3
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744196393;
	bh=tLzfThb0EAdAh3Jl8ELCPrMFEHaaFCmxpVPMxKDwmYk=;
	h=To:Subject:From:Date:From;
	b=GuBOF+GTpKmJzZuRi2oEXxG0aEsDsBZtFLJQcNNRbNoDCPRfeiTT+Ia9ypHwriBI4
	 5uJLb5VMJfwHfD+s2YHBkcVwrCpkYMrzIYa9oexcWbYlqHzxXwTVi1Y6hJMOjeqhp4
	 j3CNRhigwVRKfLN26t1VfMx1p2a3lHjkoLvqtfncxHBd2qi0VW9KaUHsAtxlRPj9jY
	 dcze0qyPG0Vn+EaxBitVxcSB3xctFd+G9JPtZON27+HgBncTyPN/vbmydcJVb7qzZl
	 vf7+WNIdFBkLRczFqIXgD3D8MgWYQ9/kt4lubfdgSdg7hlhxidMpsq++RJuneShnB5
	 kC5CmxtLxwsWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C89C369A1
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174419639358.32545.7540036814958401027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ceb60dc5b9d95379a6a4de059f552e9ede3fbace9b393654af12307c012cc7ac
Date: Wed, 09 Apr 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744196393
