Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1911A38F646
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 08:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776154654; cv=none; b=URfpPW0M+npQYLs0PgnT/+LG7eUGhLbvilJTOYugsslouW96uCvWyP03qV0f53XbDd5wUPCKpK9Ly/+3l6rI1NHPf5QkPmvvo1Saw6Z+eP7J6mT8Q3Nxa0BDEaT6b0tFE99CxCpDrxDBVWhRcnK98eQXpswXGbUatwA64w12hF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776154654; c=relaxed/simple;
	bh=rGrGq9i3TR/UIpuYvyMH9A78qC0HhBSW9fnEyQvk0Ak=;
	h=To:Subject:From:Message-Id:Date; b=dKRQBPd3c25xw2GKngFSAEId2eg0psuLyAIhcQWUH7+2LnPYsc0ZBA2Pzg0MDNQ9fCsjzM1lpWwhhfQ3CE4AmC5iggM05OLMMyO6o5liuTUss06Bdr+sYXfPnlL8BXL0BQFikNgSbWagPQv6Jhqei6IYI04xMIkBIdsWmhg6Mjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lHGKWVHR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lHGKWVHR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD004C19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 08:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776154653;
	bh=rGrGq9i3TR/UIpuYvyMH9A78qC0HhBSW9fnEyQvk0Ak=;
	h=To:Subject:From:Date:From;
	b=lHGKWVHRdX/5bt7L5yuw6J3Kc5qPNF0ZtPQe9B9dV351EqwPvqOLB7PtGLHiq745r
	 37ZNwmBlOWdd+qm0HFk7YgPLGtHnNZ3S1irlBc3Dz2dWwaEwczGH4qzjgL7fkAKHkl
	 6LVaPyhm6rPkt3F1JX2utsa+uFqxOvyHTvulDMNiFe2J5zhwGFdnhYRUBvbVt2Ute0
	 40W+gLNMF1VDRHuz4AATnqNJ8ITyX56+FbZcd9XsS0ugW0ikw8Sajf38SL6UqDKOd4
	 psRI12+kGL1sC9jgtiEQ3aq1Cvl8UXlZu3zepfeOR83RKzZVnofS7+KhgLKK7zC8sU
	 yq6RVuyUO3n9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB52FED7B84
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 08:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177615465369.17076.6237250691367366291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dca1890c1771754bdae892c20e42ef36bff1425bf2bd309a6d69b613e93665d9
Date: Tue, 14 Apr 2026 08:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776154653
