Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21D631FCCE7
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738777554; cv=none; b=ML44ypLQVKVaGTIdYVuIa/DKxvjsLJuYB8UihtikPqo7V8bGCRCpvrV2kJ75MKAeeB9/4VsDXGHvV0fJglMx2X4unPgzs4c1RZtg0V44Qu3uf61SSTPmBzLPLd4ycrO6DMxg1k8vOSuLvXCz4+v7CK6kgSFy3OBfsnH9ZW2RWkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738777554; c=relaxed/simple;
	bh=2WGpvup46SdSmdnm4mjgJ6knz7lhCD8iHoDgyB97vZw=;
	h=To:Subject:From:Message-Id:Date; b=H/q0IIhbt5+pqVbbenofXGFjfOV1lUpCJA8U3Vy/PCImeIiFHsNV/FLAr6YBYUuhBam0L7XfjrAOHqsTCOhO3HxLMbPmuW6SBxBtmMHQsFagMYNcaHB2jgt0Lz5kpnyqcFUSstff7NgJSyfUNfVCoTTYCwGMjaKXAOgkyR445MA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n0W0En20; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n0W0En20"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0625C4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738777553;
	bh=2WGpvup46SdSmdnm4mjgJ6knz7lhCD8iHoDgyB97vZw=;
	h=To:Subject:From:Date:From;
	b=n0W0En20C9XYbTy/HONW5LsxSFBbzBdxyeTwhrDMn3l/IaaYNKjDyrKu0bn2U9vZx
	 WIoTLLU6asWombB8Sr4Q5rrccE+sG7K1BpReMmXV6z9QwWDJwOl9IEgmCpa4q8RKnc
	 0hOZuJaLNi0wij/B3d8jyj+mTgF3ZEU39hod30cxQhU1a/8IJAmgmrzyD1LKGpz8U7
	 7JL8X/TKivyEk5v/MFRnWnb+EvuOuKY3tCR43GhuN71Qk6+DpuOrKg84izvLK7tYWR
	 PjjlabVjY16oWAS61CY06jnz6Ab5XGMKI1Z6+1EAclNqaUc7uJvVFLnYeHRZPJHWsR
	 RLhpIxwqeI/2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99CB8C02198
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173877755360.31837.3594368620011403867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6aeddf5922dff799b37829a7e17a5a52dc4a607aba668977b11d2bf6f695dd39
Date: Wed, 05 Feb 2025 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738777553
