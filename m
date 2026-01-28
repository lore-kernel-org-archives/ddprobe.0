Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D1F42FF661
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 03:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769572434; cv=none; b=YFJv2Q73nCQGZTikLRqpk3Q6xLjC3ikfthzMvFnmWcyL1gWBjvXQorUfuEJqQu1DESz6eIK2IsAf8ODZ9J1Qn2BvMCcWWK/pZ8HRh0aEbYWJzySNfhVQGZfl1FfD45uJ/k132FugkvY3QTy0pvgtvEGyK36bY7uUXXzOHmDV5f0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769572434; c=relaxed/simple;
	bh=M5lc5sEMvvL7+nQ8s3qsDhC/HotF15bm84/L5g4tMMk=;
	h=To:Subject:From:Message-Id:Date; b=HURO/2vdbPEeDZxlULt+Jil4rSfsLupjwGchOGMqhj4wVRNGpQf7yhjh6RWZG+/zbHVH0SPhZsDmLjyW/ySla0z1w9CuU3Ybo8OkzxEiPg+Cn0F7n+IMfcwFPTIbxpEtlo2L55zVZ645ht3ED21KkZQsh+obzt5OhRfVBeEtQlc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UryvUs1k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UryvUs1k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DCCC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 03:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769572433;
	bh=M5lc5sEMvvL7+nQ8s3qsDhC/HotF15bm84/L5g4tMMk=;
	h=To:Subject:From:Date:From;
	b=UryvUs1kRF/XT1fOFiXmFMdnv42rar3UyQm9jX6JsFlj1YT0wA+eyaJ60RCAstUIy
	 3rJInHaclNEgne1mUOPpmLsPZy7xd2gmSGrXkhBvMYf/ERYpUJS+oVlDRvEhvq71VX
	 hlScwKD2av+UGFozMtFawn1venQMTvbOUYFZ9Ogm/upVi+1RBe2ZF8XXclvHpfBH9b
	 3nnfUnkeh56rt/5uAXvZGj5z9+Unpm1zwRT0K7XcJWGA+Pp+DzfWaZegmORfogXj4v
	 3d3sl9kDNBIuhYO44vQOG36HOH+f4d0fZ+iETfvIt8IaCiUWPWYxuZNYJf+Dv2+xiK
	 plVRhPdv2XwLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B18D35668
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 03:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176957243358.21592.18210686654665060714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0888f70a5df7f26721262d0f7768d2ab74c3660faf4adddcdd850766bd306ba3
Date: Wed, 28 Jan 2026 03:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769572433
