Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91A7029CA
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 06:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719469463; cv=none; b=HXWU9+snGRD737LErTLTSkVoiIBbVB4qx0BqOcofvmtEqK5BlA7a5yqvrH1jHDDXhfEIpXSuVnkuzDAt8DO58oL66EdoFwo4iNozcWAffIWn1G1SZ5LkDS37Mv4Ta6LA/aNQSNaRX7nCeL+zDK1/tpMx1Za5Izol+Rwbo2UZSX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719469463; c=relaxed/simple;
	bh=aVciMl7BLdLzUyVCGwp5ggtdt0Bhi7+1K7xjL+wE8DM=;
	h=To:Subject:From:Message-Id:Date; b=fynB/mRaDWn/lek/X7GF2+/TQMmVqta6FC27CUaTpC3I2bbv7sGpmnygr+OBU04lWxKa3me6hDtqpR/CUGm0qJnuKJ0gU+QyvvDklYgbntl0Yag/8eecIbkkRkmcZg+Hpbk9Flgo6YB8LBs9NekzwVcxB9i7MH6mpwOG7py9iSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ekBSiOZ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ekBSiOZ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2D05FC2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 06:24:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719469463;
	bh=aVciMl7BLdLzUyVCGwp5ggtdt0Bhi7+1K7xjL+wE8DM=;
	h=To:Subject:From:Date:From;
	b=ekBSiOZ1FFyiBcjiQYVO6klcq+cujGZXeBmhA40s0p2sYIXqQWIVoAoNFuP8WYd1h
	 xD74qCK/sa2vDfGKfDsBcxTHvapUpL5iXq0yOvC4ZjFVOVO8Ym8ue+6XiWgTtk+A/C
	 W+u7qj1peMSkwLTXuyQvTDkZJ+/kErj4G6/O6ZXuYEQMuTJQwe9strmTtWMLogo0h6
	 KvgFNYzDpTxbUyabO/bm/WSs/jKWxGsllhpQx6o2goRf1IHACK0OQkFTle0vICW/gb
	 p5fO2JtWWxUK4ymnp8A4iKZXLS+6Rl27CvL0aKikclirI/Fz6nKZ0oY6Xt12zdoqBm
	 eIzg8scYazxhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D69FDC2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 06:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171946946286.29797.1133401167617718498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c155685144fc723b1950e49617d343c4492fcc1c257feb5d4c585ed3ea250ce
Date: Thu, 27 Jun 2024 06:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719469462
