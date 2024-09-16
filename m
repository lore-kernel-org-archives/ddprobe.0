Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 381629443
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726523154; cv=none; b=tqTqVc1rRxroaIE5Tddw0sCiPQPTH5GalyKtqJ9ZJWsmjBpwDMfNutL2YN7De8nv1+K8Rlrtkmr7eHQXpxWc9CVMy2mKYYuYGRe/S5tRpRacAkh9hU6WSkRF/BUgwgwFUUShUSVaqG9XOKYaJxxPGFWWJJ3QXedwsDTjgjoqzLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726523154; c=relaxed/simple;
	bh=Swqg2HIgVSH1tpJ/QOC8qvLGEhw4C6oAXJuEQue1fDA=;
	h=To:Subject:From:Message-Id:Date; b=rrgYduq4mHcsDHN+Dlm2uWeABr4VRctV1XPiEKM8r5WcU3SzYNs/0DNZKujmcqqIu5RBR+nvutgK8WsTbJZfrm/hADXeAbfkp+pv83YlmJxgI0xkMzYHHLktkbF9Ulu9o2iEHZYRdGCTsVAHTUihyhknml4O0OJUGxknoDm73no=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ggr+kZr2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ggr+kZr2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF0FBC4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726523153;
	bh=Swqg2HIgVSH1tpJ/QOC8qvLGEhw4C6oAXJuEQue1fDA=;
	h=To:Subject:From:Date:From;
	b=ggr+kZr29So++Sj6qTbN9RwtnuUCw+7E6HHglprVIdlLKK/iugf5LBwDKcgFNxaEY
	 zXHHpzj8G3IyaDKu6kKGbW5JO0FD16FimTDKDGBnx9Fvucky5D3v3veUu15RXQyh3O
	 7PhP8KU7t4haLyCrU3TRY8O3a2tMDpD5wiU6YCBpu3K+rqmTOr0MIkBrCkwWXhPt7U
	 USu4Kik5C0tt31oi9kDWo9q8kM88gpu9dABL8dxieBnrNqFdoL6Ywng78Zet6uU4Ho
	 ikSSSTk+elCoPziAYb8fWXD/lBiKKUtpF4ThELmP7Ci6Y4PgGbeIZ18VDe92JAS/fm
	 uUDg0tQOlQwRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97217C3ABB2
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172652315359.12711.17056108972109089747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2eb4389de35445445ce03846e5dc95c18c6d8eea07427c524bfce67bec96e8ea
Date: Mon, 16 Sep 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726523153
