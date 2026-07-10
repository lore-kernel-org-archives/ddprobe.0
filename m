Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FB563B0AD7
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 23:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783725514; cv=none; b=hPvghSiulm70VGy/nFRYF0iBrOP0TpJXcZlrm+iV112ZhGZn6Z7RP4oyPH1rogIybU3wZC6wmwpcJMGdx01qreKBgasz2fQ1dw0KXpfmT2KoKD+cAmTjxUcf4Kaf5DBnmAXx6cr9vG5s4EF+GMIJj1jorq1u0A/CLN1MvvSV4C4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783725514; c=relaxed/simple;
	bh=eV7psK7E6jVXBEg3Wx/GYUWGvxQaEUyxZkNVhgdmfJs=;
	h=To:Subject:From:Message-Id:Date; b=LrpK8YnrfJFNMLJnMrAe8bQhTHpRn1YY+m+tY+oLR/eIv8EbS3iUqLjQUN3kGl7H4aBHzQ/i/60cY6i0ymsfawHBQ02xjSFebDBjJ2p277TWxAZ8Dbj/nnfbPgL8dmpPQme6ty9bP4WGwj8EwHpW8tPipmmFpkv2CLsfvesZYTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jZKlTEiW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jZKlTEiW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEF7BC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 23:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783725513;
	bh=eV7psK7E6jVXBEg3Wx/GYUWGvxQaEUyxZkNVhgdmfJs=;
	h=To:Subject:From:Date:From;
	b=jZKlTEiWKnYBA6xy4fShFrPXOsPIP+Q/UMePamqgLAT8AciAa4J2ecpITzUZbFaC8
	 h9IZaHD23NIbCp4Xtxe/kelZIuD9mLjaf9MFCex4dGAbu5M7PsWU+x3r+NHxgmVb6b
	 /Qo30DBuIj9eDGNdeu+EIk2e877GDOxQyTpcdNdrefR8XvcgG9saoQUB5l672WsQGP
	 eoHarmCcqZCSr1vALDJa/STGzNSKe3aj7l19HIACDlYmDsna3qLS/N2sJ87oYeQObd
	 YRYqCPjlroaKNHUvFN7BSZkHQORQhZlwGU967dBwcIjankf14lD2ZQUT3DCmTENc/4
	 ABuxO/Ndp2R6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB28C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 23:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178372551368.25459.8481180392345225605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1708e92a9da27910562246cabf56bbc3e456ed2afb2cef18d6f54852baedecc0
Date: Fri, 10 Jul 2026 23:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783725513
