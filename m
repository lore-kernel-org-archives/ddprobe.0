Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 419D23211
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750471794; cv=none; b=fqZJfZzLuOVNh5CEMhgU4s9jH1QFMX9kQHWn49dqgLa4G7rQJCVqbCQs6qXMwEkF/u2S1pTRpGSi4uZ9eBZwAx8/YPMD271wQlT+dE3whRigo/qlVY0olzCB2Vyd1EqaO8lvfKRTuUmasTo2FU+HjdtpYD+6vF6kSkskUBKCe1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750471794; c=relaxed/simple;
	bh=83+zcT7oReUzuaSIolMAH0bl5uAt842fBACaQdLYJFs=;
	h=To:Subject:From:Message-Id:Date; b=BrW82xEOXrw8IeUCgQtikur7Pq73CAhhgytDNJjBUNNVuqAFOPC6nnbPQX/44OFk75Hqh5ezGdLNLodaf+RwR+kr48SyjPAyEaKdpIphIHAuvDqVKV2oSFnH5cxBblqmppkTxtdjfklR9YEiaVDm91Z/HIF/4evigLJOZREs0zM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WvT9nGtT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WvT9nGtT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB6EC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750471793;
	bh=83+zcT7oReUzuaSIolMAH0bl5uAt842fBACaQdLYJFs=;
	h=To:Subject:From:Date:From;
	b=WvT9nGtTGDRbeyer7BTjy1rAPfSKetcJCv4mRKogUuJ1J/cbeS8rGbNYHpq+tojjw
	 8WJYNKTKfC/iP/wzQq5YToVwOPvJWtLneiy/p0/5FLxWJj4PmMqYGxZXikOO+yiYY8
	 hfj0GGBx3xui/K3E362BSC9d30vsq0HvaJmEmVQ0J0DzLoMzO0Ggeqh5TCoOoajY5L
	 E12E+qdsnfkkMxpqfecAXT5WloriPcghkJ0KIYP35cdgFI0ROPT2sJ/JpyxBdmc3a+
	 0quaZLT5fhMTEUWB7TG7MpA1JPWEJPgkkDfhpUcgYGcj0ghtDo3I8OvpnR9AK+KCpo
	 c9uQBRhjxxoPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F515C7115B
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175047179357.9395.10130901325542991292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0ff096e3d83dcc87c95c53fa053e90d037b18be605f63b973ecadf3ec0249db
Date: Sat, 21 Jun 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750471793
