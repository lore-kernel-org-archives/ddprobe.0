Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F64B38D6A8
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 15:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783178914; cv=none; b=KKC1roCr7E6v2IT5eIBOwDaI0uClDC1dxyme2BGb0HYmuqj10RZcrCKBisWbjppXegSmLLRAeqBvo7xwVHh2J6hxHS8SzPyAV2vhxWjfpizQ+8qzyyNuglo0KGrnEMICKZ0KgaGiSTY5JkmppDk/U4Zeh+RIU9pFbZR22HNCRMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783178914; c=relaxed/simple;
	bh=R4qlFRlTRF8fZD18l73PoWtfEyzPtYNO4VZ2PeX7row=;
	h=To:Subject:From:Message-Id:Date; b=Wh8IbhIHrEmfsIJ8mvc1fWTyQt0aHhsYhVRHUq++JH6fvfN8S9soe+fNF8TIPqU78DNNtlaZypWp9166sQs0FhULIfFJAwDFYw+BlqGaCFYnkNDzAAnfsuoNLDdELpwnhrAfKdVKIrMNo3koQVgRzfuZ2ZAE8A/Rx2KWAjvnrnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BqbqcWLC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BqbqcWLC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEEB6C19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 15:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783178913;
	bh=R4qlFRlTRF8fZD18l73PoWtfEyzPtYNO4VZ2PeX7row=;
	h=To:Subject:From:Date:From;
	b=BqbqcWLCSZMDPNg9uJK6yrkil1eRcebAV7Zg+W4hLmNndQajiNojt2IK5p46o3dJx
	 fRvCJSLjY0NCTejzVJFR5m7eVDLFglSkad/mVSxilPuFV+ZmO2p1wLlDN0XQR09usG
	 7HtjnPqdxtsn+zTLIz/6d8MCnTqXgwxhweTUOChI4Dzj7EBvql6Q4nJkmZqp/056Wt
	 uYQ9g4iYABGMUeS6wY1plwfLOFJj3Ma7B5YkUz9E8L3Bc0TDF+tSf91WB2p5qmwd7Z
	 OLDYD+8GaoVKlr/fQ5X5e2JPNFwIRyZEgPTJhychdfICDIJf2eXRvW6GFxlEL2blYw
	 U6eTh+5qtmEJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABCE2C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 15:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178317891368.4554.5380695254957038391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38aefd55904a928660fccb1bfb06d3ed67cac4b6599e6073e2ba71118672cd9e
Date: Sat, 04 Jul 2026 15:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783178913
