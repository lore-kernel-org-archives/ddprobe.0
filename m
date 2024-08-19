Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40AEB188CB3
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724103954; cv=none; b=uH2mwJjIjezrTXb07Td8bPAzd6npEGdF5kPWcXAeqCW4aHvQ+N6a2wNJBTiZUQDt0eYcUJDqQ/RMWoMcPkRvQBXe2eTw9pqEuudR1T8ERrfiJ7FCasIM3kUQxLmKb5usCx8I8bKev4ykItLHYU52W846eNqXdoQ4mgBsnBDQvs8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724103954; c=relaxed/simple;
	bh=fbAWGt1/3Sfl85nhUuN+v7n8TYphax/qaFEgMKNFLWk=;
	h=To:Subject:From:Message-Id:Date; b=C4/g4367+iuzGgctv4c/HmR8x91gYiWBF3X6pdMEBjIzfrLlXwTjn5kZe/u1mBunTcX29dY4XCkzyb7Vo2WiG43GeGL5x0x0YfscdYBCgT7E/5i91Kio0AcVpL79gI+G6jjQlkFlze4PCsX2vFnodyDU1X5qV1r5wPyuqglkPm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H8b1/9h0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H8b1/9h0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEA73C32782
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724103953;
	bh=fbAWGt1/3Sfl85nhUuN+v7n8TYphax/qaFEgMKNFLWk=;
	h=To:Subject:From:Date:From;
	b=H8b1/9h0QuoQXNZP53iWwa86UZoszYXuMZPk5KjYoTCQc1sEH7VJ8pP2w9P2EATOl
	 4D5Wz49kUs5sae45i04ecjl+ONU18RDA5N9K91SaRj6wZaQdx3/fPIHNqi3AjTbXoF
	 97NUSf7h0AH4S2e4YdnRAD8bijFyWautlq3N71+2vEbIBtVxAZ7mlvE53zJwuoyPBE
	 L5LwupFx1jauTqeauU8X2jjdb7Tk+a3hEyX7EWPfQ1BLbkX9FC5hRfYrhR8I1Rqsk8
	 qO5gSQ1Cw60sfuqhAzSWwaAvD3gZdfk/1PUiKcmOuiShemaqebYUHEDiDUBJLjO2eF
	 qiyYqBFFKyrvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A92EC3DA4A
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172410395360.30127.11806748676215360600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bab39f6fd31d07fd6b7afd2616caf9710b68b9e67ca46290ab3ede38d78e4a16
Date: Mon, 19 Aug 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724103953
