Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339415695
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754597394; cv=none; b=RpBlpNJ/G97p5qTBv8OuVCvaFVvBKgiBIIf/xSK78zOm04zYU0ys8DG085CH44sjsxWekHWwxKsHMVuEDKPnwNezX4dbMtIUoaFG9cURnMvl76MT2EjzDnV8SOd3rphionQfNi8w0oHYP4d1dHvMYHC+i/uHY8BeZ5Im9HyPy7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754597394; c=relaxed/simple;
	bh=4gflE1sw6CI9NYweFwPg23Iq2ecyPybqM3QukPDOE9I=;
	h=To:Subject:From:Message-Id:Date; b=DNgygrIS8xnCe6JXYo88R9O0zW+sLR7hBx4QKQnyDD/EJj9NyWOKWZJtE/P8F9GlYpd4zMimyIg/V8CtncV5axDQC33hlui04lbuIiwkMg2S8VXaEIxwhyNH1rDQswI/9u+oH4VD8T0NQIDRnvf+4mVOPtxWH6WOh3s9zRa/ol0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mFcUPmG8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mFcUPmG8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6652C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754597393;
	bh=4gflE1sw6CI9NYweFwPg23Iq2ecyPybqM3QukPDOE9I=;
	h=To:Subject:From:Date:From;
	b=mFcUPmG8RFWRvfWfU6ksm9cIiEMj4a6YSJrjyQJyNThslD2x8G+bCF+80VNrL/v/d
	 9i8jTe15zfpZ5uCS4n5nF/nJxvIveA8DCkvVBnArp2xA4pro1ImLTdw5klClAdZE+Q
	 s1AD8bhph1jtT5TqAcUTJh5/chUUZ7lCRdV5WxlvYD11dOErN1I/DB/i0cO6V4Wyyj
	 Y+sLO43mKn+nyZcigXBNrKCGBB0okC9OsqTmCMQBUHXHWwmvo50MVKytE5O6At+aC7
	 WKJGRMNYL5g8EtLFV2rbq5wEeWPzVWvFMVHH90nXGPSKDunL//EUoc+1gPC35LQVRi
	 pLFYHlaFw64Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9425FC87FCF
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175459739358.26472.13126663384282008383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e15651a51bb1104656256002ffee95bd4ba914f268baa450e0c7ad0282f01f7d
Date: Thu, 07 Aug 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754597393
