Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D30669DF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 08:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712650097; cv=none; b=hNY89Jg0RGPDAc89TUw+TSTrtmclYv9/LzkzCUxuRR8O2SY7jnkrJdR3dEFDDr12E/DnXufshc5Yt1mswsEzI7ZrMk4/mLVkyXuI4ZuxJAyaallR4Q0HX+17izb5HB7xNPqjci08MUuDPmwOVpfrK6gyssjLLucEAl8+uSpY6AA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712650097; c=relaxed/simple;
	bh=6uLNZ3AZG9sRp4fkVzrfHYjbKntpHia7jA/zUBacPYI=;
	h=To:Subject:From:Message-Id:Date; b=WHLmWnzmseJvYxiOQe3fBcQBUFgPFpTrxsCboijvcCIOGZOOsWl/kISLYOc3cjRRBbc32i5lvda+0t9b9caRYGSmpuHTR8qpEjWz+XlTDby2KzanUzgRP0Sq/w1J6eb4jTmsqHB+luM/DHWA1H6W2ME3tHwH78NTdloE0Jzk+h0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WDu6Gj/n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WDu6Gj/n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 91F31C433F1
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 08:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712650096;
	bh=6uLNZ3AZG9sRp4fkVzrfHYjbKntpHia7jA/zUBacPYI=;
	h=To:Subject:From:Date:From;
	b=WDu6Gj/nDr/X7O+WH2EA0gppynnG6GMz80fnNU6XqP1k0z2FlzZLW60xSD95QMOL/
	 GJO2PPiljFNRec9Z464eMpcA7WX01qlC56EQdKo83moMmgAaXoDJfAkvY/6L1Thiux
	 MFwfnUaVh/J3z2e7pWZw1rmiTuoI6QJDucc0s5aGTN4+nBVYHP+18rejMQqyrVWei/
	 bFoSNoM3XlyF3yoxDamHdIpPnGDssQhd/R4WwQL43u/uLQyM9OJzkFBTQ0LjnrdZDJ
	 Fn2OqxAOToLXRABhvM1gzBa3cgUogAFN9EceMYi88Gj1SP0DAsxHlsC/04KNjNHxeF
	 tXnUunrkAucAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 81638C67861
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 08:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171265009649.4005.7422170010441438048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fb79cefbb11f697d17c00de02e21857b5c17b3f67ccf4e81a4f1b3d7c3b7607
Date: Tue, 09 Apr 2024 08:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712650096
