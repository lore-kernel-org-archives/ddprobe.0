Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 188B7285CB3
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755568194; cv=none; b=OMkc+AUy9q5cX/bDPU5Ukmhq9XohKdahZxE6Py4f7lViGyqdHMg40ngvbOC38vJuXUzXpE1OTS0Sk/cYJyFSCk1rgwsEAdRtKT2arJYbNUSyheuZACqolheGBv8L38JJjWiD9L735IzMnEwBjzxx1Ds0CHL7NFJpUG4bFv6XbVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755568194; c=relaxed/simple;
	bh=s/ehLD7+ujEDWcGGxUDhb8KPgh86E5C5ytglJCoPGSQ=;
	h=To:Subject:From:Message-Id:Date; b=ueyX8GLoP7pCZFpgpy0TRqO9x5sW6+xTOAIpJkhwcWGZwkrNZxECiKKKHxofS4J3PWWquIwawmkJvrrn/PJhXpZh5pP2Tp8zjTCCRu/VCD+/h6sr7sFVBSpkHRaofhiBM+gxcsDu+Fw19RGfgYNI7FEkrjqI0RhSRr9laBuH5wE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PbbZHPEv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PbbZHPEv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D6FEC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755568193;
	bh=s/ehLD7+ujEDWcGGxUDhb8KPgh86E5C5ytglJCoPGSQ=;
	h=To:Subject:From:Date:From;
	b=PbbZHPEvZCRPeL7uz/PvvscKj2cxyaLjeJiXe7DxUICxvsgfv1SXG/xmFDiNPECdC
	 59y9Mat9qo18utCD4B5VwJC1SNKYTiy7vMWVp4KZjGtxxexpEJJzJnLjLsR48jrEKT
	 mMYl4wuNifIPkq+W9v96fSwh7FOPAuPo0cevX6tRMkw2zoqrZOt5Qaa3O/Hf49RPPe
	 OhHpgVn6GYnQpfFzDGu7BNBybaGYD12St+rlKCpnQGW4CD/XVsOb4DZ6um23mRpKcc
	 iQEgQl8/heAulK9hW1JpmdGWW0Q4Es+iAh5N2GazVJKeFpERpVaW8F8X1DVaFpjCg/
	 1eVep33IGmorw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F56DCA0EE4
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175556819357.30641.3446837514262787110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f20763a9979247ad96f84d4941d2e7bb8fb3c98104e142342e2ecbb50f02fc7
Date: Tue, 19 Aug 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755568193
