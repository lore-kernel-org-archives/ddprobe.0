Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 201FA80046
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721378754; cv=none; b=tCygQkveRVkCk59GWQgnPp0+m0TzqXNfNxih3o5oUF8JAL9/iCyVgBI8T5Eux/9e+lMrWeh4f94e+3Wrxt7c8r91h5IkdlDThJiGrd/tH+WyH0L/i1IqrFDEbc/ZgY/9ewbUjIl0J9la7Qzm3XsIUF87CRxIIN5QQ4IBcHX8jT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721378754; c=relaxed/simple;
	bh=qy3p4xRQCDffbOqdcCHoSqOH++xRdBzcNGXgdeO17YY=;
	h=To:Subject:From:Message-Id:Date; b=LpGY+zpv1VBX3xPDUGEoIKY7+Fv949/hDQd13qwxBiB+5NQFCC0AIHX1Kzd+RnxEzGzoan4wlxNmrj9Vlbayync31xGIWiuMEeSxXUKm799sdNTTxnhHeIpeC8ebt6atONJnlVI1diKdSNADPvW9Ulx4ytLa5S0kNv7qfPj4N0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GxgvIWPa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GxgvIWPa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B21ACC4AF0A
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721378753;
	bh=qy3p4xRQCDffbOqdcCHoSqOH++xRdBzcNGXgdeO17YY=;
	h=To:Subject:From:Date:From;
	b=GxgvIWPa+c3P2XwErnBBDBy+S8BEPp3AHx1oQc1cfAAsNdjnzZleGgGQ5CBe/lCob
	 N7J8R5nkGIClFF4AlpjeIJhDB54UF7UKgschJcuaoikN+51u5mMYs81oHEXvXnlFS4
	 Ls0pKfOHY2atWZk//zhAX83mDKizC1FnCYO/sC85m6NEBgnCRS3am8oqmxuU9g4DtZ
	 Y+IRLchsXfJeAcxXngxz6D5jjBpkPu7PpxDt609mssYoaG1Ri7AMd6LjT6uF4oTFaK
	 RGCC5LlyhtSsWrmHYMEMFkdPYCkTtPmbO82NZ8NRXne19ZeLz8yULfri/X2pxZFWfB
	 hlyt01zNMUTHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A85CC3DA59
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172137875362.15340.6636163471964288603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 703fa394c5eb109f9659015f78d856edb61b0e741a047b521778c381b491d226
Date: Fri, 19 Jul 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721378753
