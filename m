Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C16D4436
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 02:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718159303; cv=none; b=Qj+Yps+rg3sn7/j+typlIccAZFNglQNrdJntiLUkle6JCdZ+kQfCbSI2QuvmNfAHAabLBXgs1axwVSBSFtZMxMTjJmT7p3sFmNSuCbocqg/5LA6BqD00NeoSTuwAhRFiNNDr5cyBiLg0Tpp+/DBP+JGGe9SzWfGahS0t9St4wSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718159303; c=relaxed/simple;
	bh=mjYAMMRs2T3JxYkEluSucGzXDqQ4+wK8865vXbdgdTs=;
	h=To:Subject:From:Message-Id:Date; b=Kt4evp4vREgRkX5SF+63QiMlgO6QJ/3OkcPqoCAZqUavVVnthM6sSZsBoBR+ogHip07j2J1SyZ4QqmH+NkyHVXkV+MjdVZSXBW38pTF8BOuI55EkQZbWOdL1ZC9nQKlX6GTuPsWGKNaHw7+miPgW0qrJNd2GD2BlsLEvmFRYzM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KvXPwoRn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KvXPwoRn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E44E5C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 02:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718159302;
	bh=mjYAMMRs2T3JxYkEluSucGzXDqQ4+wK8865vXbdgdTs=;
	h=To:Subject:From:Date:From;
	b=KvXPwoRnIV/Vm71xVpmTuPqzVnO1HrscNVYL2DqKtxyUc02t67WlsQkkhLeX7bhXw
	 LIEAkWQfA0gI6GADhc3tx0BzduITYyIPqf/c8ArYLdBHk1El3Y12y6LmA6ydLG30iP
	 Qb4/V7rTFzslcMIzqXnNapyqCw0QAO2hSeLTuVJ3gHhiKljypQo6JiytLNVSeKb3AL
	 XsMmdWDiSbokrVLAjBrHsGaTfgZn1nPXMfVhC+JlAQFx6/XX5lor7rW/NYtn7Z5elw
	 mHUvI5I/6eVJe7FS2WDNjnPkwY9kxRnyQH8GiJ0czHEeoSd2+sXY4et38WRwr2pI0b
	 /28RIyZ4Yz9nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA11FC27C78
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 02:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171815930281.22348.6934899511068371628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d728f7866a954cfba3ec4c7e8900c1f229418e407dfe27577c5e00b9358793c0
Date: Wed, 12 Jun 2024 02:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718159302
