Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43C4C3A1E85
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 00:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766967834; cv=none; b=SW1FZyAMscX6ETVRlH9bCec8NBqcVuHEqDALH+IDvZpImQJ3jNcbu05ZNoBD6E9aSM8mGutdwaay7qHC2VI36AXAiEIc6ttHQ55y8nTTva/WurxBNYaNZqtldblNyqTQjpPlrX+1G4zHUbCi5Pp3AOItzfcEHq57MQ3MPBnv90c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766967834; c=relaxed/simple;
	bh=sDT+XvlQe6tvHs0DmIuWgx4snz+4nchNJ7Ip6O+hw2Q=;
	h=To:Subject:From:Message-Id:Date; b=HVI3t6hwSAlOJvMpSi41aAW5kzRNPkuxLLQWP8X0bfmRoUlKogId2Arx6TPH2l+VxDJ8OTqo8VwDPWscOEUJ83pDcqQfKK8wKXJTwvZ9vo6ollwgaBv/TK22cjqTeM8bOeuk7a+IjGSRDFPM6JGgCUsXSTvFzHk8h4LoorqqM8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G0moguaI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G0moguaI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5927C4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 00:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766967833;
	bh=sDT+XvlQe6tvHs0DmIuWgx4snz+4nchNJ7Ip6O+hw2Q=;
	h=To:Subject:From:Date:From;
	b=G0moguaIPXnnmJ+WGJ6A3d/X+9B9JLK1NswCMueglPE3/waWXf+XcsllQSRTe3q4r
	 aric9l924NWqIabibcu+l8XIUTr0RFyfbpAPHX6DRggsMxCZj8Qu6hJ421ZUeITvWl
	 vSoHJM7zdsumnkBzc+AMMHpJ+1E3oM/2pSOZ+AsfQY+Yta4X6pZ8Zx88jG/xre+as9
	 4otYeImezYzjP8+G4ajMbdIOHjPv1yCcm2uSz1dw4g+h6CwLCQBUC2DcFV+6XKEFjS
	 mEzIBYeUWMvi1ATYZOGUyIhnnRQ1NG9+THWBEmYTXidg1qw34xMAXy5QYXGuM+6AKT
	 70dTgwTJXmPDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A01E8E784BE
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 00:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176696783360.24029.12182752912140852487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5af087275a663e41419177ed075203312f9b5a9039047ae425c8de18cd2600da
Date: Mon, 29 Dec 2025 00:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766967833
