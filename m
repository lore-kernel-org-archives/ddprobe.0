Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 490E122F767
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750346994; cv=none; b=KziTkE1kDrOYlKnJAMMVMDzGZoLUN3n6AX+3p1P80Pu5C4lU4wEdIWzQVBZ7n5WKu8fJrXhNLTHUC5L0ss9HqPDj/8esroBNH7s3ovHYOwTr/OSBZGZ1FBPbt7V/F795V4jYPSOrRtapCHwC2BSae/p+oweQ9E4nAhUyaEU+Qgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750346994; c=relaxed/simple;
	bh=jOvvpKu9hUhnC0WrxBvNmgGlVrqBjbDLSb6PNBcHWyI=;
	h=To:Subject:From:Message-Id:Date; b=Jb+ERrQp0kfKCDp00jYy0/Sz3OrCkYwfEOV0bEAthKiHqTV63dLmmR6jEHdmg/YcXHCo3aAzPWd+BSKhPDs3WgJgB/v819NqWIAoUIGinkHADiOx7dyaOOlQXf+dB/yn88sUvfZ0VVHvtDhz7v/Dfgzj/vql+io0LzpwhA/KpFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X4IeWtAH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X4IeWtAH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A92E5C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750346993;
	bh=jOvvpKu9hUhnC0WrxBvNmgGlVrqBjbDLSb6PNBcHWyI=;
	h=To:Subject:From:Date:From;
	b=X4IeWtAHOI/CJKWj1H11w/FmSicSaYuBIODU48KmUtRc1aTVkrqTjhfAXOBSWuw/E
	 ZvDewCev8JPDK7p0yPmLOZ4unnyGhEqooJjsv6y7LRLnds7nFqio4x0yzEQiB5uhRN
	 fxE76HaXhg1NMufwx7jwOg1ct5iMhAcMnzVYxP3wFYkEc1gOKbW2mjm11g2MnOxkYR
	 xorRoz9l4MSE4ZXGnGT+mTuif7IQYeJpAzQba1/WeDEAuLNAdL2Ne0Sh2/JtTk13nR
	 U2ZbQpD1DgnwpiqdG4/8EWirxUILc/o7iEb1yGmacqOx5JlhbpnQOAmOSQ2qDHjAiv
	 xUykAGqrbRbTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F6CC7115B
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175034699359.9831.10280335920296101354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e8bca50448dde20af7bbc1198eec3e13e0725ef05f21699d90aa842a27817f6
Date: Thu, 19 Jun 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750346993
