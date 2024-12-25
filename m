Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61C6617993
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735118754; cv=none; b=eo80d3+t9C1DGTQxF8S5A6qk1taiwnpg6d8DmzpeZTILld8xzUeTnPE/2n/YQIEXm1xGttk3bP4gF1QUTr0nQmwBAO2FtQ2Az0MH9Viv7FE5giuGQgsbB47z8E0fBTQ7j5jpQMKDaVqim+8GsT+bubQ4JpJNn0lA7cDwoZn9rQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735118754; c=relaxed/simple;
	bh=T8HVW8xpYxlNPbg9HJ5IdRZKlZnH+oxYTWii9SSiTUw=;
	h=To:Subject:From:Message-Id:Date; b=UHiurmmuuom6RfmhvFit8fBS2r7LqdujGAlOnzA2pnDNDijHW6XtegKG/5Crkvlwqi2/fCbviATIcQPKuglrWgX+q3TtsuG6gADyoqOMOQc+Qu8xsX3AyEn6j6LuiRW8ovNF7IpeCClEPCjYNc02/H3eBsyA6pSp1O0wZbEM+sY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=or8F0zRl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="or8F0zRl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D491FC4CECD
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735118753;
	bh=T8HVW8xpYxlNPbg9HJ5IdRZKlZnH+oxYTWii9SSiTUw=;
	h=To:Subject:From:Date:From;
	b=or8F0zRlw0yWEDCo5KDfXCfzXUKshW92QypM/7+ykcXMr+Za2oHtE9IdZvYt8pyG9
	 9IOtFiAYEPOjFi6t2lmR7bX3zHAGWhuklsb2UULkDVHoXLKMmn4RetFVQWBbBSzG1o
	 Z2hSkbkw0kUKEQ0twOIgfw4RwM8eR5dKjmwS8aOA7y+NalpecMcZibpR56SjdrV5Pr
	 ObkEMHqPTyLXBjjClTkgYQqDjZUSSmE3nsKC6LOgAuAQwTsBbn64rqSsI+mGSR/iDP
	 XR1ZNAQ7rLkxJcXJ745s6+MNDBr6H5i8jnpQGQ6YZ3vwUeMeVnvgslQo56tHg4jWMJ
	 NV3MFq62DfgIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6755E7718B
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173511875370.11984.6906880318148158691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b701d3fd1e2fe92c81e4591d152fc9b40a54f6ff2fd834fb2a942c6f47e4cc06
Date: Wed, 25 Dec 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735118753
