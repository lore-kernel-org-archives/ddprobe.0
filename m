Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67973381CC
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 17:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716570803; cv=none; b=QgsSpz093dWlVwgdRzIrQZlJazkzsW03gb94EBB1/yCK9IUo5GZP16KLMkG5G9MuBBEcYfjuS603xBkF/bPFO+xLNVvegZHGGuiFAxqiDyw102XGesCJ05VVEMTg4dGwec3z8btdGiA/kvbXzc6KZndrkYP0eCDjqajCHxu5yCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716570803; c=relaxed/simple;
	bh=bAvCRWWzyn3pmL1VDLHGwF3cHnC1je92PiC1F4vw0Js=;
	h=To:Subject:From:Message-Id:Date; b=Lw6F/IQGoFiHu5EhFsaRyb3BB3QUSvytv/vx7MTyuy7aaHrmAgvakMPWt1tMuwWSGwvMqR8UA2UTh4MwmUp7vdhdYfuBS42JSZJ3DZcHGcbxqPCrNkYj3FYb+mGripMvyI1ditnmUUA2t38FgsEwQxlfMBbrx6yszVOsONGxF6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iulPrIqI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iulPrIqI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8498C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 17:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716570802;
	bh=bAvCRWWzyn3pmL1VDLHGwF3cHnC1je92PiC1F4vw0Js=;
	h=To:Subject:From:Date:From;
	b=iulPrIqIC8Ni5Bu4c9+QEmoTZywrQ2CweBKT0YxV3Yfmlf2/3ZlxdnpMTjQIzPDo3
	 MJ7W16KrCPMnGgLNlXN2J7etJpNYJMW2wIbr1gvBXa+WAeNGobGV7FS0uWfkwHSjzV
	 kthtLJfKnwGB5MPtYAEHRysyvuYugq20mPmRSsR+N93kTzdLWbIp1MCEDvBnv2MoBH
	 TwFn0ijg79GfZ2WgegA4oL3NQTWJHzkFAN/PyCj9i7T+sQnjSQMBHYC1ZWMEO4XTrm
	 AjpgUBAtOQNQbtnhkBz4vuun+RmUymAkuXG5PZ96zkPbJ6/muRWZsEmSdxcxxcbjR9
	 HHDnt3f2dmLHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0A86C25B74
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 17:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171657080276.6590.8263830234820414962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00332df2f9d15ba5e8cad76bd1eef42e61cfaebfefe0927b35f698f27c7c8000
Date: Fri, 24 May 2024 17:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716570802
