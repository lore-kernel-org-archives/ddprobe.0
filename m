Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17C291D6193
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 12:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763986914; cv=none; b=ZFSnwC3Pvzoa1vWvnksFoIbJ5cb57q77i9P4TWHSY9m4/HKKkhBpUaUp9MuVroEW328iglmXRhkuxCyLD5NoOavS52C6KncAy7FZfYDCuudB/XYy6T/Zv6apBReoivj/PYxHmw0sUD+9fvpDCnhe+y+Q+CHwHh3izNhee+jdkHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763986914; c=relaxed/simple;
	bh=F17Km6ecPTY3oyUzGVsHoTd7osDFLFFOhVowRhEz+10=;
	h=To:Subject:From:Message-Id:Date; b=Qp+3FXavxfsFhdHvNsf36Zi55SgA7RXugaOsTleyPXx+LTlg9KDd8enA101OnqjRga/+4tM8eXZ+7S6a74uPoWidq8GyyTO2Uiak0kPPJS00vTVH7ewInOL2LC2wCOD8kghh3btuyRs4HHK6INXp1SJmXTzpymLe/2iD8MQJsy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aq7/O6xc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aq7/O6xc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A250EC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 12:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763986913;
	bh=F17Km6ecPTY3oyUzGVsHoTd7osDFLFFOhVowRhEz+10=;
	h=To:Subject:From:Date:From;
	b=aq7/O6xcEmd6D3zC0a8h+iv3o2cioTDFFP9EJ6DgXoXF0tZo+itBrqiU0nbknXMIX
	 b1fe4431Co+5NJLVr6vXXK7l/neMHfspVvkyDc/YRNk6y1XpHOuoePpY4iVLsSwbrq
	 4pSjpBufT1yEQ/HPZwB2byXG/q+2sVxugQgKQ+rLCFSANHindtcsBDsa1ZDeKbAbF2
	 EQ0BblL5/hCwQWd4PflZSuL+PqaB1CxxIWe9MmyLtyaVgx853BpRQzxxa+uuvnW9He
	 ZUz+tTW3KWKef5OwMl8QLanvrhCnyP39QOhaekU/t8nnd0diIJBLSpEPQixQjB+J2p
	 tEZFSoTLJ8b2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EC8CFD313
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 12:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176398691358.2175.5163454440495293376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b647e628c579dff20593b9a52d6ae45b2eaecf757de1d32bc53e5c7283bebf5
Date: Mon, 24 Nov 2025 12:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763986913
