Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48D20539C
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 05:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713246563; cv=none; b=BfVaLrmu3xCAiLBNHsVtq6f23ocF1hTyJddQbQ8tHi7h0PM5tjhAkJw7FQBerxcFo/RXsCzDdv01f8CgmK1yjluQeUR2gRsdPdvQAtTrwNvcIdhudW4Ic7mLEWOMrgSeaJV01YFAvNF+pH6/kNMTsFpvxuQmL9as3dZA6A1rZDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713246563; c=relaxed/simple;
	bh=LiGypY0xMsU2GC8gLmF7UV5rN108zirHD+dq8O0ISdw=;
	h=To:Subject:From:Message-Id:Date; b=mKsrs6qCCLy7DYTViVu3tK4jFo95+1pQfBrMib2w6BUOJTpZ5pHvnaHkKnm0R1CYLc8K3+YIW00caAnon73mCQ1O5EDgBv6Wid6DKFaTwDQdrnO6wLR95wbMhL5DWeqiCMiguIpg3EjHAZFzg8U0E0YD5AyDZKJxj7OLCclvE+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KYpoVinQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KYpoVinQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDD8AC113CE
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 05:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713246562;
	bh=LiGypY0xMsU2GC8gLmF7UV5rN108zirHD+dq8O0ISdw=;
	h=To:Subject:From:Date:From;
	b=KYpoVinQS5ESSn6hH+E1yI3nXLwzM54mpVdzQn/5DlPP6woPEHbgOvx/i2w0Cobdp
	 J0V4HURdGMA4N7zj9FD5UMBF3PY1svASz5Sqawkxu2nK78tdNAutJB4/tnyjAaBpvs
	 tdkkeIBIqmkgRPejpYIrtOAFiZpSDoRh41imTNzIS1l22vgE6D22xZMlvzA0SYhri6
	 ujXSEkem5/G/IC/1/3t5kOkgZ8Wb6ytGxCxMX94MkvYB93Ed2Ulb17lcTHHpdyLs0e
	 zSgNcTEmwsyLNsU0fOhxA3mkQ5FZ4gDZ7wNsqVRvymQM2qK2lXAyNvQ8hAkD84hm/v
	 z0dgqBaTWB9Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD5D9C4345F
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 05:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171324656276.20386.6652904369536415392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e09ebad18734991d8e7601dbf855bbe5fe6e3ff920df8125255ae3b14b1053a2
Date: Tue, 16 Apr 2024 05:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713246562
