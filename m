Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 911FD3451DA
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 04:38:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783917515; cv=none; b=SpI2egaZrTwc4/6IGvZUyfUxlxNWbEOpi1axoYJV7HbniNkuFw9fbNHgrYJEud7E8A3gW805rE5eadTlZxzpmuhA+QfAYJv23nHfhFEl4oimCPDjJscvQUCnJoaqAyWLeCWnzr05u5jimj07FA6OfbBdPMXYEBJgj7kRivq/sCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783917515; c=relaxed/simple;
	bh=Tc/KywctHXD8kcEaeMr6A4ZQrqtflOM44ZNFBzIAikw=;
	h=To:Subject:From:Message-Id:Date; b=UBE/sidcbUTwEB5jDcmi22Gn5cwHgbaaLyGpn3AbXxZuBJWFXxQh7ns+D2w9+WRBc+W1j0cR+PIyxOuCaF4D6Kgwse5v4vGykxNUWoLYLzfiE/Dg+iiDwHIvTT5i1Jayl9Kbii0Z2HkfRpA6XxI/9Sp1QIKMWftI0dvvwyid3Ew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MbBAvi2z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MbBAvi2z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3E26C2BCB9
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 04:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783917513;
	bh=Tc/KywctHXD8kcEaeMr6A4ZQrqtflOM44ZNFBzIAikw=;
	h=To:Subject:From:Date:From;
	b=MbBAvi2zkd4mzslFQcrlcVCviSnYXoJmWk0XcZWO/Q8j4DwDPxOEJh8UdjSwd9878
	 i2Sn2CTCU2z2PXk3reESJ8Cp+rF41x7Uk96r2JVh8PmNi9bKixKFy5f54Cefd+seD2
	 VYqbaI8PwCs0eiz+8sQ5gWiHYTNpATUIxeD44H5lv4KylGK0XBD0Djtlljqk/uAvRJ
	 38PjZkShb9HPVUzjdhM4HIZl5VFZMXFfE8d5E7pE09yNfRmSmll3JH0uo9uiX24HOg
	 bF7AMj/s/I1au/Rhij8ICQLDosAa6tDilNRE1mnl6wWRk5S1kLGz6e3BKcUMz/FXoI
	 cFGFC3TiNxTmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E96C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 04:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178391751371.1628.5774131702609389795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82ff543d399d00ee0c6fdbcf4c1ffcae590e6caa41cb6662f26ea9105c8ea7af
Date: Mon, 13 Jul 2026 04:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783917513
