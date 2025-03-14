Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3949A12FF6F
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 13:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741960134; cv=none; b=DxsDQHk8UwNbqgAlDm23ZNDG3fFf2e5BJvP6sFFGJjGN3rCylLJuvDBcIQtknPMw/fsvSQxuFqUfHr3vjG2B5MQ8XTHGar/4K6G/QVWdAMfYCy2shEMHN8oPwmST5+il+yI+kEQJpQCj2G7cQaKwHNDAfL0QEeGc86wLeLEzsHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741960134; c=relaxed/simple;
	bh=AbPKRk1iZeUW0wL+eFhD7RAQzOaGo65d/kMp3QD0WTw=;
	h=To:Subject:From:Message-Id:Date; b=gpp9FiOgYVCM+oOMGowJTPePmFEEJ1lolQwW2684qflPOa1Pe9U8tsNOmRQhEALDyzXrRdsS7cjheEKvrLk7Jb9uVfZo3alK2OtNYNlv1aDXBkylnSC4zYbjIgbG2sdVIzs0aqHxbXm0gZ2tj9HDL0TC0rNlVtLvoJmkYQ4q+X8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pcaN8N6W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pcaN8N6W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD638C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 13:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741960133;
	bh=AbPKRk1iZeUW0wL+eFhD7RAQzOaGo65d/kMp3QD0WTw=;
	h=To:Subject:From:Date:From;
	b=pcaN8N6W9oQQ15lSazMYv/I6JoQDTQ85xbYIbSxZy5g03cHSedX4sqIWitnlLRFLq
	 1EGgkbFpF5hktUDsIKSRBu586qH1f7umsO4eKxge2oKISj60kpBR/92BRtVxDRbfOt
	 JRYrSXS8ECSA6MMYH5x1nxYnsFbojPGIYQyes4uhnUvUV6V203uT9s2VCQa9+6qBBn
	 LG2nf8snztNa8Fa2UTTkTrPITPBa0HJiIU/QOKz0wbQQc1otYFhG2YCXntztlUMcXv
	 gvS4DtEPYTrObbIXrG6vahh7RmFTynW0D6UppuhehxxlRl+8tqFUnPVZ/QQdfzLHEh
	 FFy2UpoTWTevA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E17C282EC
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 13:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174196013361.29602.5236336146037656192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfa5d3d7c103aacdb462f71c23c6a1a55c0e76a73af65661f9eb1144313d0603
Date: Fri, 14 Mar 2025 13:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741960133
