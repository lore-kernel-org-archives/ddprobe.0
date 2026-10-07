Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7892646F4A0
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791374434; cv=none; b=RCHAqjFhV4LL3MIG/HBxRj7RKHD4Z/3h2JtoV08oKBovbBCpzyMIFtbVjw1n/6mM2CamjuUjkhgREqHn3cY6BzorELodgSt+vszqmYrf9EbxRDQVeuWsNpKKbtC6WNm1NJtzAWxbyr8PdX4ql1EAMbYEjYWIRRVeEyZutyEQmHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791374434; c=relaxed/simple;
	bh=HJbw1X0itzep2tUL7G1AQQgUr0V6/Wiyz4r5WUNNJnM=;
	h=To:Subject:From:Message-Id:Date; b=oMkxuItOxJJ2fLgv4ULboZwrgUGZYtWVv3MuM4HrX8mKtX4z8jLSqJ9C1QVi/MnvyQQTdIHxHEgWbSti6jLE5oEAyUj3bnxqlulLzbNLA4CBInw9K1UcNRs1cIDPWaW8gBMYLB3J73fESID/w1sCKN8warL8GzfvR88uJNjd/JM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=srrStQgX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="srrStQgX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D25E3C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791374433;
	bh=HJbw1X0itzep2tUL7G1AQQgUr0V6/Wiyz4r5WUNNJnM=;
	h=To:Subject:From:Date:From;
	b=srrStQgXVjJy/Y2RCoO4sApRGE/FHHCgt6FLzw0j0JHM4ZQp01lXzbRhzwtzfqiXP
	 VH+SHXKMmocvmfpnFbui/o/L9ea9Ed2BO37r5lQmhgDKjTPkS5mrMWwZ0dW3VmnK6j
	 dlhxBkkbQLXx/kEejL221MRuhzH3Asl/vWmR9KIhWCwsGhjkCBenQFXSQUErKH5/nW
	 go472ViQnMNVe1wOTHsEKKwZO7W/d2LhM3Anajz3GRckC5G/nj0aFMExd19qfYdKlg
	 XfUNMSRqjcz2S6WvEFABEFsS9pseUY165N8PI/PkYtK6aZywQvRRTeaWPQ0oRd8f1f
	 05oVtDtvjaU8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B53CA5FF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179137443368.24889.7105600076678691302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f403fa1c24425b1066266a93ade2e6587d3714c1f8c8d1bd0af93e46a65346a9
Date: Wed, 07 Oct 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791374433
