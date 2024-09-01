Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2783151016
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725225954; cv=none; b=EKd1DeE4Ak6u5iEff4NzvQGxrXBVQX0ZYI0Ojbp2iVqLOWLf9yj5qxCv8k7ZhHbgOT2A/X+uYa+wXqjJjVcXs/FywPLKuifGuBw3ZRDLfDoSoaWtAD4++y8H6IYPAogzILw61kZPi1SgT+UVx0kH0uaait+PAW89JjQg/llf0CQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725225954; c=relaxed/simple;
	bh=EqQzDkIDQUTBciXwajf71l1kj1JUTOXbYpGLaa8Sqxs=;
	h=To:Subject:From:Message-Id:Date; b=TxtIPyxGV9dWTeprL0UuQFzgN+1kQeImrAI2Pm6SWpsKJKIjPK18pc0gVAz6LcDSitxut5fRNAXGO2ATIU2omntANiwXfDwr5NmY768/iluWQtYSxgNjVDjuzAFADHkdYjx4yZI3p+cX4hd6az5/uja8R5Y9TtEv9zBJPNGDdJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qKSy9Vxd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qKSy9Vxd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB309C4CEC3
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725225953;
	bh=EqQzDkIDQUTBciXwajf71l1kj1JUTOXbYpGLaa8Sqxs=;
	h=To:Subject:From:Date:From;
	b=qKSy9Vxd9wG1NfDKpuA55Ov2+7h28BMGEe4R+jykI0bVu77hKTWAS0JzTN6U/Af2e
	 Oquf9w6msxx34H+AKD5mXLxMjtEABDSqtGyexremie+ekBnrG9dTttJJqOfTqE6uvw
	 adMK6n+CKfqOc48DGfns6hMxgoijRCmKrb+rYSF0hqAPV80+1kWiGvN97xqwG0urYT
	 ndQ5vjf+08NOnhwVABjbLWvAlQii+bzKavgc4mpOkwpr0lPX2MGrTgvVH7yvrwvl12
	 W4GDH7MT0z0i8YfqZtkmiz7mCl0gg4vUdeFm64kH9vRzG4xiND33VZyGuXjDlcre9A
	 Y7jGdUmXGrvZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92523C54FC6
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172522595359.872.13041659653238583967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b632f52bad1f6135e85bb1ec2fff19ee811827c760975ada386579309c36ef92
Date: Sun, 01 Sep 2024 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725225953
