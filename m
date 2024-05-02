Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC7B8C1A
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 22:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714689143; cv=none; b=Uf1WiecyTuOfGQnFuag8lYbfxLTb7zxmwSDeSCzP1Vmoxd6A3QKx6hBOx0O3cTtlA6GHqNsRO5g/U+LJtoKh9pwVYb1Eiu/4Hk067YsayUZL8rC2wqo433HR/dalp/gDuLtufOkrOvfdeVCwpZY0MsbrD/GGD1sCEmVLkg+zlbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714689143; c=relaxed/simple;
	bh=+fUtEtp8LcCrJi4SBgqg9ZGdAtc1KYqVYeju19zHgMI=;
	h=To:Subject:From:Message-Id:Date; b=jSyRzBqKMDIlfxTy8/opKxdHiy/NIlGYCjzCRqRH68tsuuxz/up6zQiVgRmCHo0/V5h9Q0TNeeUikIfIc9qLQfaStrj7R/e3R8t2CbObMw1jE2daBsbJZbBqnuG6xYRJbUoOB+mNjH6mTKwDCZ5vf2p2GOGMfzkbaPtoSvTrehU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZWvIKR7r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZWvIKR7r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D01E5C113CC
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 22:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714689142;
	bh=+fUtEtp8LcCrJi4SBgqg9ZGdAtc1KYqVYeju19zHgMI=;
	h=To:Subject:From:Date:From;
	b=ZWvIKR7rzy+xkULSc8LnxHagWGzHQ/06BVBC58ZYlrAhIXDrvnIzy/11iem8YIvgp
	 PmeycLrAkSHOoPMXPKJXvcBECwOiPu1NnfFhfRsz9zgZbgVEUUwrunRQkEUsKsSCM8
	 zwplCGJ97TWQOsdKAY5Aq0b2+oJkwjRq3DAPd9XXraskV3fGzUiyV5TO1cKpdm+9rC
	 3iHMAragDhqgRlrfs+24gZd51inLq/wEkVc+pyMKxGYDm8+W+tzln3hNTPVNA9h3zh
	 84FvW52Dcm8kRa2Rh7OhcGPWJR7hxHx3FEu5pshWokVnMbb2lfJyKztYT6N2zohYo0
	 PoJgrO2zuZ7QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAE02C4345F
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 22:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171468914275.29072.17734037820071542082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa9df3c90d671a9d84f8e491d031946fb7260804f324ba71103d80da733d9f18
Date: Thu, 02 May 2024 22:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714689142
