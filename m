Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 141FE28E00
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762097394; cv=none; b=mnCNuD8g9gOUtUDQwPJ6T7qne/ApLvbKN6nZk/cLGWfJd24f7Hn/+YG73KmlCVj7GSUQQ1Bd4bCxnXyqRRAmHtdnC5YXvik3fhxPcGvUTdtWheqtS2bt+PGQgFb48Z+TB0qSoUKJJiRHh8jfW2dyrUg+4sFwv/lv/RHR0NItT1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762097394; c=relaxed/simple;
	bh=jrIMuy+Lrpqr55cPwud28YFNcNeYhWf8txLFmxeZoa8=;
	h=To:Subject:From:Message-Id:Date; b=UisGbd7YtqiwIlIKnP5a1peftUl+aTjaK2uOlLZb4p8u9W4bsbHBNUHpGzAqFSBLc0t2vLzwIL7pRPQOi1Jdhfx6aPARVKObCLRdcvyJ8ZUFP/UlRhylslOJzSzO0xft1IkoQiumFFNZYrPp/dsFGkxfPh8Dali1Ivz0odKMh0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hN7f6aDt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hN7f6aDt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A743EC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762097393;
	bh=jrIMuy+Lrpqr55cPwud28YFNcNeYhWf8txLFmxeZoa8=;
	h=To:Subject:From:Date:From;
	b=hN7f6aDtpb7+GWmwAFKrZ1Bjgj+M43Dvt0HoSXiivfcnhCBDnl7PUX9pGCNA2gAKq
	 Mptq1w/RBhfco9WZifRTzR82UlaN6m8VKgOiJ5ogfiEKGGuMf1pCpV/dW3GjpwhcRO
	 UtkjixNHQ3wlNzqRQFe+IlClSuzar1w76ozpKZ8ASDtSzFAVwKOtbAg95WELjX4eFD
	 gep4fk0chkXAmh4Y/BW38PVLMqRz97Fa4N1dcd6BUJA+URATeuohSuC1ETrOBGj9IK
	 95H+/NNaobz5F8smiyfQMb9z4V7WP5sV4vVbg0AXriXCc99RADPpScCp/yCKNg+OKf
	 6hIF69qRy2fgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94381CCFA02
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176209739358.17270.551704232777085592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 073dc3c2276d0c0536e10e5bf5005d8d29fe6df525f0e91a29ef2896868ed759
Date: Sun, 02 Nov 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762097393
