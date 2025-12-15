Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3964E41C63
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 07:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765782174; cv=none; b=XbBiRaB1a/qanlPpLIj2Ff24uW6I6sdKdaU/WuenZotI/1EfW2QS5Rqszpw2m5nAHAv6N5Vn//6SuSO2C8oH4/4+qNtiocFA79ICHSRIebDP2PJbp4De4cr63kMubFTNSpB61ymOZPdA5uAP0vSHHHLaJFMaYeDPjT2pJh4EfnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765782174; c=relaxed/simple;
	bh=ZLCBeZdKWhXgXrVEfbKmZphnsIBBtHn5nOWiKxquj+4=;
	h=To:Subject:From:Message-Id:Date; b=Dagd9HcS3ASGVkxKAWbpx7tdVRL3nQuQT1OEidNpkZljYXoCFx1skuDZHKF64uf82MFWre/oRNz8tq9N0/6EIHUkGNwgDIcXxOvOMqzeri1zaTGRRegluPv7Li77lU+hZq4PI7p3ICQHrW51jgeWw3j3oYGtX3l0QsAnavs410E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=batV3wzW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="batV3wzW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7508C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 07:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765782173;
	bh=ZLCBeZdKWhXgXrVEfbKmZphnsIBBtHn5nOWiKxquj+4=;
	h=To:Subject:From:Date:From;
	b=batV3wzW74VsNfoBK0qdXiVwDJLzDNKPw2obOfnIi0ZdDFRL+MluLT0WpPjCmrNvN
	 JykxRsYXqrDpflpphHIM+T21TJK1ovB5joQC7A0NLFAloc3UTYE42Z3qacb5kVTeaJ
	 P+DfvwdxnGgeXGkxNyaqilhdEOfWXNsxUoJIdHagq6MbpKW5+x6uKTOQ8BEgAUyoKU
	 VcOgxLEY4HgFINq+UjFH1OYhgerOYWDK1pNmS4jJOKD8zQr2pUxrfg0TNzVKvRojyH
	 SV+PCbhNhtzpEvkrLtaNU64GBBLRyqRiC6HFr+wdEaH2fw77DIEjDjlSdJMc2R+5l+
	 BAKatCszssYSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 969A5D41D74
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 07:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176578217358.32485.7466384523137204969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b07e1bbd170c623894b55f4fd9e6088fa3eae583820cee72d12c414179c72ed6
Date: Mon, 15 Dec 2025 07:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765782173
