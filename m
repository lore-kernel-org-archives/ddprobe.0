Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31F571A6807
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 13:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783863514; cv=none; b=P4IHSxZyeqyTtHo07zAEfbdmu20wDhih+MCEJdGOZJQXqsFWMmcaVap80kXzSlgbTqZaFJnFz7RbikteuT/K/vasQFNZV8r64OLWZe2tedbgmnztd+gEJGcrScYidufrW6rQh6zC5l1yfIA2bZquopQY2i164QjCFgP7GNCNb/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783863514; c=relaxed/simple;
	bh=3RcNC+9OdfcfKi3GOa9HbshWTozc7aMsOoCipIMuu2k=;
	h=To:Subject:From:Message-Id:Date; b=NDmzPIoFZaYttqTCgwD2axbERQ3+8FWWtJhs9HTf0PDuNrj0XZeAezvRM7wIjN9CiOCzuDRove00JUWsNyjwSfEgGz0rxPPenIqwy8hWB5CRM3XBZ2hJ6zV135DXRVpUyCtdEavkp3Xot1Ulc2ZPzKDvc5tOtrnvf2mjwD8eMU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XmBs3ioo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XmBs3ioo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBE14C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 13:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783863513;
	bh=3RcNC+9OdfcfKi3GOa9HbshWTozc7aMsOoCipIMuu2k=;
	h=To:Subject:From:Date:From;
	b=XmBs3ioosE7RZOBBOdFvB7LItlxp4VsYaYVNJDil0REYwqLLPtQ27AjRD8qYYQXJz
	 fYy+J3leYrnHKUeu4OXMcmruBm1G+FIViU1Bj6Y5hG/dfVln14r6I9YPdngBRaSGua
	 v3XtpSPHullnOYrk/DqBW9IGxC/Y1M8UMRgf69RGWHCugf4FUgOLRUPo16wffIezeH
	 CxIXF7+vuMsD2p8rVjelm4quT2yaoNQV7H8V7RoWIMItu4jibM5Hyue4L4VIJqm7yf
	 Nm1xlx00e+6LdIbpta5W0z+ax03Ap0qqWx+jWCD8oopvC2zQjSKZS8jigeE+e8qbaK
	 ndxYN7cfkeohg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A89C6C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 13:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178386351368.15599.6368690373578684200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b416c523d82b99aceeb64fbdd149528219286609e04f5d86eca67ce1c540bdbe
Date: Sun, 12 Jul 2026 13:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783863513
