Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 210F9EED8
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 19:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776625654; cv=none; b=m7XsPIUx+JTUrph6Z1k9S8gGSy6rO/gkG14PYz/ld3M5uVeBzAGZpBKXZIf5Yo59UIkpm2Al/Y76OVppI33E91fmbVN43EY658GuABB982TS1i9wMJW5xDxAeHAsRBKfAt9ddKwaTBZ2PlAyqSFuxtTEcXdUfgpZR2R/B/lnSQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776625654; c=relaxed/simple;
	bh=CqxUslcqb59xJ7FJg1gDm5cU7WJYte2O/tfIukux9Fk=;
	h=To:Subject:From:Message-Id:Date; b=QuM47EvpXhI+LB2Njz6GzBSn+KpXi0GqXINHU6aBePqCYQettXt9w0IdjQZdUJd+tqOXwch3txe5ofp8+Cq+CSNAWNyMp88ffsn79FVjnsNf8gDF/dFOLNcyV0yiyLgeNxzuohr/Erk5v4BoXW7uxd8a2a3E5jSm2riGpwWmIu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d3oiI9dD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d3oiI9dD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD23AC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 19:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776625653;
	bh=CqxUslcqb59xJ7FJg1gDm5cU7WJYte2O/tfIukux9Fk=;
	h=To:Subject:From:Date:From;
	b=d3oiI9dD+5lVLX06sfJonRB92bIzxfvzyOd24h/xbmzbLd4CnIBFT4J2rTyWErLeb
	 6vymaIXS9Lu1WBaiJ2/VW5g3zwwj6N7FIFjy87knoS3edp/pJVkowfXF/o/SLqgPHQ
	 cy72xhTGpHZdLLeafqCg2aPSCBPmh23/KGhvwgJ/WXjPJjPDRz5AZyrSMJJITjTd0V
	 1AqnhBM42mAJYuIJPYm/t2jz2JJh29EJu0hV9rS8UM8cnLWW8M4TFs7Gj+Z4g0WExw
	 Eh19yxevR3hLz7vH3/H5oeNKN4GAaTi77pzVwKi7JhpLDxJblTYKxVbeWTtgwf/A6A
	 g06kP6ee1JtRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2A0EA71A1
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 19:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177662565368.28243.2629990719296611190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 843346edc0d441f50e4f50712af9bbe775eedefeaf49c27fb09d99f86b8dca29
Date: Sun, 19 Apr 2026 19:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776625653
