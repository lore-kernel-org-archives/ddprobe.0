Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D26F61917D6
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760816393; cv=none; b=IS0kboTBk0Dl0kai3EO51oSJnCa62gdMx8aTge/AEnLOh90PS8ScGDIluMwu6gsVlklvUCzz4NiPgRmy0PTpi9ShgzlCRnvdy9aEeEyh412BBAWpEVwCjLlb1UJLM2PTXMTMqqlInTVR2LuA3ohCGfOTtqFq32QBMt1nKT1Wgds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760816393; c=relaxed/simple;
	bh=VGs0GzX9AyUHBIlvovCG3W41RrDyxEr5FB3cKWBtWVY=;
	h=To:Subject:From:Message-Id:Date; b=ESkwmu7Tq0Iogfi6ossws79Wx9e9tvTG2+/0xzo7L18LyQJnuVooYbADpxR7syxcth2IAZaTC/EE1KCCyJ6DSj+1pilf0R4jTSnBIOnxpqAf0FlBkcCZ0XC8R9txlsZLlx4Me2WeWae53wf1vXCHfVWEoGH4NWxm28jmF4BxV1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UerSkfNp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UerSkfNp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A694CC4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760816393;
	bh=VGs0GzX9AyUHBIlvovCG3W41RrDyxEr5FB3cKWBtWVY=;
	h=To:Subject:From:Date:From;
	b=UerSkfNp1+QxP2pXtuggHA7QmxQOEejBR7h3cjLDxUDssuHCCopyPbGolOOjoikcS
	 uFjR4IdqSDSEI5PoJt/fjFhdHkTzmdPjogvXEx91DGNFzwaNAm+sgTMQkLA8ZEMuT4
	 Ll+4KuBAUIhbJfj9bgOOpl9i6wZQcBsIZd7jZ2TdBHwNnbQvlrnOcwqr/GuKb4daHW
	 i5ytMbbiByD2qklhRJuDdXIVmiW5u5OdtuP4doE+d2KjMQjN5CLDN52oJYWs+xWIH/
	 OtrQ+YHFINxM3cPHn1RoQUuwD6dt8erFAMt2K94GX7b+jSfaPa+kxjLXu+0l5V9tPz
	 2ct7ndESPGQ9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95646CCD193
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176081639358.20064.8829828151260774825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59a42bffa94deff51e858ea3459537438cb2810420ef8dd178c4a07d2e739009
Date: Sat, 18 Oct 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760816393
