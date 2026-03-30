Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 131922F549C
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 22:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774908294; cv=none; b=nLjWLj1uzsNl2l8ERYHdfoNfqfTJeNKeaaVjPDB913YUrrGIDiIrQG8H8UNnOHIMorITJsE00qqLs30aHECdTddSWiDelJh2aw3lCqKC7pT38orOBLJGJcOxRk5NRN7EWfaESb/Jt7jN1mrIlpvGDbgZXxZw6jsdygj5wHJkbtw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774908294; c=relaxed/simple;
	bh=1tZkSkzNy3RW99G0xhMtZCCClUkndzV3LHnafY1vFxk=;
	h=To:Subject:From:Message-Id:Date; b=W+kK4yuMSlokKofO7MzI1M2Q4/7ai4wY2rAU/dkrTdVcIDBdOF7qlRJQYdbEibYnD+WpDJpwCPeJECCvrEGrJX5rRxLrH4/g/R1YJFKCSWA6d85+ymINUG4hYfcRluB43XRzW660qHyduG5SzNa5s9yE4UlGVebDsN4Me02WG1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NzCqc65e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NzCqc65e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A107EC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 22:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774908293;
	bh=1tZkSkzNy3RW99G0xhMtZCCClUkndzV3LHnafY1vFxk=;
	h=To:Subject:From:Date:From;
	b=NzCqc65eXYvp75mtGyEHmxEnCtFWEWDCaX3svWAE385yDq/FmdI/dMT6T0u4tfTSJ
	 qbx7G2HkVqp6chXBN51MUdOrYUwABk66oiicsZo46+bYWAnMMO1T14tbv+1E7b7quo
	 EKAgOM60xZBB6f4VD+fO5q3SQhB8wlcC7/TfwsBtpeFSNSGk1HrmWHQfxIHK2ew4It
	 0+3Wuf4bsdU+e93vLR+DYiuHlu/A1WtFMsvcEACgQP2/xxNcRivs0e2UhSiltVEDRx
	 euk67aUojlUYSB4drTN7ewnyqbZRt/fj2SwT4ks3ki3RFEG3xrjS1I2lAu7yBAydIK
	 /amUZ9abUVHwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9105F1061B24
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 22:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177490829358.28354.13038957968707656691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e200dd1cdfc3bab576043c92faa58b2065e24408e4fae630e7dc4abb740569b5
Date: Mon, 30 Mar 2026 22:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774908293
