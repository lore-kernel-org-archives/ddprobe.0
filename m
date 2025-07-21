Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 264C616F841
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753061394; cv=none; b=IZFmK37gNjv5OMVysBm7+gL1K1ckJpBlKN0OrIzZ2LbAP01fRCFwLD+q6OUM/MyO3wq5SFjTAXe8EblbFrSL8Vgr6lZP0krmcMII/1RjcAQTMfLVHAXCsDUkXK3OlK0hc9bzi7Jb31CoDs7iP+phTLsyTZ5Hjov1ki1cVt5+fMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753061394; c=relaxed/simple;
	bh=NkaQW2qPRhsKLNV+0nfn7qaIBR0+EjJeDfY5LSXvI/4=;
	h=To:Subject:From:Message-Id:Date; b=DlAAHV5mSHZDSzR+6qcpXB0olcOzxk6pG8Uqci3PyqzhF1m0qqqCWGpAH7k5etoZq85j4Jx3MxMUKc60JcXibEEnOAUIs7fjX7nIc08Pq+a+aQzwj4nVKBknv9YQFDhTkUq+NuXIA8zTyz3k1EOtbazDKEXN/vFsL1JdBCDNDHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gCtWJbxY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gCtWJbxY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E5CC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753061393;
	bh=NkaQW2qPRhsKLNV+0nfn7qaIBR0+EjJeDfY5LSXvI/4=;
	h=To:Subject:From:Date:From;
	b=gCtWJbxY6EfRUOm8m0C0iwDlcRpQGscCEpPoICrtUNOgzyy3H7DJxxXoYtjugR00g
	 ni8Zg1KLwq8Yt7tGcLF2WYatj7nXf1LT4DbE6QRd1pIvb4CuCe4fBMSP50aABZjM/n
	 eW4zktdRbaPzcGZmFLUAfZPqJoc8dyKHeCYxvy+mvMETWAbTsE/19vVigeFgEAVbs9
	 cBk7vusWSTnumMcWiwWoJ+mc3LvYKSI2GyWznwK78IjadX+EB24zHRfAQQBPQ9F9NN
	 wIhJYYk4Bc3uKjkKHv/udUSNM1po5PudTjFnBqTrtk9OZf76v/zxuil7N5skoSC1fQ
	 4WMQzx4FPA/6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F542C83F22
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175306139357.9113.5797830769295870366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0476876b5a3bcebf17480d5f5826f011d981dae09c5715ab8455ed507d3d009
Date: Mon, 21 Jul 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753061393
