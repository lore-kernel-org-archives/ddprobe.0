Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D43038F9C
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761694194; cv=none; b=oraArFcbF+8n6vdrNcX0p3x3+MjJKGmuMjcB726TKWDOkwuUOkSrlDL3RkJS6/ugO8ncTY82emcEcsEX3eKUzp/j6D3wKxO7roNxGablVoHc6AH4YzJHXQqzp4RvsxLIPZ6NS7Grm48V/UwJFBgrWtWaIzczmssqps5tebU+rmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761694194; c=relaxed/simple;
	bh=mKOyovBJgPASe8B8I1QL4PXlD5fqsM/OFXyLIDqkiXQ=;
	h=To:Subject:From:Message-Id:Date; b=dJiuuXENE0KkynDnRs1JWG4DDEJcT5IFp/0Nsj9nCmtPv/rIJlO82nS2p5uOlndLEAdnbe723DVIrSGjVCamHch9iFSlXg9Z18OlKFwBiBlgaUMAnaPX/3tlbQIt/hh+3vxpMfCmIL3YP1ZroyKLtCh6Tfn/+WPZvBvgbE3MUhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S6iSxqEW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S6iSxqEW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7593C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761694193;
	bh=mKOyovBJgPASe8B8I1QL4PXlD5fqsM/OFXyLIDqkiXQ=;
	h=To:Subject:From:Date:From;
	b=S6iSxqEWHyYxgzQOhKLifNKYKy0htFUHuEPrZhVUAkbOibYe7hbBOYt52qT0pjceO
	 Uy0V1AewsbF3fKossQQpSpenQM7sLaelisit0pif6KFEs6qEwFx7yCMuB+Kb290QWT
	 70VpuB4plYD76YoJEDIodU/c00bxIEIgtlccthu7BnlV+mQj2d+6BUqYXubmXuT6Vv
	 K1p+0O8LSaECe2pmwy+1TgCDW+zPuvj1qRdSe86A2uj4Q/l1jlrE4MEcVBT/SV7RWm
	 DCFs23BMHRPOQ20dCq83d4PzcFQ3tXnufnM1L6iPXukqj/tfO+d6RGxlGBPiNlkFIi
	 efgd2Ko786WrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90427CCD1BF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176169419358.21426.11252869962645642427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3672623c8ff4d5886f9a3a57866465b7e13ba8a5b3bb6d5f163f5ddea0971d55
Date: Tue, 28 Oct 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761694193
