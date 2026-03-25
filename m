Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D76635AC28
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 06:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774421694; cv=none; b=UIlBSVlrhdS600LklLmjOrnRGqU2m4jmdrEmDgz6HNi+dICoQbFEtTcWngB1CUCnDh1bFmgvUMLUKZapMi+uHesw8V4pzkg1YBr/ljToQj5Xh53JAJsufUMcUd6PTHV2e7la852FcpBeXEpzzQBWPjLqk2giUon/DHjANYzWqJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774421694; c=relaxed/simple;
	bh=qvjx8suLMLddquKSdZwyCF2v7D0QJnNfz00uYJWfbpM=;
	h=To:Subject:From:Message-Id:Date; b=Bz/4c6fcfHueAB7bvinm+iEPmN6Heuodb6gKyBpmh/+0WppXB9+fYUTC24QgszCayE1G8SLbKrlgoJYJBNB6K8YNTz9Q6FNXKdkFZomMq/W46YWNVM4g5eOwVUks/TS09cEO4eDz8BIKB3ZwgWUzBcXjKZQjWceq79RsYgzTRH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mGA933In; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mGA933In"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABBBFC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 06:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774421693;
	bh=qvjx8suLMLddquKSdZwyCF2v7D0QJnNfz00uYJWfbpM=;
	h=To:Subject:From:Date:From;
	b=mGA933In2KVGYZ53aC1rqxOhjfMvttbUb1NEB4oz156ZaOJzCf5D7Fw38vuC0n84T
	 Aql096FIzS7zv9GWX9UCcVuoGqmKZMdZGF43VWPe8x5rd1HaG7AJVxnJkST43VFiP3
	 gAgL19OMyRHLsEoeCwOwTTA2shniVJasN98mhv97Nt/b5PUpoyictlNFYOxTJQMgZy
	 eHibmgMnto27nDE6srBJQax7Xjwc6BjqgguQrBCC3obT+54T5o3QbCpSkzlYlmf8OL
	 EXxxy/zfU8F0rOg7X9Q8jBEk1XkbTg6Bk+A+u1A6LjfA1qfLTRzoaKv3n/h0t2PVG0
	 O1tUXbRYPlAQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9692DFEA812
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 06:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177442169358.11699.14574268265222366366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5dbfd053a350226cb97c702c5cce6250f8352787d24f1496a7b2f188d419b5a
Date: Wed, 25 Mar 2026 06:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774421693
