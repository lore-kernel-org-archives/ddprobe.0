Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48BAD28FA
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 02:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714617743; cv=none; b=Rn+u2ub1ytlP/ibMaIO8bwsmR6f05jH++nS8TKjvJ/3HKAkr2QVg5Y5+bdbY0DnuoNpZ6u/NlZCnuDyMwgUaz6ozQGGwLHTQ8NOaHZrY24tKBAmsuKPGWZAnCO9i1ZbW1b+CX/EXV+Q9O1CkeT/oHV/c6fhDnQXOdEO42R25CXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714617743; c=relaxed/simple;
	bh=P5aamhXBKdmusfvyjP/Lc0i13ZEPfyNEXsuDMUl9qOw=;
	h=To:Subject:From:Message-Id:Date; b=XMdMN/7lPhZZfqgAA/0nMNCaXxEn+ns6DKntgLs3V9k7DEWWrhWQdsvjJ2MibR4RA0CZPNZC1m1xLuQV20l4qHwHLEm91EhMPNARQdhdUBVTK/Y+3R5lzqIOYllLmsTEigou6F4RCZipYXY0GP7K26wJ6C+6mbnkiAUyhM8M0aU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=otV9R4Hl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="otV9R4Hl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1126C072AA
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 02:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714617742;
	bh=P5aamhXBKdmusfvyjP/Lc0i13ZEPfyNEXsuDMUl9qOw=;
	h=To:Subject:From:Date:From;
	b=otV9R4Hl5BwTT9xLC+Jp2AnVCQhsVbSNKYaB26mrrMmtRjv8YS4kIAnINTW55r24F
	 g8L1bPOtNg6WGEn/Ox/ok4t/QV+DjP/ijjuBgwkjv66Bl9HwBflP3UY1TJdDhoGr3H
	 0Hsn+GRSNBmtPp5tuWGlIeK5c8Y8W1U86ZMo7SHPs9l1clgKeYRRxTBSxpx3i2aSzv
	 GTfDXBeg3Cupggpkg2+/LLq9svXaV+7YUFu9T5wjyvHqu4/lpvULgU/2O2XzWqlLpa
	 WJd3gIcvoD+fPAyJRcRObFunGO0q8NfVMRSWljrQg2mZ26c8sCyTeb9RyxFNJJNYwU
	 bNT66mNt8GjVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC816C4345F
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 02:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171461774276.2827.12178658454109076149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b6c3ae5e9bcc8eaf92809624080cfdccf81221e83c1d334a15c304259a4b153
Date: Thu, 02 May 2024 02:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714617742
