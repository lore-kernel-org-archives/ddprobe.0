Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C94DF2B9BC
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 01:40:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739324453; cv=none; b=Zfu87vgqsWNvAFFsEryFyW01CDmD2v2iLioLHZbE5XXbw8LmLURWdqJvRsL6SFLMFvtLEAslK3hwNGJwQSsRVywOkixvvYVhCp86BsS54Mc+IO8IXog3ij8m3dUev7SkGGjJlAT1MFx+k2Io6OK7zuTgIO3aKrAt3ycXegk1Gbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739324453; c=relaxed/simple;
	bh=ZO+BWymzkAGM28FRpkP7yWqDOcr8cUcjd9wpoGL4SNM=;
	h=To:Subject:From:Message-Id:Date; b=aEgP56bN34yzHW5bViEG5dHwtxKzzjOyeJCzpVDSkrPcB/4VHjzTX+TC5Jeau+TYMMcBMQ42jvMQO85vKncx/yoI6k+QZFwah/Lvqc521TdsXwmAcG2zzZTq/EbXbQYSMYMowRDg/8OdLq20ReFzjelbadPTQH9xy7lk3gUIBY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dbCZn+nl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dbCZn+nl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D30C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 01:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739324453;
	bh=ZO+BWymzkAGM28FRpkP7yWqDOcr8cUcjd9wpoGL4SNM=;
	h=To:Subject:From:Date:From;
	b=dbCZn+nlXV11yIqnrn0Xjmjd/V9ZrYnfcwUIirP7P/SO2uCq3SKWiylRjUlbDVEgN
	 7IJevQJa1X7gFM+ER7/MeUxaNdeSWJEzMwPPYoUGPGuJUR3KLPdcT1QuNk0Vo3hCEY
	 gPN7jPotUb51ugdAIXRDtbdjcFSwLlcBV5QTAsTJF/3Ys8/gKgrfslP637OxHg/CGJ
	 3HR/A6itF7Zp7oJoqZyJbg613zv1hUzAUbeNEgix93f0Zm78tZID8I7Fbkc6z/wT/8
	 nC74rES+Ha4+uE3PIaZXn52xCl9BW3q1epAYLaewoKZE7zEikl2L7wg9/xWIzltlT8
	 redZwkDOQ7L8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946C3C0219B
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 01:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173932445360.31551.14595405582605458279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40e8d0e34541dad94007d8e3d63d739aacdacab39c31255a5f8944aa937d0c8f
Date: Wed, 12 Feb 2025 01:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739324453
