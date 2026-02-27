Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04246218AC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 01:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772155494; cv=none; b=r5CFYJ3UpOlqXodnkg5DgMgESeK8UjCd8pWwarpXqumzURPqPHF9/F61T6FmNo8JI//lgzbfZgR2+EHQUO9ynXPv/jYO8uKkG8ZdPAM1PozTffGiLJaVyPq5TKLIRsEhdFYEYRzEUiriVOCnFKCiOBZ0Nfh6Hu0Jql1NyvhwcaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772155494; c=relaxed/simple;
	bh=kf1byitx0UaM7F00FqkA6vgoNEE+ydT89W+r1DptrPQ=;
	h=To:Subject:From:Message-Id:Date; b=bbpGdaEDdYn7Yg8Z8P7QNNPOmzbvkMhqUmy14YESUFo2XES4SpMkiAhMIUz9p5YgJPHkSReelO9IrOOwznPgvgdM1hlPaNzRepqK/3uizn35VQtgveCiLsdTtLzCAFNXLZtoYOhwT8daSun8Il5b7dRbNlwRQwK1q29x8UA1Nlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gPEANOMM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gPEANOMM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45F9C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 01:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772155493;
	bh=kf1byitx0UaM7F00FqkA6vgoNEE+ydT89W+r1DptrPQ=;
	h=To:Subject:From:Date:From;
	b=gPEANOMMEC9vd7bbhQ9OuXI2Eqy2kB5MdJFHvoLizor3NtbKasmuzPdYrltlPuVeH
	 mNb+DrErXJUMNDmFV790+Q3D8plWwdGTKlTEVehypQZt+rbigBj3REtOEr3Bf1dwq7
	 We0RsRBx3sCtvCjK24LO59FY+Zj+oj2njjQ9OEN2p2ygdI0uRTJME5xwiVHD6pucLX
	 LRW0uQp8QZ749EGUqoTRs9AnTw7WacPUxiIPvE3Ej3ss3lxhmZvEbIeAjoS1kW74/D
	 m+4DFMDIywERa7u8DQ5GOtm6/bTWJ+Rzztm4zFuD2I2WUDiz1cbu7WKnQtyOMtxWOC
	 fP9ExuNpCF7/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B37FD9E26
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 01:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177215549358.31782.71830765012964149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3778561c422d91c7059720335648003c7a996d910f6a69d365976a3274926864
Date: Fri, 27 Feb 2026 01:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772155493
