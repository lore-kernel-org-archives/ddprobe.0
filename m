Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32BE5188733
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745605194; cv=none; b=pCOC3VQNCLhbGNU8UjPmOxO/dDbYvWsT3IE0uUWXHxGPyjHUenznwOjkrMBfqxWihKd4/CJZvg7uhIyB/0S6TJWblupTnMudRjom1sZlx6fdGp19yNjrMtrVFzM5zHUU8VD4hq1jx4GUyoCE17ifSBKl9YixTlPm3qOXDLl3+8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745605194; c=relaxed/simple;
	bh=3U1d0Btn9EYM4+Y5pj+RznKlepjcgIvtk6QAWVTKEGc=;
	h=To:Subject:From:Message-Id:Date; b=OzwNHjwhZOsIMA0kjTOOfi2ocy46VAXfm+fk99JBznFA9XKYrHVjLgEq8PDrWVoC1HL4rnmgaM+E82EwtZEzKZSj/lPPYhV2uA+qaXPkhwsMV21qYph5MP2wn6H3GK4tEnqNt3ToTPLotER4EGx5jRmxe/sOn8PaGJrVHOIi7v4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tJIVvRvl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tJIVvRvl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F542C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745605193;
	bh=3U1d0Btn9EYM4+Y5pj+RznKlepjcgIvtk6QAWVTKEGc=;
	h=To:Subject:From:Date:From;
	b=tJIVvRvlbmISJ6ScEXpU8Kt2RlNHVLq08IPzF/MeFYaI8GboMfGKyzRo5GMhBL4zB
	 iQt01qZ7c1jr4AoJ48ey+20PKvIArwC7khJOrBK1FDfT2Jtz05XgnC7UkbT3XHzDpq
	 Z7is1Uruc8XyXA3UB6GL2fURVAaNj2VbW5jJpIhfyrMWf9fX41nARPtuGmIRgbVdE2
	 jNThr3TEbxCZvb6USWeszo9nhdImqnxjoMxi2qtlngcSsiHid/6qaunIm76lhF1Ax3
	 swvuBD5gOCip3jgXOdb0DrfwNPlSd/IsIgVSR4nuqSJPzimIpX9RveHNGtlFDb3M0v
	 yKdTOLm28R3UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA32C369C2
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174560519357.31203.11408016974078718581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7af4e33e33c310dfa842f1a5c26f474b2c26320c017c51e0ca5cf852a049b6a8
Date: Fri, 25 Apr 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745605193
