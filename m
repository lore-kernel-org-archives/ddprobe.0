Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 091763659F7
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 07:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773386094; cv=none; b=MMbxN7ynkHhqLyYEEQmE4J91FIav/jn1F7P1AJaeIwZI6qeUG7BqX8u+VGKHKRZaQyFJ0Ssj0wrhvNzwAk/F0IDegGfmkTcwKgXVvvRL6yaeKJHi7xZSuZzdyzIdy0DzXSW1YB2Rm5BE1exLGZeMWQMpncWmLNAJDmBvMCq6prU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773386094; c=relaxed/simple;
	bh=JFkZHi5j8EQGigcAI8CRKSUpzBk1c9cWhyc5AjKf+VI=;
	h=To:Subject:From:Message-Id:Date; b=R+rb+Rjgbfqw49d0Xk46g5fkYI8j8pGoCLHiDApdizY9JrQY2ADx8PuYrMopQncA9zeIaZj9zgkeOt8qQ7CK2PdVQeC0G22xfHpwK8WfwK8WD4QEV570XcJexzeXIkFJ+HqecS2H1juPfIMJoDzSStArL1VSpw4FlWzgse3giiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gD276h2M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gD276h2M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9704EC19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 07:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773386093;
	bh=JFkZHi5j8EQGigcAI8CRKSUpzBk1c9cWhyc5AjKf+VI=;
	h=To:Subject:From:Date:From;
	b=gD276h2M01W5P2bR95sENLVjpSQm9XALZ/kU1BrRTUk/ic8pEJOcwAFMcI7/3YynR
	 SJCLriqBwjQS2EhXqQQPcJ9FVQHapYkhw0u891C18KZ3MjGvpZV5+qsm0Lr3KlpK8r
	 Fmy5G0X2ofhIiOpFSmlCPcN/kNfUNWAmEbhAIiz3Xzi1MztrbhPMGKdDsOHvHyv59o
	 fNdhebH7lc+1RIc5+2Zjtt18OkLVQKCoKps4twWLl6GQ9K83WEb8/wK74SYbtjzCxI
	 I4drJk9DaizM5xsKbYAIgBJVw6DBHQFOKGCTzeZhVjZGgcYaZ+lrrtRUZlEQFaw/L2
	 J2wPI/uUAshXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F02D106FD87
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 07:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177338609357.26976.10810931487234849160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee668a3b9223ec6f24cef9ee96191950db8c8bb886fbb38a6954b6b59f2144b6
Date: Fri, 13 Mar 2026 07:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773386093
