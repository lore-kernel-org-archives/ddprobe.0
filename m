Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3794F227E93
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744018194; cv=none; b=Ps5RDukbQBwWAWlaTJsMBAH7sZ88fv4Xi0A/coa+c0xDdOjLoNo94pg9wizlSpqma0mH9Gw/qyelqchtSbsgwgdGg0N3MAoLzpXeHGqME05SeGLUSLQsRlYRV2XtQwOr+iz/VoBDyXKnpKwDWVZYXvydEB1vXPhs559Y0cEgCdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744018194; c=relaxed/simple;
	bh=wTwHMtl9KegXDFav+hE3eR/VAxjg8884Ccn7jvA0GuU=;
	h=To:Subject:From:Message-Id:Date; b=ZcF5rRSzAHdUjEBhuju57d2+mrbv/FYSiXBICRC/zfQc+ATM41dkK08pLwJamFVPSVDbXn1vfnsgN9ZoJrBmJR01iQqgPdQ/+EJtci6gBFNxASAGfDA01yIfyS2SRlkoIuOff3SIaSib2fNeC9C7+tR9xbU4J9iKaEwqteI5tdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rk8ffIGs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rk8ffIGs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7EC5C4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744018193;
	bh=wTwHMtl9KegXDFav+hE3eR/VAxjg8884Ccn7jvA0GuU=;
	h=To:Subject:From:Date:From;
	b=rk8ffIGs33q6jmEdT3TIHGmDCmg7yGVpCJUrp0jR9qqu7JXqmYnELYGliczafh/wc
	 77NruGs05GSlOC1NlfLJu+eIVIqeTBh5PRgRPU5jUPjxPumynd3Dwem8N42dhP7Z35
	 Hd9l+/aigbmLaoDasMbbBmh8rbOM3tvVu8MLi3ryEqWz/mGBv8q+z5cUl3sQMfF5jQ
	 CY+goA3RkmVLydA8IkhYuawQ8kqkA4ruhKYQ0yLaUjlILOayDgYngyZU/XxMrXc23I
	 RmOd+hHQCAfXDnYRfiZZpiGPe1yEcr74vWDRfRWsoeNJ5TZZXDQv2gnBcdEqbuGSBi
	 hABFKnB6nVRFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B3BC36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174401819357.15646.11048985891408320498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd48710ad86221b3f769dba189f0204da2e16e18fd7b887cfe752660cf33ed97
Date: Mon, 07 Apr 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744018193
