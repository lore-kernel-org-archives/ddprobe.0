Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 259002AD0C
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759348194; cv=none; b=rVoO0nBwoNIYHJ3xYwwdeIFfEoHJ0yNZa4FMbNWETt0sca5FplsX9m+nlkQlLfzq/6Q1PMvFG0yX58R24O/u+QofWIDNjwFvddIeljyFO/fkcUZectOJcZePYxLRrWLtdPLByhxrA0FXXRI3stOWputMSlg+Qb9R2mgw6fp8ptk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759348194; c=relaxed/simple;
	bh=rbywH5RtKHTBsib/kaZgurJx+ORaRDdGzTzKOq3sxyI=;
	h=To:Subject:From:Message-Id:Date; b=bKMbTPQl1CreuiRzJ7F4PDuKqcoefHCgV5XjyOdF0W4ryWQ7DqDqGmaAIq2EjK/RMVh/1oqPc6n2U+Ms4vrkqr0ZnuNlawfE1O9+wmoDX9/OmEBvcM6eBB6oYjejJCkvpxgh6CABv7VCZvMjdby7vJou/vYzrxeJiertYg7dQss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DUfcSnEP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DUfcSnEP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D49C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759348193;
	bh=rbywH5RtKHTBsib/kaZgurJx+ORaRDdGzTzKOq3sxyI=;
	h=To:Subject:From:Date:From;
	b=DUfcSnEP2Y09vHjzw4MbCXfs9omjjfMSZ5LSggRR6/vyn1xDahozIJDIXWoe2mp0C
	 3IqJgiyFcnuRS+AtdKY4EyS0Dj6JsD+ZIPRYVUQi4OnIYhU/RCK4E52D4Xul8nlpdl
	 ua/yVmc7wAAYnfRRYuZQD+0eEIigg4+P326n4//G6iyAZtvwBHIhFUnh8Zvsjjd5GZ
	 LpTpredAez4K1W5i4a/xoB8fO+tXjUJuWC6EXv/UTh8aq+xVhA7nQ0IpTySR++oPLE
	 JD/qK7WfkZLSj3Q0MCYdS1QJvm4SnAW7cGsFo9XhrDeXmvlfqbty+SBjh/DFtcDdHj
	 e9btW96BM/0bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90939CCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175934819358.25768.17277766507777145078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc3d7c067663f16ca7024b23c0495ce607572a521ec0944b43a9f4750b67fed5
Date: Wed, 01 Oct 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759348193
