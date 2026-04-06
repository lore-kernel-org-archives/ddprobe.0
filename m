Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 308C6145FE0
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 19:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775502334; cv=none; b=PsxPDVVt3xdI9F0EObhIo9aMcVPu8ccnEb9QpawxXjEYrBHqxXI8OkAmhWOTYXB9w6H6v+SvJa/Xtzn7imCPvVLarq3ZPVQY2PzhBnj/c7zXt1pdH0Oz3NZbdrmtlcYW5u117b+IY75/KFgjx+RxvskJ7dvcZbmcihCXqS1aFng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775502334; c=relaxed/simple;
	bh=kKxGlvooQEQsdZA9OPnjMhMV2XwmJ3c6rREPL8FfJSw=;
	h=To:Subject:From:Message-Id:Date; b=Aziak4n/rdzFT54iaAkmd5rQLY+Dv1xDrcHj2dSplv0Chn7NHQv18alOy8MNBedKCTmM0BtFNOuhnJD/5igLM2/2PmtfaRBdGeyx4fBPIvh72R7JdwObhgB0FuNU6RmHpuWlYWgR2PjY8vxcXNOZWJ+kJEtaKiL33dRCORhhE6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lo9GXdZC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lo9GXdZC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEFFAC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 19:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775502333;
	bh=kKxGlvooQEQsdZA9OPnjMhMV2XwmJ3c6rREPL8FfJSw=;
	h=To:Subject:From:Date:From;
	b=Lo9GXdZC1ApvZgZBnseuu4nar2UNoznLh3hM2lto9XoMpuoSOekX2NIlozYAkWwmk
	 5oo8hmeNFmdktBA8WQm/0SugkBSj9s5u4/64aHovcOi5ZjD0vLQqppgQRlZxUoU4na
	 9Eld849SsKD3M3vwidUJJ9+tcMBn38D+Tx2Q/faCK2HQTFq3fVXVeCCrsFybcL/aTz
	 ehvYXo3nFKhGMOGZvVjeOZq7OKnjI17WWX+Ic4jUKB1CzNLavo/YlJT4M0f/3JsCch
	 MnJPUwykTDXvKOGH1ljNfC326hA1yUaVgzIQe64HSysYBF5WdZwRdQdttcyyQOrem3
	 Y/OWawxV8MHUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD241F46C72
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 19:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177550233368.23678.11897515532214780982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f43ee8e187bb2f846df6ee1af2b9aecc887339e27fa0156b2e432924f44c6d05
Date: Mon, 06 Apr 2026 19:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775502333
