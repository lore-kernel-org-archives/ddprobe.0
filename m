Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2740514A60C
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 05:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767503634; cv=none; b=W2Ma2+rftcqAbjoMmswia3mYF/euw4VPuVvrOR8Y3O8Afv4LGxMcFGujX86RNvnxuHRQZgp3WLKKC4tW0jDIGnobMOqyfBpMhqXkK34wXnmsf0NH2CvmTeAZRCjZBskYVNzfw3EEiP0d75VH4HhfG7J0Sb4fGLpOKiV0gFfjrIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767503634; c=relaxed/simple;
	bh=sRLIMSs33lElCIciPu+V4ED5J0wlZ2Dh9kVZnzcpAjE=;
	h=To:Subject:From:Message-Id:Date; b=mmqeYKNSDSDQKOaYo//pPn1zXzJ07dSpAshmj4MtN47ctR5OoiWYU0Srpid94D9UcyVx8oW5ktvhMY7a99JLsxWWQTCnPo4V/3lmzAHEGX6Sj10YLFywDI+xBEFS7jeEtCcSCLqnOoSSvTUpdjdJtpuDjCL45plraB+N25zoMag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oIeTFDk2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oIeTFDk2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52A8C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 05:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767503633;
	bh=sRLIMSs33lElCIciPu+V4ED5J0wlZ2Dh9kVZnzcpAjE=;
	h=To:Subject:From:Date:From;
	b=oIeTFDk2E/cv1itOyh5OjlZAf2aLF2BwfcMWoYS6rVV5pAp2mT84xX8wnhpFavUb7
	 n8oMf6Pxns6G+wDaZB3nB70PBLSJ/av7lR10iJ4zAEPTs6YDqp2mZE192ygDT+n/TV
	 YzP5FC3QZ4tZHJTf5m3m72ODaJK2tJkn+3TSk/5qrT9my5yhiswN5UXB+IlNl8PGmi
	 V+p0Zs8ZiCgj1OOW6rA6FnUXrI9Vwzq54aP5BQba6oKDVN2UFULCoHtw9MLE7MJT8t
	 SDBA1+47QaYmjrTTrmqdSX+7AA4Ul5KrGzdoh7AErds1fnDz/e/rrTF8LYG+Bin4+R
	 K7O+jOSqaMs/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920AAC2A069
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 05:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176750363357.4995.10925302965779354017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f96f94b6dddcd8a9ae8e8edaf2939a41687bb5bfe8f0314024f659dfed96ce5a
Date: Sun, 04 Jan 2026 05:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767503633
