Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 259FD2DEA9E
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 05:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764825174; cv=none; b=cN18DzTJ5yEjbQsPBuiAlULq1wD4KIIlr0yEY5V91echuA4z3ONbAjUDRbYejbboR+t0uppBeyOCRq1ckvGNBYAYJQGcWgf9iVqy9Fs2PFS2PztUcPsSwfh3A8p0V6Dds0ugb79/9RF+Fk0dZ8RIF19o7woypLtDIhZrBxeBTYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764825174; c=relaxed/simple;
	bh=sUuXfijnznEyYco3CFpzdm/XBmcD6j1TcK8wCfcCIwI=;
	h=To:Subject:From:Message-Id:Date; b=UrPCJk2QoCUxDNnPTx2XH0EVYPCtNOUJ7SceqNutV76oh6Two5Tq1MQZQV46hiieTm92KD/MQ8ZJWkwJzc8obwiW5MQfC4w1F7UokQNTavVG7zkz1gB4jr3hADNikewVZrEeIv4q/cPtxzQfADw4MBVomocdtB9Dvbn8ahtlBok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vIJQoocC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vIJQoocC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB012C116D0
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 05:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764825173;
	bh=sUuXfijnznEyYco3CFpzdm/XBmcD6j1TcK8wCfcCIwI=;
	h=To:Subject:From:Date:From;
	b=vIJQoocCvHbW4GzRmNnxiJWoiruI3bZRr2K2Ywnnpo6vRi1sue3Zs+2Ub8tUt61zF
	 F2FmrYPdMjy6ZQbsl+ZQ+l+Rd0zEMxvEY/SZxJX3wkJ0cY4FpqJRHe1YFFWUhh2ytu
	 sl/3KP5CYwlHzenIlTFJzWRBtowTd7sv/gPqjH6rcAFVfVIbRpi50nVZDdYuqtQgsH
	 Ig4LlsuyhCiz4SjlQESX/c0C0rfdDXwzif7XfqEHcgq0AlXq8COSsdy9Qe92GXOqws
	 d+vpqsHuMThXV8cscduwSssvmwCQ4vC8qu6yMlWh2sCtFx+Y+eIUpbSr0/dYNV22IP
	 r7bqIunH5pTSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F5AD1CDD0
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 05:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176482517358.29975.308634254470327127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cf1de73cb5db7882df296e2bd3a8ffcf56736eebdce24b373e641fe34539b79
Date: Thu, 04 Dec 2025 05:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764825173
