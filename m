Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14411218821
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760401194; cv=none; b=mh6twSTu5+fZBTKPe8Mj4yVFpSzFChGrfn5z6wjOPHCV/2J7azqrgN/j5hH8XrAGMVn6DHDLyJ85TfML0y4x5H1tFr8jAY5GF5bs9MeK17gbILX8mK6iK04ppapq1CeBd5nzEJO2IOSPWLmOCL2QT5TX2ca08uMtsYvD8omfUi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760401194; c=relaxed/simple;
	bh=w7vnZJtijFl7xdkRaNklkrh1aHyNGxA4EBqiBPlHOW0=;
	h=To:Subject:From:Message-Id:Date; b=BZjI60gqlZu8SdVKNkKIOcjYLNgBskl4JQy48y6VWVM2Hp5dKZwE2VB9H2Mewc2pCERnouoibcOtuLyer2PlML9m9RNYfgCaKgBCcwjEmkxEVnXD1uyCLAdXh8Op/TL8SMlz3TeNcKz4VE8b6BAF2M9UjVHWvNqUNqHyrOj+t5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z07pd4+T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z07pd4+T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9AE5C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760401193;
	bh=w7vnZJtijFl7xdkRaNklkrh1aHyNGxA4EBqiBPlHOW0=;
	h=To:Subject:From:Date:From;
	b=Z07pd4+TMd8iprean8e6sd+UJfsMRk/2GvOoiP+s4BN9M3fVuXjduq27MCwRY+tNB
	 XB0/xZQc1Vwq4+NFkpdoohRtKuSdJeHqWL3Tavk98cVlqL0kDnKR+qXkyT9obXzTp6
	 /V1NdsjWZJFuBa8wkSzmg0XSv6QpJuhTRvS1gHRqIBFWFs8mMV66AAwiSkAPFCpaAI
	 W0ESDQRa6TR3vsZm3V8A7Yijq5/XJxn9oxbx2WpSclXWlxOHNjtt6gaQDv2/WQgfTy
	 311ifgzfMYh/L54VnAI9XVcOyqPIsj+6CDi1+v4aZgB9QN6hY2t4tjdeh1n3mPJC+e
	 waj4TOkv5f+UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A0BCCD185
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176040119362.17333.16899555312652646005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9452990b694cc43d8baf7f55e7a7fe7de42bdf09069a6dd496e24fad9ab295ab
Date: Tue, 14 Oct 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760401193
