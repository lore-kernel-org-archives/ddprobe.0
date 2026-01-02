Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E1931D88A4
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 17:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767373434; cv=none; b=JV3laptJBLWZtkijpJ+6Lb3btvMOd2Q8h9/UFPmwL5S1Q+/C4gq7bCnLtolzWyD/fafsyUhB6X5YQJ2JxoTC4cyixGFhwMW7HQ4oX2vtNbU522amTFr/bGn8K8gL0LCmBB8GD6dYUsovvXCkFtlI1NIY32cEQOClbY453UNFQEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767373434; c=relaxed/simple;
	bh=5g7mh/1eUmBEok8gbOT85ZmPcxe+sj1MDz36vF93JtE=;
	h=To:Subject:From:Message-Id:Date; b=n+FuZw1S12w5Ht3btwE1g/yBBgTQOui5tisLkJ6YfLsxqnUvn2wGDqioDPhdpBPIhfVTAi+cmx4AiQpKOGxUjErbwJBtbKNalRw6TwGg4w83uLGCJjH/9bH1nodRIs3z3icsXLWAdQp/jYwRXt1/bGFyxyypcoSuj7pX70xummQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SL7lqVnW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SL7lqVnW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A125CC116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 17:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767373433;
	bh=5g7mh/1eUmBEok8gbOT85ZmPcxe+sj1MDz36vF93JtE=;
	h=To:Subject:From:Date:From;
	b=SL7lqVnWo9d5BDru3i2sY6wZOq5lbjnmsRaoav0SWHVSEtCKcKGvxN9adjduqUMku
	 xU4iujrKLHujojkaAqswR/wXxf71cJGmKO8yqcyFgx2R1WBXI2XemwYpSLL2g7mMSB
	 o3y8AJmbNFtRgUFwHHSDiBnOqwu+tdDITyzMgRTAWlyXqt+RifpkkjkzYkvSJJDTUA
	 gW/SOw3ik97Dyb7MrciU0czFXeHU8gwLeB/XK8v1eUT9ihN0FitBh+ncPApgehjg9Q
	 rZtvL+EpEAqdoLj/8iVdxTIwlbP+BXHwHL+HDrLxd1Eufso5qcMirThRwRYDK/KKdw
	 +MLjRlAS43KZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2E0FA3753
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 17:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176737343357.13962.11043838279053255309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e5c0d152fd1f6449a0bc35efe55189b3501bb0eec82ff582e534f4db234c168
Date: Fri, 02 Jan 2026 17:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767373433
