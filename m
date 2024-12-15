Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3164A1DDD1
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734302754; cv=none; b=tUvY0DNrAMPKyFgQgvyEo1omI8ECKzHEmJSua2vVma/CYd5sCMCyhjdFMJn/1jaHwTjCVaINup8cxtdpgfOYR3VKRWyKgHHWFXONj9MvnSxSOzSLXOrZwHnI38BoK17LRQ33cuX5DvPxpEk0WcOTwuh/ZP0gONONPwDaHKUsDdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734302754; c=relaxed/simple;
	bh=iT83w+nzuXITOouljTu+GBvMpYtyg1w06oTckeFZVK8=;
	h=To:Subject:From:Message-Id:Date; b=NmrdLW10ZzpXypsvV7GRtO6zvEfDJNH+6WNXtBkgHxgqaHg3gUsi57EYHyjoph5ZwpctkX5BnYyH1XZYhwN/welTA5+wqzzhrDUCXL+yos4s/Rbf4IbIv/d/yBVtEES40SIqwYp2l6w3A+NqPfY1X/GdKpQfP7agsnBWzsoVfDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BdtnIYjf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BdtnIYjf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1B3DC4CECE
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734302753;
	bh=iT83w+nzuXITOouljTu+GBvMpYtyg1w06oTckeFZVK8=;
	h=To:Subject:From:Date:From;
	b=BdtnIYjfCiKmXKZln96PA5gPePUREifUdo0XEgyfknhdMulZqlVo13Tvl+jX2b8Sn
	 j6qCU/MEt0dnOfVd28CYVPerjk1W1HkXuSORx5gF45d1XdKms8EP/bBVfGwChgeOfw
	 zCVPdDomE8+8MjYxu6dsKwjpl+UtTu3rg5IRo4SFf62i6zL0VbV4tdvkt1PjKfeAZN
	 PC2qB/OlaNV92nAu8MvfoT/vQsLZrXynmmluPNQUEiBt5qRHOoS9ap/kuHAXCcXTbu
	 qB7iIiJq8F8cwdW09KZa8eQjvMLBvx7v7TcADXD9ILdKAQfBhCJGQhgxoaFJd3JjcO
	 WJDilfjG3UJRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B854E7716A
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173430275362.28221.12481717916253116312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1adf4398dd9b3955349ee4eb149169bc0735c868a66b331ac42e9955e83386c1
Date: Sun, 15 Dec 2024 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734302753
