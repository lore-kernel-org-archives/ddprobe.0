Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1975227453
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761282594; cv=none; b=AtUh4Rglv4kRkuvOYB05bqbBrnnovrOX3HWwaVB3+DUPNJp8hEVl4GUehweEb2VDs9z3Gkk2XiDRybSvqivg8x/eM3M1o/SsRSMNd949t+wNIozAu8+MrO23VSE7k8aynHZL4LpjBLuvkI5wSZRztz80hu5U1/32xdX3VBRykBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761282594; c=relaxed/simple;
	bh=zwxEK3nk4lsJCiROjZHuU7mDwJnDzEOKuiPMYXcZZ2o=;
	h=To:Subject:From:Message-Id:Date; b=pK9SyrYAhirtLv/UlrodVQqMIE5mngOpOnmv4B1M7yrlPC83zm46YdsYMemDm1JH+JFev/Kva75ex40T+H3dlpxbQ4cLKZ58zsVn+z838/jo0FsmLcYmp+J6iVyv34rq2kSkd9SW5At9qDy4SnJ0SQxlDE5i6s+8ZiICaDJr4Zw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nLoshhxQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nLoshhxQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF34C4CEFB
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761282593;
	bh=zwxEK3nk4lsJCiROjZHuU7mDwJnDzEOKuiPMYXcZZ2o=;
	h=To:Subject:From:Date:From;
	b=nLoshhxQt6MffGTxJB8rEg9FhHnhnCLHkDzKNEhz/Ole7184/DjdSSAJ2z8Mw7R94
	 nZV5QBV8S9PDOJkgg6VNjA7bhesiLSqBnshoDdRu+U5tzbIK2v72N3B/ID/ntVIk57
	 t5lS9hfJDeEdLB6NFsrWtVSTgHq6odMd4by4JieRtSBaNIN6T/SBQ+eSgta8xpWBn1
	 RyT9gOj0O15YfjFCwfeWqV06igK2XQATIn0A/o7UgxXl5nIw85J+duh2Nha1tOlIz/
	 1ZQfnmOWdggz9hqkO7za/6JnUhtXAFd74cioJGNh5bfNiQtusSPqdTySzYAupWsyvm
	 wzMBsCUNUchMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFA6CCD1AB
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176128259358.9375.4985021488316240270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 005061f7cabbdd3fe813418a530247853f041a728ec05d6a25d8a3dcbd55d903
Date: Fri, 24 Oct 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761282593
