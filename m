Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EC8D17C9F5
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 21:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719352403; cv=none; b=r0KlqkRzJFp7b6YJwyDeYS9ITFyPsyw99efydfAzztHrt1g95c6E0zsjtAc8TrdcdWB6wrKpGZEIzRSluBBGfM2axH1hLVd1nBLZe1cBQ+yhjNxzR9EfWVpB7eubOFHc6IIBcDps3YbtUfgpd1abz6D07hDLRXlXS6q/AObth70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719352403; c=relaxed/simple;
	bh=ZT52ISimXpnzn+Be16jt6kCrXbuIh/cqTN+bnI1RC/o=;
	h=To:Subject:From:Message-Id:Date; b=s9endLhvROPUz1UWpju/SrpWiXedR477ecAnw29jO+f99xbCkMWVcgBSwx416y5fH6/t7Ftyqgsg/kSqdxaHe3X3wZkViWc8bpGC0J9+K8oFvuutPDXkDsInmViIuiVpvec/HuBt5PvpD2YuhBMRTzYuy/Ij324Ah1TWh2VzHYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pGlYaoAr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pGlYaoAr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7A11C32781
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 21:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719352402;
	bh=ZT52ISimXpnzn+Be16jt6kCrXbuIh/cqTN+bnI1RC/o=;
	h=To:Subject:From:Date:From;
	b=pGlYaoArzErlQqA9iqoDaxNCyi5u6uFw4X4kcZFxe5k6ji8TVS9DzF9d/Z+FfUw6c
	 9LojBOEdZAwVq6GyCfVlfME9A4O71W46wQOlgDxVDDgTWkFlfkun+DioJunhAJCBs2
	 h4mjqPCm2e2GRAHtvSS91OfUP2uk6bCSqh/T7fULEIOXlPa5MbvLf5FbP6GkzdQsfb
	 GG7jBndmo+KlCGnHGLOteINpJ84Z7/Qn1I6pD4L0LMhH0bkG7Ej0DVGW3dl7rsvKPf
	 mF6ECVhu+1vUU+UhCj/xhgPOPEBFe+wsPuY+dlOHUW5TKtljJrKyyq6vRpkyMXG8NH
	 vkdpr53/2otqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C808DC2BBCA
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 21:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171935240280.6705.10955555567996341439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3398bc8dd988474b92a12061ab4a838fef8bd244ef89090fb3354b3d79f21155
Date: Tue, 25 Jun 2024 21:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719352402
