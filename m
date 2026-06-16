Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C09437B3E4
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 02:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781576194; cv=none; b=mTm/I6XRZVQDn1HHNpxTuy6Qz9A046jVVyBoxNYvJ2PCeT6VpJnU95Ua/dV96jUlqQDsJs+zj/iPgBmqYMxQQL6PkMdZ2sAuYTRYLBXpl2L6eaJkT9TcskXwJtEBo8suiYK06yGlMFjVJEWYPfEmoxXkSZ/cbSiAd92lWdzIcso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781576194; c=relaxed/simple;
	bh=L1Qb0C2zGk8jfFLWki4lOKlkC8n04suQYe1/1lVg2lE=;
	h=To:Subject:From:Message-Id:Date; b=rZ9DQWhEDGYxv88chuPjgVD45Qn2xUK44z/I0GpJvYo+/m896vocUZHWqMpVAVL8RT0CDbpQTxKBfn+iQGcTup6fn6A0RdEGRfz0cGnH35EujCQS4/gV0eoXGwXAD/VWsuB2YRFqyJ1EZHpYwOx5zA9krXCUmZGGhdZrvu7hRbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BBL8eMuX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BBL8eMuX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAD74C2BCB4
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 02:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781576193;
	bh=L1Qb0C2zGk8jfFLWki4lOKlkC8n04suQYe1/1lVg2lE=;
	h=To:Subject:From:Date:From;
	b=BBL8eMuX4kT3F3B4skoBdxX2nr2uy+J8JllrSXefER18xfSD5MEeEGf6Od4iPfIi4
	 GEd0+ScQm9cOJK0Eljav8PPUQfz6qBfrEQTT+hCEwSuQTH9UWhuGRLzonkk16jScW/
	 slG57xGh1kYimuH6o87aB0m/b9RwRVnn/rZ2fTuqiqL17G74OFLGvu9qcYNiyod+dV
	 R8fJlHX/AEQBxJPA1UAnxUr/EBE5zpXkCz29iIHYXgC+VjGNbfvCDg2sDp4Qkkozt+
	 q0MFXYhdJ+pk4Px11VCIjgOEt5Iy5RO9qmm8mPb2X6YB/U8c83Hej/UMttCcAYrT+3
	 dt+XrL+CnGvtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB3B0CD98DA
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 02:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178157619372.17172.3967258225133216565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55ab2aaae7170e8ca92cc605cdfd08eaf5932908e9f6fa61b61e630853cb580c
Date: Tue, 16 Jun 2026 02:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781576193
