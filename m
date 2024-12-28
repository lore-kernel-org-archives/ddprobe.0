Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23591171D2
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735352754; cv=none; b=a0mJMIr54I1MjCQ4jpzsMMeLUdvBsIUiMb0I+efv1ExEFusFLZlRmUV4D34uB78dwhm35Oy3nqOFM/NdoCvJp1F+cu0t/7vHw3Xjr0lg22IqDeqtBjW1rQKAqb45DiDprCLfEuflsz3OWo4X9s6NM6VwhIHpGgInYhv2CIQoy78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735352754; c=relaxed/simple;
	bh=p25YklOKveWKZTYjFw/fte4iYnFUzRQdIAh79CC/M+8=;
	h=To:Subject:From:Message-Id:Date; b=GUH+TA7Ai8kF/eYftBaBuTs+M8yPR+CRCBHdi3013hRbHAjCyBaXnXceXSr880PtmIzx2z9Cm1tsOWUVGBFEexN1/WDSpx+6QPiAwBNz+WpQKR4/WGcy+YxQazgGIZvaZcxPc395jahcrs4xkAspCl+u/TTcv8ikzfn+a1DJ5eQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gd5FoPmj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gd5FoPmj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1011C4CED0
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735352753;
	bh=p25YklOKveWKZTYjFw/fte4iYnFUzRQdIAh79CC/M+8=;
	h=To:Subject:From:Date:From;
	b=gd5FoPmj86Q2jnF8TY94qVXon8M9hbNFaY9N7cTOb9p3WHnjfHAPJhkBqaaJ2/np4
	 KGfH+BItJklylc9HEHSnHwvE+iahaNhCKO2WPwra44lsJyJX4XWBKlVp9sHy5QAGNr
	 6FNonigTIxi/9j3pkTfcW8YRdXVkqeuuAjmVeo15b5SEtNWGkJx6xdSqHiRFm+GpzG
	 w3vhJr1vqon6eoA/T4mkVZuRxeVVU2FuLi+0dnUfu3YgP3HyY6hqKGTwG8AmSytGm4
	 QdbrqQAXglzwP1obNSplcmSYH2OfhehDb3+nDZXuGApyjro+ebTWrm8XyiIevXctaI
	 xPnn4s1wUh7+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C9CEE7718B
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173535275360.30968.12607159020670283167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b16cb7d9648dfc6b7b6f93f92b276ea1c87b6feddbc81d87364a1993a0f62bb
Date: Sat, 28 Dec 2024 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735352753
