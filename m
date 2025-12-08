Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E6403FBA7
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 03:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765165974; cv=none; b=gynYMjHuuiHS6qUnPAmnuoQcV03GlyPHLQBoSgpW4J+yqJIAX2UmNrzy50wXg6oOv3CNgy5eF6uTPE0lI90ckJw9N4fd4zWKji80+fFmPgsMulRv32qiaSZaKC1PVvqz+WcMoQnIkUve5YmtY0tSwGaoo8qBCAZakAq6UP+Cvq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765165974; c=relaxed/simple;
	bh=s19XbyVebiJjIUBp6z2kJo/rM+Ms5ExTVYq0vrfNQ1M=;
	h=To:Subject:From:Message-Id:Date; b=IglTK7BKqUcNqSsoHHPP/o/JdIOIwpfd8E+OAaFv+0f1OtPLcTrRV5/A1wDiN3KN7utwSCUQDm+IWiQQ79gSZ7tXDGTPS7WRr0CN5u8PQsbBjFq5QdrdpEu+o1hdQkXZdvGaiWOuhDSks77eg5528YWCF/rfi3GDso/kf9BJIPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jV0KFFCF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jV0KFFCF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B80C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 03:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765165973;
	bh=s19XbyVebiJjIUBp6z2kJo/rM+Ms5ExTVYq0vrfNQ1M=;
	h=To:Subject:From:Date:From;
	b=jV0KFFCFfzBbDT7ghkBLeJk+qFxT3aQyKv2uBoEvqKTOiglKvoAX6Mf/m305RzCRL
	 jFwj6AdS+fmFAxOQTi98ds+Y1+/cL8GzsrDgNOEYCvtPUjyGrJCDXVG0kXdERdCnGB
	 F8oUk9/sUoqab8FfEsx/iEsZFqqSY+aeTtvx8NJYQZCMkqU2GogRUOonHQuOZQxSx5
	 xwzBU5pNW0h05KRvdd6hj28AHih9zp5OI/9chMhdgsSb0OPG6QhujBMa/3ATeVUdYV
	 hLbgB1+LaRcwDPP6ucpne6LT+0Ti5rkrxSA0EWiTz5lG6bFRBMHkSVptOP2F46vl+W
	 77kaBSHoVotag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97842D3ABEF
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 03:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176516597358.3178.3224562748417071490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab7a870e60380adbe718f88ca8f30b83f206becdff7fe5e0c19c83f12cb4cbf9
Date: Mon, 08 Dec 2025 03:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765165973
