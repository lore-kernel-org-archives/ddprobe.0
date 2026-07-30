Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 401FC326945
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785403834; cv=none; b=K9K7ClGd3hd5EG9faSxY62U6dilRnTu5zcK6fCVScMmyIcC4AU/l4Y6CTZ9ZPV/8EmsrssMI5r+d27vjYeLww4/t8J+pxWMf/5DymLRB7KkKkro4M9kPOmCAWfK8CyelRTMRow8nLtr0pCoZSB5MU4Ef+LgNIQha0mKKivUvxkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785403834; c=relaxed/simple;
	bh=YTqgar2QHVWZHxLkDqWFAUAtu+SQ6Frrj4mD2tva4W4=;
	h=To:Subject:From:Message-Id:Date; b=tm1lz1fyfA/k0jFEqMmvkGftLKvJ5TTwJzfKAdIPPnAtwELUuypE1Ixpw2n/61DlHvbPoQFQpvRDeGllI8dNjcEdVFQ76ekMcG1++cJv9QNhlnCk9DOQY0IOGrtg0GmGdKzdAuGhNMRDxXXE/RwdXXSber7HkYpaD37zp6RokNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=agbSP/Iz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="agbSP/Iz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC9F5C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785403833;
	bh=YTqgar2QHVWZHxLkDqWFAUAtu+SQ6Frrj4mD2tva4W4=;
	h=To:Subject:From:Date:From;
	b=agbSP/IzrrLs9lLVssPDxccjKhUwZ9VloUhFt9a/36cFpUOno6FTOcnP1IrvHItTO
	 MSuTpO4JhXDF+NdltRDy8wVBe96IN2+lEdhPCdykT+Z/inZKRnicE3jL7Cyh1ymZ0U
	 sEMCdlLBppgGsjnlHoeUT5zVRpl9Oib9kDzTokaO7mxBWhacjUNkwoKiaIa9pqdnJG
	 Dkm58HTWe3EcY/X3X6UmWYhaUAcRU4iV0jLn86wUUjuMcZY0Lh6LvKldoGMa39h2mo
	 AXpvr3K//oWjpQOTTinMswi4kmWLzXRmSIHqTzihR87DQloLAueoBcEzZkKJCxTU0M
	 CxF95RcrxXHKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94EAC54FD2
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178540383368.22716.3284911303996803633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a06c9f5518997d1f5cf8eb469345b9dca8cc8ac773104b0aa91d0dbe0fd23ce
Date: Thu, 30 Jul 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785403833
