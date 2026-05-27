Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F4AD3CFF4A
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 08:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779869554; cv=none; b=GHaKdsX7DC/GQo41Umj8LzOLFuEnoC8U1ULI7XIj4ZFtAIMrrfGVv63bJxgaTcrCoZrcKTN82MhFVhTiwFOTKQfU9slfi0lM7rMY9yfDtv9IMDJLZOv4TZARei7dh2ejipfzukWs2SsV3q8nF3oZ4nNuE26Fh97Ugb34TWjXVgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779869554; c=relaxed/simple;
	bh=hwK8bKTXKtKr4ETOiRMq5NLU0V5eXHSm98zTj/VCjDY=;
	h=To:Subject:From:Message-Id:Date; b=D9EqLom8x2gVlUnGWLG/7VEq95wzpRTVqlW8GLT/QBN5Sx7pmzLcECpR0nFzpDI6F5qx1lq4vPZkZvhneOZjf/W8ibv7ZuYIVw9H01oWihx7v/W188HQiw74FyvAuNZgKELoR7XBY3c6kqaFVX9TRTI9ikROpox+0T0VXAIawEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lsAk/dyo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lsAk/dyo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C30EBC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 08:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779869553;
	bh=hwK8bKTXKtKr4ETOiRMq5NLU0V5eXHSm98zTj/VCjDY=;
	h=To:Subject:From:Date:From;
	b=lsAk/dyoeaSdFBrGI4na3IkJNqqajZVgfezedN2XPdlZbxg5EPnmxqB1p/fM57ApA
	 47AKJzgcJ2nFKkIEgTA+9HxusZJjUNQqUvPaxgLOAioA+dspHVgOoRPnzjkYX0TzPP
	 7xaAFj4WWYKtQmONQqABkyitAxvmPsuhSR4w2XZiZt+XfpfzOBUoW6v5GBjOHQ4fol
	 /jU/cSyB0fAgfM+SgyUAVvr/hsk9gT245n8o2eHgfjmAIF7kYTZKLID3gQXr0J440q
	 /NxkPreifZeSswKel7jLAOJmsdcU+eWJ3Xl9YlZbRmMOrNaLLeeYVwP+aw6SRwdQKU
	 Y7je5EBcdys0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB18CD4F54
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 08:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177986955370.7469.8298684004883340418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28c930ced53ebf251ec646eac98cbcbd62836fa68b65092dc205265b4b57e15c
Date: Wed, 27 May 2026 08:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779869553
