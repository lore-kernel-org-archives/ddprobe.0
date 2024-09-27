Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C374F17E00D
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727468153; cv=none; b=lOTwIeE0amP8O8YOXWXTEdefRevY7G0tZl0l1O/liYO3qPvWCfDduwFF3Q9vv2vtLvRofqKi2f6w7lKNV70Bc11vjJT0GCmtVGi0/DmCGDiAfVMh1cTwYh43M8BSa3i6qWH4Kb2wUzxHWtx3o4k6mpWq2hT826dVOEmUWS03AqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727468153; c=relaxed/simple;
	bh=R0Uwp+PjE0u+xvKcVDcULrcKVvwhffHHcK0XFIyLbls=;
	h=To:Subject:From:Message-Id:Date; b=ZcQhJbQ+QA1kT/iD3vecVW8og2DLvkqaN/KNmivjnyY1vusVcktd3rKXRWc71YsHGblm2+jcth7Dokf4QV7nbU56DVANMPjUdmQqi4QEaxjFU+cS1s7Cbl3lOXUEFoGlN3iuvV03Viaim2ml9Rlzfw+RFP9jTjgH5lHTBwhbRL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T3aDwuFi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T3aDwuFi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20B4C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727468153;
	bh=R0Uwp+PjE0u+xvKcVDcULrcKVvwhffHHcK0XFIyLbls=;
	h=To:Subject:From:Date:From;
	b=T3aDwuFiF+wQQGTyqDTW9vlmljqZQ66rASrqQoqIes9riXN+nP2i6whCPjJJvcFd8
	 hqu0XMgRneyAt5/zQO8f4i+Ick5Ak1Bu0pLNKu6GM+L4R5pwmGKgOETsg/rhH0ysZr
	 DjpWeZ8EMoDfRC9Q0Qk3OLCDFRUQXgsxXeOpmo3+LlUYQJQJoj/KC+syZ8Lu8H+Gcc
	 AiNu5mMZUy6XGO+WlvbUgpv+NChWcpZK7MEr8WPLZFsFNUMfkuWes8fJOmHwJQc9dM
	 YqYB564nqL2yL5j3WpMFlW6tv0yR6TPi43YbqskuTeCsNLKx+Aru2bxGsYPeMwDhJV
	 j7o2itMCG3tGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90910CDD1AA
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172746815358.4009.478154382466150294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b2cea8fa1313d3fe611edcb7cbf1c0c009a11013324789d732c2fa9e2d91721
Date: Fri, 27 Sep 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727468153
