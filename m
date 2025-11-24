Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E0E9258CE9
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 15:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763996514; cv=none; b=dQXyOglSP5B321O0y1ED6r3zj1SnowYTO+GHaMMO8/mMarH2pBW03yHPko7s2vwyQ1j2X+0Nf9jsh/lzsdGjmvKA2aTaHzqKU6yx+iDsPnlNL1Tb1O1rLAp1++iR1Jpa4KSdfrUTjhyLfGJF1zF9xe5HzYJ2RgNSl3b+79zuqNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763996514; c=relaxed/simple;
	bh=EIgszandGaL8p/OcL/+cJ2/7qOKdKY7BgxS/n9KYW5E=;
	h=To:Subject:From:Message-Id:Date; b=obeYgzVIEfTwb4qv1q+QdUVOVakOdCt1CZ9JErtNt2HIvyBiDTkFjSZwXPCFFO1qmZu7Op/39115ZnKGihuNKHlILar7nAZFPkt6Bm3iJF0Zz0cCusPVJkgTU2xzINvBpXQAhxUIEdnkGvvVr//2njjBhMpdphCrLEIKitesaGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XThcU9Vt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XThcU9Vt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46BDC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 15:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763996513;
	bh=EIgszandGaL8p/OcL/+cJ2/7qOKdKY7BgxS/n9KYW5E=;
	h=To:Subject:From:Date:From;
	b=XThcU9VtU7Yyrfs/akuRLFNTlDYdRZFYcT23TZwLNVRXlpVbw16RYQ21SN3aQXRVZ
	 ZPjc1xcv3502hPt5S5i6kOAzvh7Xo02UqzJbeXpgoTinhjF8IhDprIqR60guxVw/hk
	 1JfsSoG/8MS3Ex/ExohwQrH6NdDkNVqSSUYKvWFou/OiEXxnC6gBE/BR/flch+LUja
	 oPdX2VIJ5EF2Mwa/CBOMJKJf1sx06ldiOdYAipz0MGHDqUgZO380Jwb38hQnlp8aa/
	 9ZzxJi0DmaDO9exCKSJp3jNHF4Kzz0cbNVXOtF8/h11Fa/dfFU6pl9Kyoit0IerLos
	 yupd6OPRx9rww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92435CFD317
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 15:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176399651358.21672.8371228160766139390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7259ad42d560b67b3b62c7560217cdcdf72c8d0763d43057b8311482b876e17f
Date: Mon, 24 Nov 2025 15:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763996513
