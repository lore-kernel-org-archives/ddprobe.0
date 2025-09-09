Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 187B22472BF
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757384994; cv=none; b=f5XQct2v4OiFS8GBzOGxDefu5dCz+Llq5815p2f2TT1ha32KdqZn2rB727hMmXS67BASqqaEKsDx6oHZrDHcouH5fnFjjjMZAwx1dyPBcP/WxfgQfCaUEx896BInfy4toEmP4QNCfe3UDSoeG3Cjpt6VYazUW6efRUjD4yNBMXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757384994; c=relaxed/simple;
	bh=XDc5NQDDGklUNT6YjAHW5DJoeHpSp3+K7wKGmGLjGiM=;
	h=To:Subject:From:Message-Id:Date; b=VFYKv06eX9wascpK55vRt8PGa4xdzIMwkSHISXoEdw/9enNGBoeXM3YTCavk+SU0QPLE7YM1Ofhm8JphgOTomX5oWPMteT4iwPwHDI7Ov8G04eeWpUKaze0y+Sf/efGol07+dH2CWGjq+LKPl4hC27kBp/v/4MinlKLGL2McPx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZIykL+G+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZIykL+G+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A171EC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757384993;
	bh=XDc5NQDDGklUNT6YjAHW5DJoeHpSp3+K7wKGmGLjGiM=;
	h=To:Subject:From:Date:From;
	b=ZIykL+G+4+fky0GmS8t6x1QIFrj7flWmDYP4343vPceZIb2EfgG59giOuHWhIIplQ
	 OVvRIObnLXlt70njY6120PRPDAHzQXCqjWPGvx80CQEomWRqYpjJrw3pc2/JujjGk+
	 WAfOul9xsZ8bMHI5vVu5ihZiiohXvLAwk5jzZ6rWKqdLdBn8NluafvAQBFKWten51p
	 zdfVRV4+U12lgCBnb9/DBMTJWQM72aG8uFrIm81K+dlIKRviXmzN4CerTSNyXGw1OV
	 ZZC2qUJ9693ONc73DmQZYNYEsHrDQSmAKX1m8/yXQWhX5bW36OrEepgosDjBZ4ujlb
	 qXST6vQDb3BvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900D0CAC581
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175738499358.2801.13550671005187604619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da21995e6be568ef2c0606c6f7912532c187f6edb4110b6a6356faf39b07dc72
Date: Tue, 09 Sep 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757384993
