Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD93F3563FB
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787502634; cv=none; b=O+xWsVJwLj5Q+UNm7MUZjl4vb2D9VTfJg8rzioWv2bTwRjJ8YtkX9NaNeG7R1bsbH0jRzyR7DujMvhwE3bKjjcSc6wuljaK/iIMn0yKzpG1fTCJGHJHQy5XcQoMBMsLofaI2CGXOAcJWYDWW/MDgyQ7jxR2C2sMbny7ITAq1I2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787502634; c=relaxed/simple;
	bh=tg8d6gAG/CaC0Fw/X2cqgqms1eYjEU7q00v/udxD0BU=;
	h=To:Subject:From:Message-Id:Date; b=qGiFPYwFLX339N5KoRtbTgqeZ+scMBVHtFkzrBJblyqZhKGBkVx/pZovjKLLhVaORR2gzFg6tIIsoFRwN6B+7zl+oyOJMnZ/RkoOFjmc5y3h2uJgcMMmqUuqHab5+UEs5CvpaQsUGad/va5d3QnfLJYGNFP+9lXKo8bQQl4Utbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hl/V7qDY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hl/V7qDY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCB9BC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787502633;
	bh=tg8d6gAG/CaC0Fw/X2cqgqms1eYjEU7q00v/udxD0BU=;
	h=To:Subject:From:Date:From;
	b=Hl/V7qDYly3e+Pao9hida5a/5raVpCDNGx9lYCww1SS1KviESAYbPyAAaNhmJY3C5
	 PTUPKVumAZwOPBUNFvrb+5jEE861QVCDDaHyWyYnBL0EV+xQcNAH+kqWmH4zepNf+e
	 9hK27pDSYhiGjk4WX1r1taW6awJ0cEjAaJIOFfCKLCiTev+H2PUjBO6U7XDOfAILUc
	 mwKxFPDOyxscTrT+RWmuc2p8GfGEqQTJkmQAqoZVle+NWdN+oikH+fSFY51KJZ9Gpi
	 A0DXQCVePRXXjZBWUhOAfpU/vlMWTXX2LSiUo6oWYY2s89kkocyOmAfJ836Ky8JBv8
	 AuLwP0knI42PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1715C5DF81
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178750263369.8920.7565383925674295066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4458a4ccaecf65d3bed9f8e6c11f6ddd62b882999bcb287e0e7e4225cd4afdc3
Date: Sun, 23 Aug 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787502633
