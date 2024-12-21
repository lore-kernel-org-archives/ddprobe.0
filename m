Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 310701A3BD7
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734783954; cv=none; b=MEkUvSyyaLddKuewum485lKchulVJRf7o9WX/k/rQrfNUycPtVxY0LdQlcDg+2eFqt5zS8MD8BcfNNjfIquXyqdcr0YrVEHCE/cYrvwHg+qILJyx38AiQsHvxS7CJbtknpnNsZzdHKy2kxzJ+DYEAD7n5O+Q8tKcrlpXbJzeKCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734783954; c=relaxed/simple;
	bh=Q1nnD48DGiiMDdTpAdzlyu8TlhUvuopBWYX6qTvDQHs=;
	h=To:Subject:From:Message-Id:Date; b=OBAXzAjNLqNkqI6hfa7ajzARka9GwsMqOzhC+nn2hU93mLkopdtro5RDnwBSbkCJlnIsoG/uLFPkSdmftSwVBMgxxihhOyOL4X/ZCfQVYg7hSe37uuG+0pwms54aug7n4fYkJy7ynZz0XEkwl6XbbHWhO44C5zlaZq18XSsaUrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qN2Rp/Cc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qN2Rp/Cc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD62BC4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734783953;
	bh=Q1nnD48DGiiMDdTpAdzlyu8TlhUvuopBWYX6qTvDQHs=;
	h=To:Subject:From:Date:From;
	b=qN2Rp/Cc8E40QyXSWbp/UQtgQkg01lnZU79tjFg3NUeCYzruSOfELj9qkUuvwaR8c
	 ZWsbVF28Pgb+cfqVB9SY+gKOuGc5kD5MchjbFvCCKByDA5PysAGk/PMafT2Ce9ED2F
	 6e9uXSbbHv8+21mi9VW8NMsGfDiTa711prX8cH6Ey5QaZgEh6TzYmrn8mJ+OrgY76y
	 DWIribC87n0sPbChw63AvraCUsmTyCgAU1g1mO1fdwvQFmfGUNyKOHEwuvsqdJc3Cu
	 dfXM0jFa17pdPv8lLp3Fn1rR26JPuNuaupYSq+oKrWtxGX5xwyK6zrpFOBF9s7A+si
	 VTUvZEi8WUycg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CCBBE77184
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173478395360.22421.10384034577841664142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8faf5c38e74fb7e2ba157f9ed5a59c208e70bbd5bf97d9d74c5a6bd52cf170c
Date: Sat, 21 Dec 2024 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734783953
