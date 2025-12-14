Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 181251448D5
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 08:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765700574; cv=none; b=HAf0Ox0t4yagAum9fqWhTooAOOHOC3PnqkaZ6GESfyYkUhp/oAdNNdt4M0AMDpMhjy0UFmlrS82jxsnHQItRpVbk5c+s+htzQf6r9LZU5TaXFp56clqRx1r8KGUPYV6TN5UpxjCTg0LqsKfZurL2wpNmJ4aFwm/ZT9dQ81fAN0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765700574; c=relaxed/simple;
	bh=6IrURXOP0reFGHPKNRjgvC06aqkmUfFHJ7adW+WE6r4=;
	h=To:Subject:From:Message-Id:Date; b=KhAvISgbh4OeSI7dgGP5SGSANUCIk8R1VGG4v+IkqJNNs61C1Z0GAGVrPmo9ldDI4IFPsnZRFDiyJ7xHGol97bMNBYRyT4elOmYVRl1sljheOdFRTMaTTkrSDvdGuIznjAvrj1R7NGyuf4uzigDSvCF9VT7QRaCPIe8a7mKqyBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B+Z266eE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B+Z266eE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23CFC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 08:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765700573;
	bh=6IrURXOP0reFGHPKNRjgvC06aqkmUfFHJ7adW+WE6r4=;
	h=To:Subject:From:Date:From;
	b=B+Z266eEiL/DvNGWoM2A5KC8hagAPaf87cRIQR9bFnIHdBAlwqSab87tPclEvCutW
	 h7SXr+MOQpe1UAuGEi1TLl92nEHKPCmLeSTr0ed3sYPxDjWIjUVtAJmJVDVovCGJY7
	 u3wOQEFX9Z6cGl+jjEEHUns3IJ4oU1BxPtYCkV//Y78D5o/DrAeThb+EJ2mMuNavmZ
	 o+8DtTlBhulUVyq1gTrI2usBonWZX6yCtIYjKeO9euOvkgigQ0Orvm3tqqUjGIaQPg
	 +8LFasQ5+ZkXmzRTD++Sj6DrEyPzz5x/aePjxRCTCydyFVMWJy5EtIdtsESFimNyaV
	 qt2hLmrfl1ZmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941F5CFD314
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 08:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176570057358.4707.959379475780845473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f24185b9add2c9d99054aedf5b32dd57016366dca07185a63598a252a71054b9
Date: Sun, 14 Dec 2025 08:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765700573
