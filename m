Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37976346A1B
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756843194; cv=none; b=mBso+Ps2KbX//npv2xQrZvhIsln2cN8/rxmyu4yEdN5x2NOR5GWfT28MhbvHsW+fSGouXgzg0jMe6qM4Kjw25t6+XwuknEPV3QwJggIffCBn5SSvw2N7VJ6aVMNXxI9sz8vfo8/0Hj4lRnATtON5IgA7VKbdTmquUZ31Q9SVZu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756843194; c=relaxed/simple;
	bh=nt6kBGf1M46HjpwH/SrMCAgdYlSPXtt6ZPAgwy0/ewg=;
	h=To:Subject:From:Message-Id:Date; b=tn1SMgw0mobvnakcbub1TLQbwjBPcJhJXv+uHu3IuqljclIAe2bveVoglHaJahq/lpDRLzGsaHfjvwujKxEf4jXAAxXLUV+2A/NdvtHlgzF5rnBljxtpCzTS2Fkl9YN4m01Cg7+9AnEO6JoSAiCeWjgd9OCZlh3mPUeNBdRLz1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h4aUaoAC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h4aUaoAC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2418C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756843193;
	bh=nt6kBGf1M46HjpwH/SrMCAgdYlSPXtt6ZPAgwy0/ewg=;
	h=To:Subject:From:Date:From;
	b=h4aUaoACkkZGuYpqPyXS3X3+zKsuBkznG88nUPTaoNcZgCBcQ2TXcyCM/Ba7q83kM
	 0r0qOKnfEHA1064QynLY3DbsUdRoUD7FHYAysmn4RkE5HgtHKqUt7jQvxyJW6Al8Ws
	 xfKT39ygzSXk5o+9SeR27oyBm8P0xmYaeMvtEQLWToCLL5lnSvgcW/8oUOeiNGqOKP
	 cJ/QlYl5PRKFaMDB8jn6VYTflbhUsZFMEtLZayoNrOKv9Z0vT+BPpOShQgu98EFiwW
	 N7WIc5wAWtzjz+5S7VSZrKbgSWb8hDF21BWPZPP/Be8OuVg0o1MwZelAM8bBo/xRwy
	 sGhESPI8E/P9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F71BCA1005
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175684319357.15235.13025303197484154253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa7e1784bd1e7a6515f55661f4b3453b1e6b4cda7e1be4ba58e9a04c126d55f3
Date: Tue, 02 Sep 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756843193
