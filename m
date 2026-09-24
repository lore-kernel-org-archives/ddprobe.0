Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44CCD311946
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790238034; cv=none; b=ib3l+cUitcbP9GomYmKe27O2wUfo9D+lKa2XLaxYehh4QNHtO/jIntm1rMqbRrcX6FxvQQG7rP7MIPe+3ppLWT2IizZ1DvkC3hqoFkg2mLQqUs9ifOPu1dYkGk1GHrZlGhgAKuLAInDe82RP/2sFr9zVkJ7MpOBpkcXKZZ8uvOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790238034; c=relaxed/simple;
	bh=e+1YH8Rynp3wcpngRaTphpXR404tIfQTCvNRVESTkLo=;
	h=To:Subject:From:Message-Id:Date; b=A4lM/8x7Wxy6tK6zy9lmly2+UBnlQpqjSaZnownoJk/9K+E5J+yOFPm1023UgMzPiRhd3hLcQtV4ms1bDlH9z1xs5ZbpDZXoy1XL1stqZ65hXB2bIrbaWDARHtM/zW8nKLdPzIiXodoKLSDYtoYY1ySxn6+pSKlKFz904WxSkQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hSwS8+p5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hSwS8+p5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2118C2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790238033;
	bh=e+1YH8Rynp3wcpngRaTphpXR404tIfQTCvNRVESTkLo=;
	h=To:Subject:From:Date:From;
	b=hSwS8+p5I7aznmpUrdKRhqXV2M8hzrJIxi+Duzvva4amGOuId4vuUrn9yu/jtta3F
	 K80vSpKAyXyjoWV0/2mKvgsbcY23YyjngCE7N1NiMuC7C85X/clwWpjUZpJhLwToUe
	 rIFFD5bqq8rJCnDErRAhgoivyHZHQ6fq2FvABRJRWIsmbMZssCgB6PzmLz0RRmkYkI
	 NNH5gSMf7MOBLdUV1HtoBBTaKAEH3b+a7XbHLOKE7bZa+1Nw4O4zKt7fVlyx6OAzBS
	 RqmEn+BkR/2R1//JeQLIKBt8gkHnI6rZUVElNdmHjTDqXnrXOjb48Lre+JkjIFRvI4
	 55Dztk7KxH1tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE659C9830E
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179023803370.30636.12256551864405515468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2a9ffd8ac204d72572124d5fc0f9145141266d30bdae85f3ad7248d5ea646f3
Date: Thu, 24 Sep 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790238033
