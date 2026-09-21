Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D4F31A0BF1
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789968634; cv=none; b=hDdKT94QZGfyKK2B30+Us39ckpoQHy0uVcIMpE8FcwMo8hbX2Y7HyfPgEP3XvprHNWPZUMEc0Np2VO6b94iBcH9TzODZg7K7M9f5c5A/RD2BXFLCVx4EvO2nNwz+KHz1aobHe98ODiadh798gWxyJyZk0iVzQX0KOYSEBFZlcPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789968634; c=relaxed/simple;
	bh=4aqNqyXN37PXyIM+qJEITC+zOTKAPOybNC6svoXMfs0=;
	h=To:Subject:From:Message-Id:Date; b=K2hCvRHG1t1l3o5SDZUUkKWrzsoNVTcoRoIknnqaysdHxaDFzWBdChId4FeS5BkoAmeyBuGdmk0g7pJnuApbBgQBj463shlyOy8jepfWCxGqUOf4tNgyOGZf1mLJYoNSwLICwTCY0uPGQ4fDqCTttRs2iItUtFiOP1A4R7ntkTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pez4+VPm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pez4+VPm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0CF06C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 05:30:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789968634;
	bh=4aqNqyXN37PXyIM+qJEITC+zOTKAPOybNC6svoXMfs0=;
	h=To:Subject:From:Date:From;
	b=pez4+VPmCc9VezmszPU3MyjKzHFCSNuIPcx80HvMQ+J7t/aYkFmoF0ZlM/bAB6srb
	 jShr4n19TLmokOEwVp6TkGgCW0GscUxF2rovY2IgH7ZFl+qMqlu0/7uuvFmtLtcYmR
	 pWKBKgfXqYsCsbD7D4+dwTZ3Xq72vtih9j6V+6tBS2LnqnGSsGNBqzJ8WjjFb71YAc
	 7Y/oNo99Q5iDVy522Q9gwo3SSgWq/jPLHXeUVpnuVnyL1+lthsLkGQ2CKqS5jFkaVk
	 KcjsLPMAjmKAbjZWBTyQktO+6K332htGNIGEDMjDXC3foIuSthd+qtD0mgr7+9plQC
	 j9TxKGvZjOcEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8E2FC982DE
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178996863380.14210.13195184020094097595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fd50c61aa6f45006cc56dbbd594e6fdddf8973638df778baceeb07e36f1f9a8
Date: Mon, 21 Sep 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789968633
