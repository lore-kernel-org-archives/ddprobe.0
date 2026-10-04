Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DF9530C168
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791133834; cv=none; b=gH6REXhgO0HMZvNQtKmY8sIZgJ+HKwJpSc893G6FpXSs4wVVpwbvrpJ0NLEpn81PoxzIxwCHpB3LxFNRjYKzxjlSbThp6riJMvgev8WhGf8a/1Somnk0xEvdKuriAgdBNyxy0g4fY2fDa3F7bd6Dqv3eHhqX4y2h7soki5OxALI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791133834; c=relaxed/simple;
	bh=pkXzbJKueADFwWlIm0VntwIOaR5TwH41HS63g/5YAVs=;
	h=To:Subject:From:Message-Id:Date; b=L+tFVpS14jpQjQaKiLQy2++rLJOnGqEuE/hA7IImNMqSaXRlIiKguwqwJVjWJbc9fb+UyUeDNHS2Jwg48Jj/upKJGvXgnNL3eMrcFFP2Wx3o6uUCa75WQTS/G8BH34bdo9kPeUtahclCymgabq/WNMHH1cf3EI85cNHeTnrrvgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mYVn2zMN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mYVn2zMN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC57AC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791133833;
	bh=pkXzbJKueADFwWlIm0VntwIOaR5TwH41HS63g/5YAVs=;
	h=To:Subject:From:Date:From;
	b=mYVn2zMNV1gI1tvh8cdcvgSYnNvjj8I44GUHU0K1Gc0neL+RkQVzrx7zeL4BxClwO
	 dqeqc2Mi65rxKWjZkwVq3gvZNypTu0SN9Ni5EwBpCfo7VX9T1E9dPVgvBOirIY82Ix
	 7TQFMjIqUl6vkjyAnpJYrTDp62ra1MOI6KAFVLvgN4anb+b/R9RQw9fzkpfGHZZPzB
	 XVSlz4OwL2SOBad35lOS+4rMwJoNJZGTikpapI5kKBnvwE7mF6IfZ7VppF7g/e1XwZ
	 f+SqeJTwHrsoVicP4kFk6311eQyocE1A7mQkWGVMR1Ny2C3mmelzHGU6mr1Wl99pP1
	 RsG7XgC+RUT2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B07EECA5FF0
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179113383369.15183.9182605623235538532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7ed8513f2454edeb0455b033916bfaa5f76089dd610e577d9ad825b620cd9e5
Date: Sun, 04 Oct 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791133833
