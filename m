Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BE703A7820
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791752434; cv=none; b=uT5FjcVTsnrMhmaBnfe7q4nGK7hitdkhgbEz9ocRpk23tckU5UGLz5yTa3b9Zhh1HoNyhRnApYGfLcqyeMJJ4PHpEnZyd9HF+nlJyGfIMTGGodnLxq9vSf1266bc/UDpo8o83UVA8autwwxqVTUKEdJBbxWuUuIWCMX5pq6Y6po=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791752434; c=relaxed/simple;
	bh=gOLPMR0DTcPxyWXi4dE85IsOt+hi+FOzux7mY5C3b3Q=;
	h=To:Subject:From:Message-Id:Date; b=AJ9qdeObiV/vZcGPmUhJ3vFfZlpV4bQqB7h7rhAbalzJ0scT4vHkXH2crWLfDcz+eiK3UUttPz5YDQYGWFVFDsfQFS/ENF64pWoZYJjLhsBJBO80bd2BrL2qF83/DNI0wyJ+PUJ1fbluTFNSmUqcV3mM1OAbJ2/n5VIHeADZuXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L0DW1VHS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L0DW1VHS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCA63C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791752433;
	bh=gOLPMR0DTcPxyWXi4dE85IsOt+hi+FOzux7mY5C3b3Q=;
	h=To:Subject:From:Date:From;
	b=L0DW1VHShJxxaMWEEy3r/9L6gRnY3BaTLypu3mreUnKQbEkgYq0xL8f0T+a/IWvAD
	 g7SGMciZeX8aMtnu6UERG4SKHhTV6aDK85CAk3D07R1AEPKTg6FhoLhR6M/x/ZX7Wv
	 vQ2yZcb5kizWNwOrNVSIuZ275Cnei2kVuPZ6rCiqL1wnx+UVU62S5louMi39LPdDIe
	 V3TMtYcrfO0D6IUs6TY1fBRsMiWj+WccxSUFEIQzhXH5eWQx+zF9P7iTEV5glI9Ncy
	 Y9nEC7TwzJcZyGq9dp+ZFkMSIGmS8i0RhhpS3D3QMynSwCfC7NUc5o0nKvf5y3TDJ2
	 1gicjS99DX9Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1CFCA9EBD
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179175243368.22836.4359679373354344101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eadacd3a63139608b8436a4f1243aceb23e169b163c01919384155e4878b2137
Date: Sun, 11 Oct 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791752433
