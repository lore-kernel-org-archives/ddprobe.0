Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 375A520EB
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722651954; cv=none; b=HVxcFpGsy3eWyD8HkrejA+t2XSPIdjkmWDULps8Z6vgK39ugePzraZDZw1jTuU3Ao1VkC7czwKwthvnLGQ7mGjvMnJB2TGNrsO7NifPmDUrjKQZnR/Ms8YILzNo0Bw2HpoXjJXkuTrrSiFXgOWEHXNiFdhfO+XtfG46Ag6QWtdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722651954; c=relaxed/simple;
	bh=P0wEl3Ov/1o5LKV2gaTiur6Te8j1BXhwv4ZTyyJs6EY=;
	h=To:Subject:From:Message-Id:Date; b=oOh9sjl2YyKdnLHi17Q1l4azFea3ssxZkln4vIxEtvZ2BLih05C23KbOSFrUgalPabqserAF4ZDxPO84hrmSDPOfVS3kmBzKpcJQpU3u1lS9s4d4DaG+s+ze9YoafyDDm3G5oWQnu0eLunrYfV2ztOpgiJ5XOr432zLPQS72hkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ff1Q0bM2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ff1Q0bM2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4C5CC32782
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722651953;
	bh=P0wEl3Ov/1o5LKV2gaTiur6Te8j1BXhwv4ZTyyJs6EY=;
	h=To:Subject:From:Date:From;
	b=ff1Q0bM295AZKdwgpyY6kVEN03RBA7bhLDEP9Qz+GVFmwnPeQR4dKayjwOUdo/FH0
	 FPiqFm4eUZuWpSbV29pzCG4AinuLTyUcx7cEdKUz1k+/qfcKwcdAckpwPHpH1aVPHQ
	 XoS0883+bnFx5a6PbSZgxvFqG5zK+cZuRTTf+hvn5cxvWy8Ff9GsEHTDZo8C+vUHw+
	 DUgeQ/UgcCeCG/iI2A3CHQlKY9Dbp+r4Eh+1WZtXJrQk5uDkdAmw4hbRB/IIdG82ou
	 PoHZZ0Yh1EbbxW9su3hdArCrXYaIYXTRLOg6/yNTqNmclU7gSC5rl8nGr8v+RaOaCI
	 h3r7fB2HRsh0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A042FC3DA4A
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172265195360.14084.10621946974167200575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0898a22e70f810efeaa9da0a19c5b3e851a2edcd7c93b4d3f9c2f2ae764e7bd2
Date: Sat, 03 Aug 2024 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722651953
