Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5752554705B
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791159034; cv=none; b=FOE1jD8Rme1t+aOgTx1+QhydZLWMmUbkxZHezgnR46ATCPsxaI0t7c3GjJCtT/n0FQT0Om5ym5BVytdXFJ/9al7nYLEnJRzeCI6dXNN2z+XmpfQ6E65KYRcFeCyqPm1YFbXsUCCUH1gA23ZnziD4SYYl4/00xxsCjP7c59snbAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791159034; c=relaxed/simple;
	bh=HAxqFl8sciSNUD5/WNySaFEOazOMwwAEjYqGcjQ8JjA=;
	h=To:Subject:From:Message-Id:Date; b=a0/KSGJHSiPPte8bhnjuK8g7ELwj0EXg3CYXDcwVcoTZy36LC/75BKzVtLABuQ1MASqG6rRvzL4d3h6OjznsqkpWTkSfigITjl4j1ps1jTrJ2rV4YCc/fhrkNr/x5Bx7ob4RhHMcFj1Ac1/QrqMbMPc7KZDVjW27sf1jGvv6x/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bJ59XcK1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bJ59XcK1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB427C2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791159033;
	bh=HAxqFl8sciSNUD5/WNySaFEOazOMwwAEjYqGcjQ8JjA=;
	h=To:Subject:From:Date:From;
	b=bJ59XcK1uIXisLTtSe5sHrGDLWmLpaUBOpIkEdkK7H8ySPAnU2zb1F+PJcKE7dXHh
	 gwK6aJ3o0s2OGETVrfzxyCPxpPMtEekPtg6NILtTi87vgBs0lXlj0Z5gbbmBPix7At
	 S2SAGVYrwoRfesFcglVaWNLagofBl2tN8JPIFt3V8H/pMi1aiQUU3Y7TN7bNLKpBLl
	 JYdupwJUbrBBKLkrV391XfkTSau9cSJYWLSdFkbAnXomVHukrQ+6prgzsG1ITowgUN
	 0iZgW7Hnjar8/kMIeeffjSyvVnmoCpEeXeff+GhuFzFfK3hOEqmU5Axbn96gMGTglN
	 40/rexhwlXy5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1C3CCA5FF0
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179115903369.32348.411433567866783263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01f4d107bc0b8327b7d961a9f0c0dc46fbc850cc1d6ae684ce4c8fbcc9bc931f
Date: Mon, 05 Oct 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791159033
