Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CD691C3F34
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743366596; cv=none; b=PhrS+W6+NS7KbUiU0a3d11kcXhARdGuRxH/l1AL3GNzITOtbMJDnyyPel6T/YIS9VTn5edGdGjxRga4a2HIcBue8vpJ+kytEhMMzA3hFAZBqdRmzJd0CLcUuYmQBU498CA170TRRRPeVDZhak4GW5BwC8ZHYnOKtp5qMbR+4YcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743366596; c=relaxed/simple;
	bh=9RZka/h/sGTspC2NfK2/C6Je+7r6H2OfvY5CYaoqflo=;
	h=To:Subject:From:Message-Id:Date; b=uOQLv1UfHTUN5LVz4StiS7xXqog6/cPIRllx2D5UZXFKA3C5dIcsP6GDLC6QJ91W//pMoKhX/FjwqGALMP/ksfhqqVx7CwdlSDvwjpHDE9a/K35lniQD3vb/HoKpdIOl6kk8zMu4ROaN27RLiLu7OUFhkLnpGwcgLAqgkgJkYDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hPIPgNxb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hPIPgNxb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0FD8C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743366593;
	bh=9RZka/h/sGTspC2NfK2/C6Je+7r6H2OfvY5CYaoqflo=;
	h=To:Subject:From:Date:From;
	b=hPIPgNxbCJeNSfAH+HSuWMsK39BSx4xNBvk+h6Ivzdy7bEEIZtPZPqxl3UCynJ1F4
	 0TkZWc7YDeAn9LhCLy0Mj7lmybqathJ1WE0g6B8j2dH9+TUVobuX9MTA/tjHEho6Vp
	 ordbs15OYx13lHzC2yAjNfyBWQn1rVCWaAIhc/aKfOQJdV9pMZeG52eJVgxwJbwhhh
	 nFakbmxoG7OHmf7K6vRJbxeJ0AAlyUZJq96FHQ1nORU3clirDur9lCJKbtMRUjmoej
	 mwMTinRS8/8oFEf4iJ/MPS/4BY8gghPlVd7tC/zUpdGoY/R3jY5lDy2Co+9gaUC/J3
	 3L4lS+AAvkrUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 972BDC28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174336659358.10814.14930537371744181376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43672c44b005a2685acb454e41d41bec9771c47d3d3f8e7e312bfc3925fda1c1
Date: Sun, 30 Mar 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743366593
