Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38D101459FA
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725617754; cv=none; b=IeSHyK3KRN160ShLwM9npJgSw9EJ/aqLgpEX7/cAq3jxMsCDrJ4QxwU+EMCwob6sxOnU3HNrMOy66BZ+q8xYXnOfJnHSE36ZGcTX1TiHRBOEIHn3E2R28+8dZNkszwchpep+34wEA/hwlPlPUx4TjOzw17fVLL8IqoiW3fqA7+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725617754; c=relaxed/simple;
	bh=xFQzRUgRt44JOdR1LpBADck/S6/GEHvLjofaQirutl0=;
	h=To:Subject:From:Message-Id:Date; b=pzXKq+vBPm4JbB627dR2EduLr/o30ee9VMJKhM1bQHU6PfoFbcRbOo0aHuGR/ixQ+EwPLJRNN/v3odsGhAEC4nK73mSQTd2rrOL8KFh9ObNcs3VL2qIilyNntOy+IWFBLseBRbnEj0xQjXRKdomyLkCrgk3a83P8CgW3JPZskTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sbsCtNlu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sbsCtNlu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACD62C4CEC4
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725617753;
	bh=xFQzRUgRt44JOdR1LpBADck/S6/GEHvLjofaQirutl0=;
	h=To:Subject:From:Date:From;
	b=sbsCtNluhWl9EeDSi1lJB8M/Dqxj3FmPPMrw8wZN1qvp7tK66qpPuKr4zWh0HDXkv
	 qSeziqVZcyZY11w00dfltcSS1C2nDjGs9tE39IgpEk2FffZlhCAA3NdjEn9dHt9Tgd
	 jxmwh/vsio0U0znFfPbLw6IssJ0hj/0jC+H+PoGh909MRTl6a/uDjxc99p41bNRNsx
	 xxDQKV9ARlRAIIHRovXZ3Lr6w6jLXmg9JYU18mLRw2wh3pvp6AY5HN3XNJbFeoMtEv
	 sMtHZa8HxYmQqBRCwAx+UCnpmOLuRn8ZYJYNiMvimg52u6ZnyjL6wL2Iw3l4ViZOGE
	 Q9YClKw/URQHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B69DCE7AFB
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172561775362.31185.7548696465819870390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d95f033bed29cc261dfb46d273460a52c174ea4a1a2351ab076cb0b765a0dc0
Date: Fri, 06 Sep 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725617753
