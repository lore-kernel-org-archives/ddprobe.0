Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45509EEB1
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743211194; cv=none; b=SPPSZ2eadkeh1nawbuiNzptCIqsUypkpl88stNYyv1IFWfkWUCCMFlYxT5a23nnefE10hHKvez3h/vJvF4Yfnvz0H19F6Tquy4ZZA3UeM7Bc3iXU/Sc4ZKFl9niUMWK6LlRDy7hjCKR3JagSbY5CaWjviabGhlXpHr7YxMKtyvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743211194; c=relaxed/simple;
	bh=Y9CLz+Cvm/+q3hg+a0BwMke3gQ5jSBgN6OYKttuEuwY=;
	h=To:Subject:From:Message-Id:Date; b=bSPSqQZCkpTUFkoq6z/n9Y9rwDA1+IRFF+Ef7naQnfjQLrKrnnyg1oN8HbCecYWFfTjfcy1Yqmcdxvg006QycUwpJhmYWihtJ2na1plyWvwl8Gfq+mahFUE8F8mVQYJUueP2dVNE+zBW1PVVzuwz5Fwbl8GEDXn6o02toMtawoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ISSiXuTE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ISSiXuTE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5D5BC4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743211193;
	bh=Y9CLz+Cvm/+q3hg+a0BwMke3gQ5jSBgN6OYKttuEuwY=;
	h=To:Subject:From:Date:From;
	b=ISSiXuTETKSbSeeQUeqx5CGItrWJvvvGR+wB3qhRcQA3nAlnb7CFmateEN2K0ApFi
	 YwHhlaVt+6UkNNEf940kz4YT5fVY0/NF4sjzsvfS5elC7vSri+wFg95oHLu1fK+LFd
	 KYFLv90x4/9hgm0jskraHnJsdj87tUXTwOsDpWX45Ktz3wzhjN1g9wn8y9ZLuUgW22
	 xnTn+U4akFNGj+qwXiz+TxNYgMtJGlLzma44MvwPfyeReIOwXnVref+woeEfBUgyAr
	 KrLf+IQZs+rItlGwFdcuNnDWEATz06YkGatLV1S0TPjKpY7AICjTUGG4uZSkQ1me5x
	 mUtLEP4ASnC2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4D70C36013
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174321119363.30639.12772175031397606058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a74d6fbd6f07954c06702b76ed2fab9eed4dc456da4e7b80d1b1a838bd581405
Date: Sat, 29 Mar 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743211193
