Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30D8F1DB95E
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758676194; cv=none; b=H5OsAOqPPbpZCveJme1hzeKDg/zsMQTV3Dejs0O6A0arY5Cm3eZYtDsgNtJNh2KgssbRD/FcQ76xfl+cuPE1Si9up1vevX/Ug6ESXjCmcyFiFumfNPiUHo2Mz1Uf52eHzVAg1TnAS0wu/jiFoB3P82V8Rfdpl79ZtK1zutvGUhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758676194; c=relaxed/simple;
	bh=LbTtmS7SQV1bFQmVhdVSJ3gLytsEzHJjmiRz9l6yGdQ=;
	h=To:Subject:From:Message-Id:Date; b=uatqMRQYEp9FWbSdZ7FAghvch00lWnmB6iR52DX+kpANi4Qm51Qn8aZoBhVRBB9hcuhzkVMlK8oSCpf+y43vwiqKK+W0V7KDyIz2wMZiPs9ws1sMsoJpGC+FvWDdyO12BN3FI46hZKRWb0x5Q139OHM85XUg+u6WPk0Phpqc+5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sO+VNC2Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sO+VNC2Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A046EC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758676193;
	bh=LbTtmS7SQV1bFQmVhdVSJ3gLytsEzHJjmiRz9l6yGdQ=;
	h=To:Subject:From:Date:From;
	b=sO+VNC2YAiXC4rHdJlKH1InujXzjYSTSd6THjMj7RsikE/z8ngQoyH7gbXzUFBNpr
	 Zj/Ou3D6F56RDTyRy8GwOp02SQ+sPEY9Awv0emB6ZTHBOdGh8xFmpn9p9VOUBs0CTQ
	 hPgYZ4nNrze92h75F5iBiAG9Fi+r6yZ8ZqDi1bTGrTpNtpABKLbonPfBxssqTC5BTc
	 6fbC7jjSazUzaCd2f5f3SHAFscdr1EUnpuooZ3UOQp+kKIGt+jWy8uZILBqR4z6I5z
	 19+PIsEjHxOEoLx9YAwC+DAqSQy8hAlXMm+VuAbODwCn6mp8B8nLEHyQ3N1kCxRhGA
	 RS3XWaN+YVaOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900BCCAC5AC
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175867619358.14451.1017469618815135792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2373c91bf9b88f74beddf32537e3ed524a6b0af2a813c6645baace78e403b6c
Date: Wed, 24 Sep 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758676193
