Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 361291B5EB5
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756061994; cv=none; b=p2sxsqw5No0g2axA5NIIMO4jtUHjE7QKWq2ROyO6ItCz1DZmnqXkQPah6Lo56EE5s/Lr5Cgn8gg8gbRYe70dsWodmrbz88l4i99SKzG3oHQy/vZ5L2nCurQtkktAMOXfLe5EmCr/dUCYkjaFGdkCn3zsnrnr2blvU21PJQG0Zbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756061994; c=relaxed/simple;
	bh=ps43akou1DDQFXvX17HN1sXuoN/7g+F7XovDKmBOslg=;
	h=To:Subject:From:Message-Id:Date; b=sCXFmxMalkyy4FHRcQcseeKDuzH9uLMG3IkmbxCpA6hxeyndnvC+llkcZzzO4LEoCqRAhse0QseT8amwj3dEcdmqUJuRXurPUUxslusanrjNESZlJkA0WEsXnc8uAbzPmkx+4XiFYtYfLdfbbG2pu8oFRkHn8S3Oo5ZJlvilMb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ibx7UB6I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ibx7UB6I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2026C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756061993;
	bh=ps43akou1DDQFXvX17HN1sXuoN/7g+F7XovDKmBOslg=;
	h=To:Subject:From:Date:From;
	b=ibx7UB6IWJ54hMRbrVI7IruykDyhmYA6eXe7ZaiCFYjnP1tC6asaerElZcOs83BAb
	 5Ohj97N0r3FIizhmaG8+QAJQ3WeXZ/VAuCY2dsFVjuOk36xxyhZpjLM/4M8z0/3WAG
	 AGWiHLBdjfboz5isgbwUgTrpPs25r+dTtdDqNgFIPD1g3J5Iyz4fjkyB9ZjOEzGq6q
	 4UuRQaeN+6JJEnx/q3pMpEbX5j1obebLvLc6oJ7OIPsFZ0rtlBbmkVUJYJHPvmv6D6
	 Lz5dajjYceiK0e3h8WVIetGpC3jJsWkp6oVWmbXYbLfeUcJ7y8JWC0DHgM6ffgJ+qG
	 tTQBCidFwb6DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F764CA0EFC
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175606199358.28055.9988768178020680428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27a28327b5e46b41469e93202b8e4ef3cc61de4ac74a3335af518a550c25119f
Date: Sun, 24 Aug 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756061993
