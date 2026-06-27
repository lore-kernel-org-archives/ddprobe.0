Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44265272816
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 20:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782590914; cv=none; b=RoMrrTSnpabFRMC/9LbuZKoNfH6uaCGTx9TrNNp5lbuB/7KUSMlLOZfG4HbZyjmYHFO8o6Av2CAY/fkOFE3akAeUufq2qYxnNltU0N+C7lc0cC+cjvv1mC1DB746fj0eLssubkxKRURh5dV2qoJKGYdJlwfstRf9vl8nxU6xs8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782590914; c=relaxed/simple;
	bh=ZGHg7HALZoKl0lCzuGpwRkCOOnre+HQflB7oTu1xkhg=;
	h=To:Subject:From:Message-Id:Date; b=JmTXYSsPGQAhUCyoEOVmzK+mnns+1o65TsiKdd3dxDOeeEMnuSg6cnffCPQx3qkCAfhf7iDiJxgcMxNp/oOO+h0JO5KbKSU7uZQp0r5dbbbtwBJv6WmXsLfFFCSW+UNm/SaEnorpuHSs3B+Lcqp2ox9MkSjaDSvFeO3PRKJaX6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qhVdEddN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qhVdEddN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7E0DC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 20:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782590913;
	bh=ZGHg7HALZoKl0lCzuGpwRkCOOnre+HQflB7oTu1xkhg=;
	h=To:Subject:From:Date:From;
	b=qhVdEddN8WshvGRB7LwRkVsfMzObxAdYnarJw1ucG2njyiXOZtWdoa1gFCt331VoU
	 YThUg4yi2ypnoLHvPDUsCd5AFvOcLt0wWFWTKWYazbJB5Onal4VNDZF93v15vTNkhi
	 EMfY5gyYqsoctze492t3yonegUrBTAS5I2EqZyChQ4PnM+CrNX1dmKasFtZnfSTTdp
	 JZ0bFzOi4ceHh6xK4ImU/8EohwZhXPKKncBJW6p1E7qWtl3CT5I2C7fGO7xbkwtInK
	 AzR23rbsSGs68+znuEffPW/4IAxbFMuaoh4a3whnR4xYOYOmfBthD3qI/sOV0UcTQx
	 hxEeeGiiDoXmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE23C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 20:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178259091368.15910.3108557730509854662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a38caef8197fce73927b63786a5e0e12cfd9542c0df66693f656034f85d18db
Date: Sat, 27 Jun 2026 20:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782590913
