Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A33F239EF25
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787558434; cv=none; b=eUwAwHaAtTy1K8JaC1uh6w0Q84ho6rP+xsn9UoW4fX52IGi/GT8hK/lhcw414fUzpnL8Vt6xqyoR7qd2AsiPpk8eCzn3+t6LRU9BnTrY4q9DAo2PyMW9govt2hIVOPov+lWPJNOCU8ues/O6NP2Y54QiTALhjajvg73aoladpSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787558434; c=relaxed/simple;
	bh=I8mkYiNCIH+Taq/w/d9JfLlWpWdzx7mftxbycQpBvq0=;
	h=To:Subject:From:Message-Id:Date; b=g7dxLEyd0gAlq/c9ybg98V/w4mCPXnNCdOQZWKYT1bzfvlhpptbxpid4FUuev0Z+B1gO8ScaCD6SdIN1+oExUFQlBfF3WLxvvo8RURsipTF9Gjg18Wq1Ym88qcXqozzt2CT209nTGJVxHq0jRtFjoXFsY6Y8wzCcqojAMS21h0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YFlW43U+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YFlW43U+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC42C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787558433;
	bh=I8mkYiNCIH+Taq/w/d9JfLlWpWdzx7mftxbycQpBvq0=;
	h=To:Subject:From:Date:From;
	b=YFlW43U+8BxxTtsud/XYhHW40qP1ewEcfg+RXpZ6jSVmTYV+JGP92EoRNMe+VTdcE
	 x0tT2LxtMDlGJfLPW5BN8qAVQnCsw68KMdEmcqdSvTsgNSbgnBUdT+K4f2EhLgUpTr
	 F0gsPADmuMJO9nT1pz2T3djbDduRAA5P8lqSetZr7BFWDc4Tlhm5TlTyr06Gmc358P
	 h37z6Hsk57ZPUYt8aomqLtxYp8yymBRDsmO6jdS9cChDNwLF9XfxQswNjPcXHm+X3b
	 aDGDAYka6W7SdrQ1UWcDWExq021ms8pG3OA+GARH93svxGbHMN6edJOwlJw9Yf23cm
	 A8/sO7sG3s2Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC26FC5DF81
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178755843369.28390.364040424772927796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4464ee989b4678d1a3a33a78c3c62fe5df710912c6e6e127dab944d928519e20
Date: Mon, 24 Aug 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787558433
