Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BA4455C1A
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 07:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719906923; cv=none; b=JlEyWS+r6I/aMdKzEhmsCVI7/9ZEJo/axECfHoIPFT7G4W22G3r8Wcsd8b+JLN3pt+J5WHVgf9jk0R6WyvaWFv2u5uw5oaXpDI0I1TE3quhxH0adPey53KN4R66UWJuX9TrEOjzKv2s+L+GlPhK3D4FL8l4z9Ulv5PBVQcZuRkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719906923; c=relaxed/simple;
	bh=wB9ikVBvUYQCe2+a3bN4VczdaGJD7kKB1Y8/Bwn7CpY=;
	h=To:Subject:From:Message-Id:Date; b=s7kHvetZ2P5vh3t0meHHIIsJJH5yb4UmWi6ZKnyH4JnaDVqBxs541CbgXVxgoor1wtqgCmTZA+/TRDAdz51j7msVzacXHe1hlwYz0FPF+iS9G5lnCEOtrpbbKA1USr8gwcL8lCXyjNDwvqA7vlnC5NZJMahPO6afdlKJjONHSxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BfirVeTU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BfirVeTU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD75EC116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 07:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719906922;
	bh=wB9ikVBvUYQCe2+a3bN4VczdaGJD7kKB1Y8/Bwn7CpY=;
	h=To:Subject:From:Date:From;
	b=BfirVeTUWmiL74fB0lV/ty0JF0m4SyvLBLXeanr2/7UoglSZv/ucW155OXTJ+MX25
	 6/Hf6iuW6c/+ZVu6UPIQsEUGRVowPS1itsYO53wP/Z45mZQaIASkXHghhVjDkVaod9
	 k+fdla2/KPIwi1wHUShoHkwulrur4nEo0X+ynJPr78FFuipdi15a3Tv2/Gbw0dB5l0
	 CPokmZlHuwUkeXfEbDO8SNMVhGHrGrzxlmW7xwc7Bs5yhNHdWlvVjQe/G6Qoer/BTE
	 zDgrz+k8ZnnFFPk3dOJPr9ANrKAKrrTAIoxuqrilG5g1uTfzlnxA5bG9yVZ4Yarrrh
	 4acTY+tkKljTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0CE2C3064D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 07:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171990692277.6230.8178668375744647502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5160cbfe9fdfbdaee88eb187a447b32a1a1a96f0a7f77011a0fd202ae4c7a16f
Date: Tue, 02 Jul 2024 07:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719906922
