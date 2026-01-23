Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0521A31327F
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 17:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769188434; cv=none; b=P0XZV6nU7LITL1UPUAsmncxM82myu1gEm/3QtDUghp6NI4QF/+SY8fhSW5nxMXZcV+KlDirWbHqrw6KxK7oi39qGGVIyelAwD8WfIImIhOEFfZKgH2NQu0MB3Fs7jM2wXkl5zkd73KJTK1Ix5bojmLEBmGTZA7YEUjq1Kz5iYvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769188434; c=relaxed/simple;
	bh=A37ex56ZIX/A2wp5OWARIND8OQ1d+YcvpWY0RGQR/M4=;
	h=To:Subject:From:Message-Id:Date; b=FW9wt86XZ/aEapq/zxhVotkQXx71S2NdAWEFaayYLpi8F3v+1p940/lES12tcNOG5vW/9f9FffjMO9uxJb3/y2ItvpdsSV0veqDopzTkeYMRSWcu9Y5I1IXdbLWSHj14x9QgCgpgXCcF1IUwpS0a5HMlRWi/RjykBuPgSVaNJFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lPNXcfzA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lPNXcfzA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CE0AC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 17:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769188433;
	bh=A37ex56ZIX/A2wp5OWARIND8OQ1d+YcvpWY0RGQR/M4=;
	h=To:Subject:From:Date:From;
	b=lPNXcfzAzs9F3VP0dTFEFNHe3Fkbz0Nn9SpubW80apLaP0OZuKfUB21Thd5RTD7jD
	 lFclyMKzmdZeE97wqNoZxdg5xyljDO/NiD1fQYBY3AbAnuxa2ztCjXYo6Ps4/ccORP
	 BT8sG+XC+fUm6ji/z9rMF10E+kc/or3HLOMdieieChV8rlE6yvws3oPLPUF9zP5yol
	 snBs/QdrM2zvUDa4cfbiKa9mBoFQ6+pYk29FR/Gox5mOy91co+wE74U8LwV+8oGcKX
	 2SbCIMgn9E7tuBEIfypbsZg4AWi+bVM66hdYVEyyDObibhjFqNdu3SvvOZS0440jfK
	 hQ/mSuCcrZvSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA08D7788E
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 17:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176918843358.24595.8851363094164292910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 108e2e56c563f2c8946813a4df26c209a9f1fcc2683cf97c775572a2e8476872
Date: Fri, 23 Jan 2026 17:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769188433
