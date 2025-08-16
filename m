Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 299852AD0B
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755310194; cv=none; b=ATxG/OYZ4u9PxQyogKmzz3FnA1xJk6oTXtMzC+NBnpNiHiNDHgocthm7m+fIjRWN7+F7rYX0megjMiJC7HSwqUw1v7eOscR9Vljo2/wUMjHZYIjWRApobzA6DIxgDgOyKbw7I2rxSQogL/bUXsAvf6hwkNa+srIriaf6r6tQvbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755310194; c=relaxed/simple;
	bh=0aPcJd+34vwDjpH+2K5HzDZDXzhjFrfXk5QPpMy4Ljo=;
	h=To:Subject:From:Message-Id:Date; b=uaV363GgPozQuMF+gkmwXTZnYCdxGCtDz8WKdZ1d5yij0SvbMOvfMs83XkFvc+zre4Tq6bX4RY7ZAjWlOQFV2um+A8T2qtAVcE/aw//+KNfuEwfJ4wC5O6OLHXOi/I/SNzWgwtgQVRG2qidNrgrKIPG0Sj/oxrl/hev3d39zJFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NKfhNAcI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NKfhNAcI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BCFC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755310193;
	bh=0aPcJd+34vwDjpH+2K5HzDZDXzhjFrfXk5QPpMy4Ljo=;
	h=To:Subject:From:Date:From;
	b=NKfhNAcIXfspmDNLh6jENW3V7hNnRk8Dte21r6dQDN2VwAJ7mmMf1bZIPh7B0EgWO
	 RsTKyNTNxbRGYNTWu4oDFgoL+jROapHmN8VOXP36QTtMHhZlaurEsUEDG/zRO5QdY9
	 ZGPRKoU1hGSqPhkRF9TTB59w1w02VVXB454cNMDzdHbV4ABl8fNvEgPw83G1/SmGkx
	 hcV28MdPkNJxHfOaokHhxjA09cNuhO8oZOdrN8hj0xsrRNn8T8SlR9MA5OYCECmmA8
	 yQDscIkatu2CnpkwEKcNK0fGcu4mPTOn7HFoXgspcxb8rUaXMTvQ12nnS/9oGXxce0
	 iO7eWKKUu0X+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919FBCA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175531019357.24886.10081066385771122878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42d099ac7df388a7d0dc53084702ac0fb8a112366c7352bdf3c7c12371cb6749
Date: Sat, 16 Aug 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755310193
