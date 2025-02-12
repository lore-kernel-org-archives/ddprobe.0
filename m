Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5B0D1F0E5F
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 09:40:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739353254; cv=none; b=QNyC43yngL1j6FKnFa+wYWEyKtlBMzMLK+/f+BFMMyRUzMRkpaoGaKbJyGcQp4dXB7OLb04+4gLYr/q8nb9xixh+9IUCO1SxfXDcLwCsH9jlUGXgSM0SAzKu3OGoFbOW6XunKR6znW1n0J6gg0SThuUBC6xArIQUfS1nDpWLGrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739353254; c=relaxed/simple;
	bh=4dFcOUzRDvhZTPxwlMSQpKVSS4TkcU2q0YNm62s2Ss0=;
	h=To:Subject:From:Message-Id:Date; b=UsiGU/69WwIx5+63T8/q/mA8XcTiUcMZdMwRCyNcGksDvc60FRkIDNV+7yX3kC9zUVUy9V0yFeQdfvS/JMB9pqUOwFOHAyKi5iAM/1LIfUcLWdOnquNtaIZtLT8ctb2Nrz7IA9hR95jn7ZeUkfxmMzIFw5SrSospXdMLpdt8LiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tSxCeNDm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tSxCeNDm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0D0E8C4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 09:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739353254;
	bh=4dFcOUzRDvhZTPxwlMSQpKVSS4TkcU2q0YNm62s2Ss0=;
	h=To:Subject:From:Date:From;
	b=tSxCeNDmo5/SHKx8TwHV/VD9FL/t3ypXc3HPmCzkfv75c3i/BfIyg7ArOicy4SEZj
	 fvB53AuXbK2VtLirNDnRgUcVAJFfsoPGSZWF37mPuxRSg3CmVE4XrW/RZnyL+kXddi
	 YGYI5Btv0IloqkFN6yMfFH7Im+DjSIrW22K28ym3SsG3g7Og4F3BUF7DUsOLvHMQe2
	 W/s4KPgjTVxvCyjMrAInSBNhhFM5Q1MjUZDWHM/SqBZS5b7TK39lPkXVqEhLWccRet
	 x3nk6ujy9ABJpKSfVfTy9NuNuMiEb8m7o9faGzzTErU/4uvz5JgFjAhDU3cZQlL7gy
	 EUYO3Ei2PjnmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4E63C02198
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 09:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173935325373.32289.11822599155994814808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97d6ca55e90139b1c86aba5a9cb109bc5ea2e5c3c912b55195ee127909991b08
Date: Wed, 12 Feb 2025 09:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739353253
