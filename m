Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 325A2C8CE
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724003754; cv=none; b=NjZQqXjfHP0t7gnl8YG0xhDtX2mDYLh2ruFlv4O/MjEs+18V3uUP5HCySdlN/xGp5vWgU3eyokQUeh233ticFubqnbOWWCzoCgGjfdLJZoT9t6Be1ozf96/hu3Y42fraBByoCw40D8ju8xBX2rKUSDdeY4k9BT+SjtOTyNwOS5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724003754; c=relaxed/simple;
	bh=zFxnkMTwO7aC9eRovVNSsgbJ8vtk4AGTIIiRcoOgRHo=;
	h=To:Subject:From:Message-Id:Date; b=iaAR5SpaeDrRV7au0AEmZW3DhhSqLCucm8imlV8xUVYYdNM4Ox8HeEK/jWwvCsETjoyRHa48qKs/E3KfLmDaDllAl7/k64urVn6AIAhUAENbEStUfcqfP74jGoc5PmUHSW1lg+J5Fgph3YeanfpKpJ8et6CP4tYYKKIQRaaROP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DGPHL9xF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DGPHL9xF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB35C32786
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724003753;
	bh=zFxnkMTwO7aC9eRovVNSsgbJ8vtk4AGTIIiRcoOgRHo=;
	h=To:Subject:From:Date:From;
	b=DGPHL9xFfz17t0yuv1IBlRK3zgEtU/81YwddJ3/Ndgl+kTvPZBsv1/gWJBsdER0t7
	 yxLhctTglpTLvHeYM8bqD76mNvmpcBtH05m1ez3dTBwaNhKhCXFbcgy9/wAFJB8rY8
	 OH/xDU7blfoybZQtlX3Hri2C2IIb/fBh1I1C25DTBnNxV56JxuGVG3wxON/u8zeiZ6
	 LV2T9sVD3pEoJdKZIEvAr3yfzdUrEvSQf2p+9DimCa4R2LIuZptW+Bd+M66yh2pXiO
	 c1WKExbGdAL6Jx8hXuzulwt2eap3pH4pKS3lRtsLrNYvN/icYJ2dckiH9m1JHhCVoM
	 pYPGKpsEvZOgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A6BCC52D7C
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172400375359.15257.6461322281854301944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb3773cf84724aac7c240369b53a36fc81b4c45c99831ffca42e9f0c781e38f8
Date: Sun, 18 Aug 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724003753
