Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC3D18C332
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 04:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779079234; cv=none; b=S5O9opSoAGM/xA7yw+FS4k4V1MF3qCA5c2yokFaD9g3B3ZSBkm7yVnjM6yYB01yD/P+HXoXdPpl125SU0zi4nMPwi6jLadZm56I7hVUEAw8uRSZ5oJg/S/8QxB0Kj3L6aDYvKmTLdv0WkqG6h9zN71m8eovcAOFsZBrUp1SP0eM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779079234; c=relaxed/simple;
	bh=ToV4GwJkNXKazXv44be4XruhPM7JO57mVYw2A2ZSfxo=;
	h=To:Subject:From:Message-Id:Date; b=uudzeeIiqRQ7Qko6Uf+Fsbj7RMmG0RoHBIiloTdVFt1tAgC7IIRihKEdxA0phYH26bBUV6Nq6ngZ0d7p3CH4yBLORKxDnalSW92LDosZ8x+S9bB2AK9QRXH6QhKrD1UlOgl1+zVRS+z54eN7c1i1Xc7vM2tIdLB2qYNSyysZboA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hpXXP5Q+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hpXXP5Q+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C34B0C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779079233;
	bh=ToV4GwJkNXKazXv44be4XruhPM7JO57mVYw2A2ZSfxo=;
	h=To:Subject:From:Date:From;
	b=hpXXP5Q+PN5nHlD0J5YHO+KwnaOkGTgq5t8FV+xj7ti62X/8Zc1qZGp5/424Jgge5
	 fsYUcpqPZiW7wzRGGfG6DGgL5FkingqzF52xutewgBEVLBz4PwA3PA+LS1TTgdXDji
	 YOtc0POU9NKwRBJDQk3pwOYoFJ8vkh+qNgUmWg9gBtnPJdCDakTiioy7JSbMLNzdUq
	 MqDg6n49tfcZF6qMYkNBGvAvWXOtIIL/cASiXcSf1kITE1EZof+NGQbtVh9xZDTYcc
	 PO0GVXs+1C9McJBnsnS4+mUfxt5JObo0JtcA1yp0V5DWkl/M2Vv34XKZFvPGFAd3dY
	 yIgdIYEmL54iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE6BDCD4F3C
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177907923370.30907.9707466149746049071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acd657af18b30b8f8a0e18e912d22930232e2c2da580f16a7d73b5a73038c022
Date: Mon, 18 May 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779079233
