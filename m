Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10D6F139F
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 01:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709861297; cv=none; b=felglQDt8YeDNTFnclIazyjyEjyN3XrxmGDGPc4wlTE4nx6NVXQeRCARMlhKgFP+NjFLhQLO/TMoQNA734rcA3KKZT0bac6N0BgZpRgCGpeaGg6iVGKceN8M2jZsUwtHik/JFovFPGKWqee7f3SCoHNE7586DXvgtsihXKYcqUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709861297; c=relaxed/simple;
	bh=tPGxC/uSOYVX9B2B82HG39v0MDbYy2ioL7swfmyzK1w=;
	h=To:Subject:From:Message-Id:Date; b=JPP68zSvGZ06mRhisLTcGXEw1uH+mbEvuSZvokn3el6/XdxrOHGrYBLIlKBG7Q2BMHzz1tRFeD/sz0BPwb8pRa22KY0e1nGUfG3sq4APlUSUEPXiGKtoLA66zFhDG+wBYFTvjCas+/8bJb63dPNXdSC6GFn/DxzwgD8VOeCtI0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tkl/LA0Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tkl/LA0Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82408C433F1
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 01:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709861296;
	bh=tPGxC/uSOYVX9B2B82HG39v0MDbYy2ioL7swfmyzK1w=;
	h=To:Subject:From:Date:From;
	b=tkl/LA0Ymj0Cj0c+t6QYaxxx4PAIwmGcnze0353rJQH+DXRqZqqnc5dYKz/GI+He7
	 z3oSbSRfr420p2C3RBjWgr8NHIww0Ji4dDdKvvyxs54iDtmHMism+bX1BERzdoR5UE
	 EwhVi4rSaJ7hTNJtBtO6pqM5aqjJbEGArMEdUssmc54YgPxA3lL4vsPnreHxopizhi
	 Jwa+659aqjZFqqpozPeJaTfI8ljCBya+Q7RIFxfDRrOSSgaNa+hsIdUXzHdV/zTUmv
	 wUyUsiCfQ19xEcTAFBaIkJoyXXBI+v67bzxfF+wL5PRgn8Swj/c6oF3RVGes2+BAVl
	 26CYofeEVJecw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B423C54798
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 01:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170986129636.27665.11603588366892362114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01193245baa045767fea554030ffb36a212042f615efdfc34d149aee27861b3c
Date: Fri, 08 Mar 2024 01:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709861296
