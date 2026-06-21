Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43D8E135A53
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 07:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782026194; cv=none; b=DWGQr1PuzmjvUlxrxb2QFpto7u533lOinY7uB/oV2d0fMHd6YhVTdIze1AtVE/mDSsLgO6yLECzuD5Xpr5geo3Vc9A7gHqmnNHsHUXkGTOb6dkYb6jpJmWi+IvvxwokX2/LCZPsCkz+N2DTl8savAg2+3mh/33czx84M2NBlnhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782026194; c=relaxed/simple;
	bh=XdsTNATrPsZ+gRpHlpATeeW0PGG6pY9vyqXbWBze924=;
	h=To:Subject:From:Message-Id:Date; b=HHEm1eyzj0j9H1NbfBy7fQj7R/eiIHINlWPmD0I+2aMmSEKra2ATNV5sxjWaWI354DUcjsNxlXmyI0inuSKWg+gTaPrfNiitUEh/xdY/c9G6/QxtDLHxqq5JF1XAVT3Q94bgvGW3JteXEXi6vyaHtXuxBQOW62b5dDC/HdgqQ2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MmWSBV3m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MmWSBV3m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE671C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 07:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782026193;
	bh=XdsTNATrPsZ+gRpHlpATeeW0PGG6pY9vyqXbWBze924=;
	h=To:Subject:From:Date:From;
	b=MmWSBV3mm4WPdA+xqRwsbjxwPLEEbquwWnc8mvW6rinLFJz+Fn0o8ToONs/7nLbjh
	 YA0nnFHCz5573o97nKBq4KL+eTN+gyt27FqxCXTkdBdY+WDcT/5AJI3GjOkk+rZIUt
	 +DYsvbXD3IQQ1huivZNp2HGF8MZwwWvfiKyZlNWwVGcwj8tFYh39jmnZg+o+U+UDm6
	 j7qGQl5aCNHFxmtSbDbq+EqMpDsXPKWP93qrcKu9KG8e8shD4ucVze5fQRwCvjCqnT
	 /9k6RxRThDr1tN3+Ymfrg6z6TLP437Y3B6yFOswJRQJlZKuryzfq6YgVNYSTlt2Xe8
	 6y9AjZ+IWNt0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF892CD98F0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 07:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178202619368.26126.15665961541789218100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f71f4aa63efdcdb7f4ef4f460be1602b3f2d8579020572bd7c5c8adc68e39563
Date: Sun, 21 Jun 2026 07:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782026193
