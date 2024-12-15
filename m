Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A6F526AD0
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734288954; cv=none; b=rB0tfQncDnUzs1JrFwW6np4XGxpHWvDGasT7gLGKeHb6HmzDr3AMXBZIO7YLmwkEuAydTDDDCBMlHzpb4/wOEKgrML8AWWvSSF4mNmj3ZSMv4n2MXzV8DHxvmcptfvwGdT+j3sIPvq6sxRnJZvboWz61vKGKP5GIVPgc7HlhSEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734288954; c=relaxed/simple;
	bh=ec05CR3nyvlUI9n9nyy+nN8oEDZWHKBa20x8jKNsjcQ=;
	h=To:Subject:From:Message-Id:Date; b=PNYzqbvnKKUKriZFGUUkoXJuAzP+sMywdGjFSCELogK7KTTuRHLmWNQePOHptKkkC61g0oGkJMS04WobXBgmyAlf9KfrxlyDoMIzp1PfGBy5zt8vAksLm/NGPzeUTnUEltOeAMyRh46ZhbUPV8d04AjHZdADAfxmahEWdttfqvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f0l1ZbjS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f0l1ZbjS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6237C4CECE
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734288953;
	bh=ec05CR3nyvlUI9n9nyy+nN8oEDZWHKBa20x8jKNsjcQ=;
	h=To:Subject:From:Date:From;
	b=f0l1ZbjSxNtAMUUJnRarzdME1+S98EQ06OvqliE/ONPoSBA+Tek+SRBow/HxycoVf
	 GA7+Q0DcC5A4iGJFpXYC2r9KWHyMENWru9zj3GbsArPFfkqGHXULtd/D583xZDtVsB
	 dsrwizAogTELj3bywkH0YdU8H2IPKnSSx2BaFVTX4rAY6C0AApyCNna+JXecniwfNV
	 MEa/1xWa62jChjb5UH67toyw1qUpu/wNKpSPpkWHnqgbucOmD5TSgUQ/3Zdb5nbMno
	 Xv2p5ZOmfXKi27bvcR1LW9fuLG0BTKUwkTg7S/ZrUVWe2bDpTpMTywbpQidxyX1+k5
	 xo6avGtne76EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1C5CE7716A
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173428895364.6817.7106128683727739039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1e82b8243dc4887a393f84d30a76f9b2f0e27779353fdb37d0ee7ee7b20e87e
Date: Sun, 15 Dec 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734288953
