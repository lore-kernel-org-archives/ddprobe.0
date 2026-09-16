Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45E08361965
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789534234; cv=none; b=uXOnv8Jxjj5DpwcIqYrq+DH8GAfSzG+NBwot3UYFyuxf5obFWa3kY4lQiFfQ5Q24cAP+K0Nuqj3nat7PWaeqoggNRgWe1Eb9D92XbJ1f1Gvv8eDaqHmMFWRO54KmudyvFQ2CskOvkMmje4TbY8EztKUdHUjow+HH8jPzX92sRSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789534234; c=relaxed/simple;
	bh=CGtExBuAHJjFEW9XH5FeBI2ik+Y3gvkkvWtnyJrWNe4=;
	h=To:Subject:From:Message-Id:Date; b=gQpRiPpDVPvyTaHhbVSygXqc6waOvjciqMcUO8tWEf9e6h5COzsAittMsZ31JLr6m1PjZgemnldOF+oYJwZtSv+JJTeE3zIvEGKn05qj8wh3IwFHTSHWgBB4Jsh479oidtLjzWItaS17+N1rPPUS3uqFchbbtnoMIVPFkl/VVSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fy4oLLs+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fy4oLLs+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4469C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789534233;
	bh=CGtExBuAHJjFEW9XH5FeBI2ik+Y3gvkkvWtnyJrWNe4=;
	h=To:Subject:From:Date:From;
	b=fy4oLLs+f9I69J8UPP/DD+dcb/gDle9+c7OGqsi0xKiP/bLvcDtcFbq+cyFQVvVes
	 OR5dfV2h39KUdY1n+NYRmMS3u3CctXwhAfcg2CtNPhPl2QsAOQxkV4VagjID8JnLOd
	 EIdBR8/cK5MchITF2xWVrpe9ZuYa8JcpuI654T8kj+qQCKBIYLb/yByEvyreZuK0Yy
	 jIx33krcqkkK74xMB04MxJMLYSI9mluEC4Kg8SqICGjCnMmAep2Qeoz+ROF4Y/j7eI
	 0lhR0hXTqCSOGqsR44+O9CNE9ziwiV53eSn2pEKmsUPRX4391OdW3FL1d0RnJ7PAbJ
	 dq9EvPRyZSwQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABEA9C88E5C
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178953423369.22414.263468847098813899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b63956e296e8e977c2ba59541ae35ae3841b3eb7948b160135967d2e5ea3b63
Date: Wed, 16 Sep 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789534233
