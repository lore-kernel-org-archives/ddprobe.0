Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4743920C46B
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742372996; cv=none; b=ZEuVRaY32YfxRBIhUujIO2hWIQcTMCIN1wTpr+O8jkEoSZWxBs1bCIeapWhG+3Fbxfm+aU9XCeD83S+IyvqU5LNpccTV4GvRN9wFsV4P3/nW/102R9lSngbzYduuxnGA+0L+tOKHVsh/q6twoVFfWhilvel9c5/+jXi185P8P8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742372996; c=relaxed/simple;
	bh=3TVjYEFVSacRGkJ+8PdtBG9dWrvf1FQ3FCOr/mOPnJU=;
	h=To:Subject:From:Message-Id:Date; b=O5HcRTAkEx5haScBziXMHnNbH/qjH8rhV6yFvrszQOLnROzBT8hR/Qj25JREvPuwDuoX7MGnuqmvPJdZPCrb0YudvsTKrFOcXLY8oqSEN3DasMy/FahaG6opeeEP7YvC6N22AX1nZQIpzySV9DDXlHy6iSPEqICcifgczd7Pq3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KJZkLjiO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KJZkLjiO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCB63C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742372993;
	bh=3TVjYEFVSacRGkJ+8PdtBG9dWrvf1FQ3FCOr/mOPnJU=;
	h=To:Subject:From:Date:From;
	b=KJZkLjiOiAJc/TA9h9EbbHcHtLGRS/S7HnsuatIX0c3bd+KGk2RtSbnSSqAJUhBa1
	 qN8CyFS5XZ5Y6lM778wgbVGUEynURwb5P3bFYHWHQM8pMP8aXBEgpRMCzlb4l2Sbe3
	 uU1To6+C4L5+Um3/HCl4a1mvOsvfmcnSWzPEgHTwDwjsuMzg+77tkiM5SsbPnMHUAf
	 DpZZyj0ReLJX/+OMSFMvjqvCtShkhFYOYhXhzdeiRk0nHdYZ1cJB2U90+vP+Pwed8t
	 G3fvGAl+Re4umRh+tky4aL0HFevY3lwgr4Qf1fvwyHZjJAZqAph6oxDuA2e3WUPduU
	 Ef8gMxjnEyIaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5472C35FFA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174237299366.29315.3720190691003805333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c9e2d8d0b2a62c1ef17586c7ae8d8f9319fd706eadff7f78f7e9fd83d087ee2
Date: Wed, 19 Mar 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742372993
