Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B464212554
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 03:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778385034; cv=none; b=WNjrC0HeVhchYbfXnX6iW3UTD/vrxZCQ12e4ZYigQ4ZzZTI06N9nVXM8eGWkdbTUO+qVbEz4A/j9EMi1VfjWsUjtkR+aLtqfkzDljTde+BTNyNS/bniPNIfCTS46FoAjgac4w4w/fI0SLC8hOne414kyf6jHdHvn6Ci276mGl88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778385034; c=relaxed/simple;
	bh=CelNEL15+qSegrPDSX4Y26S4czSJNF73WmSiDRIjlW8=;
	h=To:Subject:From:Message-Id:Date; b=ZCZGEWDW6vlVb5WeWg2VrCtSLv8kEVHEg/+gnOeIYwjOUaD9Jv7GbuL2wqwp5CZwvS3S0TEtlhwNw2aW7OsJWxPhpO1+3BzGG5PpG6IEin4ScWZSaEYUaSe65S5V80lV0G7ERrKSzaX2lPwbbm0Fsc9HsvsbVQb6viRxCvZTWR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jUJpDA8E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jUJpDA8E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C32A7C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778385033;
	bh=CelNEL15+qSegrPDSX4Y26S4czSJNF73WmSiDRIjlW8=;
	h=To:Subject:From:Date:From;
	b=jUJpDA8E26p6y9aqMpgSOZctaU3ffgCBd1AxJMpunlz0KofsyWLygDWnEdPSt3cr/
	 oLEPvh4WEX+UumMK4kzWqqddVMDYd4fpcnlWrSydTcrxOX7cN7V+qgN0tFkeg/mjPZ
	 oz/vI6j9DYs91CIJzlFzcPjwBHG5/y30sWbevpbQ3SSiJNoJxaTGE5wSY/BpMvFQaT
	 oP7dLivTfe5/vgEhUrkzdbVZozL8E3+1ZaXxDK9gSEaRDlaMfYxWUPsGn/m60aZnDX
	 P/j74aMUiXzz+cATNu7MPvg8802PCCBaMl4m/WXinaceZDK1S+v/kU0ghOOEBvhK/7
	 1FgSiNfLSDB+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1543CD37AF
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177838503369.579.10943955688868351314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b69926ac78e787cfcace2dfe55e226861cc77b86f431f9770804812130fa1b5f
Date: Sun, 10 May 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778385033
