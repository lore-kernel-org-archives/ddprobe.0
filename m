Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52D998614C
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 18:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714414943; cv=none; b=AQwfr7oCEXLvb7pt9lX1iNXMV64WeV458Pu2vl9vJ3NKJv2AI4GZ1CUJb7c66vSO0OshvD8EhTBZYW8VJVB7F1eiqXqJEeUzs3zFb9RQytiuunLHmk6DDci1MrKcuFvNfuwZ+PCIVNbhgWpnFCStE5FpQR38Tf1eTZ4Zb7Fs6js=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714414943; c=relaxed/simple;
	bh=DOs4d1kPWEkGQprYxu5dgJcoFL6R616cV6ujgIOVL4s=;
	h=To:Subject:From:Message-Id:Date; b=Ifu95xpOIPTZZpjARlK/hibuD7j0wP70R0kCLVeY3IHgmr2fs3Ex0myLsA87UxzpB8EiMHzDHn8aCh7OQddLYjQcZvBNB+5Wk8W7/YE1PmWcp+UlHXHktKzQturje9GB3Np696MpbDA36fmINjUyXgCGCXqRkkYFNvBgYdSuKAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZaOrDNE2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZaOrDNE2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D69B9C4AF14
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 18:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714414942;
	bh=DOs4d1kPWEkGQprYxu5dgJcoFL6R616cV6ujgIOVL4s=;
	h=To:Subject:From:Date:From;
	b=ZaOrDNE2vZTXIK4uReZ/FqaPPscIa/ej97nvqpJII0CoUiUzRtlJ1g6Uud8L3LFX+
	 Y+bnVLRpwzwdeYsBraDQthOS0DP7c7G7qRZ381ITm+XlDei2gPiHkY7xnUpUIKRiYg
	 Kf1fTqlrSrzyQeeAc6bzjg3ON/9I6MBCgSHiTliDQ2PmCj29QTrFU+Gcs85Ex9oDO+
	 eN5zxzPNoaEinzBUFckADNofhksP2EkZQ+dJBt47J9dmfUPxNJSEHilbcp+9o34wBI
	 02dIR+30PleLzINiRv+7OfJUplPUk95V0OLcPgMGG8jdzES28LCtvVZ7PsylNX1/yT
	 y7Q6DalHLIwWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3614C4345F
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 18:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171441494279.8414.13450789033866655991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3437b225dcd1a831f656c2dc55ca624956ab82e438e330d0336502445e38d188
Date: Mon, 29 Apr 2024 18:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714414942
