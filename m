Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F3EE1FF5E3
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 23:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774913094; cv=none; b=H/D8Hm1F+catrRiA0/CUimyQjoqZhBJB5zjHS85CX8YYoYlOOlvEh8QA0EyM7Dr0XFwUBKJryaTXiZKT4xlDltsPhA9BBsYIOVzbEI7zWKr4vdisWXlTR55s7f43h6UNkrp7HxJAoSPrClpTTyeTW6oUxYx5AIvneuI26sq0IAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774913094; c=relaxed/simple;
	bh=qc9fVofQrwVXIWFEbHozrY4EZAnOmSYidNPrEIOuHxc=;
	h=To:Subject:From:Message-Id:Date; b=uNG/NePfwLrm/v8D3/MoNpXKQB071kGocznmxoLblx6PeTX4ZlXjy5gHyjfLuR/bN96VVyg0nzysXnyYOy/6q4x+qv/8YvIsH4ew3hDXez6DKcvFgtBdSo6dL6XrxjRQdHf2u7AJ9zM2zpymioVRYHBfMGjbDqc/IcA90vLTrBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GTtPl00J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GTtPl00J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D22C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 23:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774913093;
	bh=qc9fVofQrwVXIWFEbHozrY4EZAnOmSYidNPrEIOuHxc=;
	h=To:Subject:From:Date:From;
	b=GTtPl00JYLfCXcIr+G2uDCa9Bv1cDNLcoHXwy240WQU3eG/0JnH+S+2o2+N7bdTwr
	 Jlk7E4cn+WVWaNDi2wWRLbC1KBeJG9Mv9QaSx7cWcsyLRTRAhPuvgu+iOxNSbIrrFE
	 F8IoPedg8DadjL7+NU8/qLtK7WxylbqvFtaY/h78nCadpZb5EGTxGM2PSbcy7Ad9w3
	 z/ui2bFX1EUMRyMPgpP+p2Y81n+vC3+lWyC4H+dIo6jJafRv8JSBaT3rCQsmZeTybu
	 7oEZggcfrTGp5b73KCnKj8syvWfV5sFqqoVs6n8SZijU5vqD3Pr53EyTRbuKoLDObd
	 pf+da4go3T8Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909A11061B24
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 23:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177491309358.30245.10837038186496600393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fadc99bc258ddf55f8fc5d5d6391109f167275e24caa48f0880ed59eda1d4bb
Date: Mon, 30 Mar 2026 23:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774913093
