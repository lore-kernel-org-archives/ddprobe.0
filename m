Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2E902AD3D
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761445195; cv=none; b=npl2USngdHOdgaQGubsClUrXktV86IyIXrv1B2y5whSpYBci6Qet5/kAC/A3tsZAR+amCMChn+QUeA/8mbi7LLN5fgxGPO0lHbw7kGVMFSR/MedEVWe2kI/SchzdmLMVVnZcb5PLAfBS58Y/4hm5k/+BS2Z4u3ymP0YueqMmr5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761445195; c=relaxed/simple;
	bh=kwuoCOunGnsIPLjSx9XewVeD8BrbHewTErgfrCqEKRE=;
	h=To:Subject:From:Message-Id:Date; b=ueqowPUEOiWL/XsrzGhpEj3c1Op8H5rfbsao4jew4eGmtMrKvsRAj/Iu9XqOltuY5VIcRx8U48v/Vha0RbVDL8rbVHnJ3FKG3oM+IB6LquCmLx0ZvmiWhA6dogCtlTBzduAV7U3FulSO0FVeAyFWx36qZ8JQsXAudNtnNgQCVLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZWj2cFj0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZWj2cFj0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81FAC4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761445193;
	bh=kwuoCOunGnsIPLjSx9XewVeD8BrbHewTErgfrCqEKRE=;
	h=To:Subject:From:Date:From;
	b=ZWj2cFj006L96/poOelyRHqFEBFkLS1H37DiJ0JeJRXlzWQtmM3wHCzqzWQapFvTE
	 /eo8H04Dza4bUU5Vyb/tSV8E4hn3QokJKTjTQgX6p1exN3EL19fbXmEsADeyQIDV4b
	 6zmoy1f1r23vPnrpSkWzAIxDIvvs6zW1XGmeeMVizpqZrDwMI2gS/Hckp7PAwgWZD+
	 PXWLTbTmLF6rpxZemyQatoGwvmZ8qARZDtrFh2m2PPzmh0EmBI3tXB1+sLzJorV2CL
	 ma8mEZEbnkCZvA+GpcVvwczcAGVKRaXfOsSzYgN/DKBxqtmhJergsPcyCNYIbTL9sd
	 Xf0ir/UFrUo9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95EBBCCF9E5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176144519358.18400.4601387545268184622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdf0b7592cec2e7c82f2ab9ab0a329472c0c044eb1f17457f148bbef59f5da5a
Date: Sun, 26 Oct 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761445193
