Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4661047D928
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789044634; cv=none; b=jMzH/MHer54CiBnvF73TEotlP+Fl7CsjAH6h5HyjCCvzrAoX0KXwnDfqQLZea+wOdYEIc0+gVWR0PVH7zPmnG23ZALxdPFoLSFEkGDXDi28rXwZ8LMrlkGe5WUv2sq2zjQinCmwDaddZy7SrzD9KTCEUnfvMiOwyHjn73NuaYBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789044634; c=relaxed/simple;
	bh=Rd5Dl7Z2YbAiVJtiS1ZKoCIClsj/vBSJxpml7szr524=;
	h=To:Subject:From:Message-Id:Date; b=M2U5f74QnSeseKHx5u12V0itz+kcZ+tu/SorzLkdMaiKFDgOA19zxenTuZTTWAW7TE7idzTvNBM7p30bNr34W8xhJgxUQTHCgMOWO3YxnG9TYlAGzqkAfuImXdS5XKA567tvQLGlqKoPP7WD0ynJgUBzjYfq8/qCuRRPhuT8RbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JyFesKkJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JyFesKkJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE6B4C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789044633;
	bh=Rd5Dl7Z2YbAiVJtiS1ZKoCIClsj/vBSJxpml7szr524=;
	h=To:Subject:From:Date:From;
	b=JyFesKkJRWme87MWbnQue+1DBmUi9tR2wgNpM+cqswWtXSM7ZUowMCGeu9pyHQbiB
	 4eX4oG29gxUbbRZMkQ1/gkVXwGCti45z6KUGhzOPWspZgeFwOpVVyu9LDgLHtbBaBG
	 7bGkLmHFcVAv0zKz7RSHVEal/GAQuMWMTdd8wL7WMjIacDrOp86EkP/Lq2O6tE0zHR
	 KyB40yDwXMrvsMYJx3fRBZxWqry6iz54UXgiT5ZS3pWa4YI1h5GOpjiW/16WjYgTTv
	 31HrdJqWHkl0IhtblLY6yZY68zutSJkpxRD3P/wB4/T5nzDyTjsayJ3WKTrWjBQzfc
	 KGuiqMtA0Spbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8FE1C79FB9
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178904463368.21736.13715740574021958078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fea5d9e4022af43daaa0a6507ba79dc6adbb618b03c90fd24e6dc823cc011cc
Date: Thu, 10 Sep 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789044633
