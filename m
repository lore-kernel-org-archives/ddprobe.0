Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51B38366079
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 08:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783671514; cv=none; b=OCvUXNEb62x1cMoLrfaPuEhhAw+cUIc4i27wJKidIJfO3IHbsp4HEwrL67EDq+b0Q+EE1gBLiQEFe48KV5oM/PkqxVKYpGFufvgagm6fxRxhjTxf0UjYHL5joC1t8ewCwQypIVOWs1VsjKo6U7CWTheeWupqHlKB43jRrzIxqjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783671514; c=relaxed/simple;
	bh=lf44VWxA8U5jYU/7HKt/SbpGba5UotBiZ5lXfVIZdiE=;
	h=To:Subject:From:Message-Id:Date; b=K2ull8WghgM2QK/lCJPAD+aimiG8cEcAdyjnmmQGaR+3LqtX1TZtkac6ZzZ3WNUo4tGoSdgj9YaHsZfJAbAghun5zPfzEYG2wwRifi+Zxu+rCUxfSVcxYkPDmke1ciHDXUT9uuRcQucqa8vlLUG5A707EatYjRjlHnFJYB2+YlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=em7tmP2Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="em7tmP2Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8464C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 08:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783671513;
	bh=lf44VWxA8U5jYU/7HKt/SbpGba5UotBiZ5lXfVIZdiE=;
	h=To:Subject:From:Date:From;
	b=em7tmP2ZqTcOdW1Q04UNXeLg59YKH2hKWjE0WELG8CJAg7foJfvfVz1VKAOv4Ig/w
	 sn1dvDNG0b7QU2kMz0TxhcfkSAwkdu8IspYp0jzZ2lwDdtBR+4ukyoG02HN5/th/vc
	 ouVNiK0KbBIFlo0etinj2QTzPBDqV20IUVzC1ixWuSo28jELrhgRzUrgDnN/yeavud
	 ZhdkKxNpeL30FoZ3wNAg350TklrGE3cQKP+z1Be2aTIE2cGczCx4tXsX1Fv4rNmVfz
	 e0dWeR+EP8w+s3WErUUoxHCrk3IT6ZvJ++ee5bypDqNzZO7XssvB56DM5wBbfBdJw7
	 mtMikGHpPOg/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F5DC44506
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 08:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178367151368.16506.16751869389234244045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4f7e8493bddcf1897430ea505b147cb470c2d23a026a56ce24b3669127dcf68
Date: Fri, 10 Jul 2026 08:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783671513
