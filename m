Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31FD63B9933
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 22:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778797234; cv=none; b=A72d3DKF7d4dX/md1O4ffXFE4N4Bw9TNBl8yCtjw07xVHbxBhtyyt9nlPMJZ9qjhElkxgG4RDH4LkGU5dfxh5y9sc/b0gtRcq9talnijdB8f3xvFufhEakn4ytGWIRilwXrjUAJmUidFT90fvGb/xDjgJnBoIzwRaj+6HhgEC4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778797234; c=relaxed/simple;
	bh=5XGWjxGfGi34GpcGPBhAVRdGsat1DpElNBxwnveSdKA=;
	h=To:Subject:From:Message-Id:Date; b=fxX5jYhKjdbaIObd4187OWIgRalxGO87UOwAbEjsyw94bJQO1MJC53FS6AgcYd7hqEyvAI0RB4ac2+UOdTc+jrhmBPGPD4qq19j5mOutoJA2lbyDnzxU3WvpmUe2AzkFnq5IWa/qDiXLGzxnNpY/Soe/YGTNJHGhoR25ytPlqG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oMS9+C/n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oMS9+C/n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAFCCC2BCC6
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778797233;
	bh=5XGWjxGfGi34GpcGPBhAVRdGsat1DpElNBxwnveSdKA=;
	h=To:Subject:From:Date:From;
	b=oMS9+C/nqm/42njjw1oCqTxYsfuiixctIvR6xbfXjzMWrC7pHTwItYgXxgq2aKVXR
	 mUmb2wxeCtGBC+/oQvWa3FAdO8Gf16G84/px0HEXNwlmvJ9lsM3zC4HJ36m7pB0hdM
	 P9EmJjsxPfUmXV0ZYOd3BuBFV26lteN15X8pn+UPT1OM5G57aDCcFAk+USWAFBIDP9
	 fwSnCJJig0GpHaEpivvw6Il9cfBqHSESmORBNQcCpVbVD4DpXcE48gxiCpyob5JxTT
	 zbWemmzUlUc6NgXNkTYZZKZThACIbJ50OK9MNHDNVBecGrT2ggT9LbrfP4lb2HlGCt
	 0NTVV5BSk9LlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B34AFCD4F25
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177879723369.11146.6477626968522543067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63956b168f4b742dd726eaeaed9b9909898dbf9269485e47afebc10dba36dbc1
Date: Thu, 14 May 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778797233
