Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 240D52EAD09
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759321794; cv=none; b=juIWU2jSrbd8JhHftGkI7N47u8dnYI2MjEJeDj2gOZNcw2y4KbDS8qBfPyctDEfBcoagvT8olE0ytbxDy72H2sgIk8HgWRaaEg3NqXj7xAWi6xeOfe5pQpgKlC9K4voE1/OkiHP55kOMTSNls0X3QRnQnnafbZ/nNYKndhNfmx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759321794; c=relaxed/simple;
	bh=N+zMxi4EHmZ/0X6/JPZ0fZbnKNArHaGlLKZppzkKL1c=;
	h=To:Subject:From:Message-Id:Date; b=kXRT92G1C6nkQEh+b/7wQbVYmZwlN3BSsndC7zdKyBTu8l1J8UMIt2T5k9Fti3eY+6xJ/DD8yQY5B7rkvEqDZq4uBQkvWlxHgh5fzg5y8MLk8WdBnXARyMhqCZy1XkKBaMErwTdkKSJBcCq/bIpnoIkuIdEPqQZkGqhAQNDlyg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n9umKPBF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n9umKPBF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B03A0C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759321793;
	bh=N+zMxi4EHmZ/0X6/JPZ0fZbnKNArHaGlLKZppzkKL1c=;
	h=To:Subject:From:Date:From;
	b=n9umKPBFCKLN9cZRsKV28AcH7GEG3AfN+P8U5nfc7G/yzYwOObtg85d+vN7epL3WK
	 quMC9GP5VlBqokZjzXnQC7UcfsNUEREmA+VMbazaWxEFlJXVm4dPxgvpWtcIqKPhFY
	 n2vX0Xv0QlNnje51HEKo7gnOyrFrPkYqdDM98FDpL5hdUuxD7vv7IKZPGWxCfdtjgx
	 pSoTnUXf9F97bS70r3iAxZy+nFcHWu2N5doOjVMAB1/H966K4tmLCxdyi4UY9hJXdd
	 N5tiwfMNEyS8Cse+J0pHUZvBkKQSLSdNJshrjEThnrKi6BwiKNHtjNTF06fJ8ZCnQ2
	 yWjeIOTsX1Ajg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E616CCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175932179363.19455.11950970993344261709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24b6e4f6b4cd68cc32a68a5f0129fab7b23214c21cd1fa97ee30c42cc623d240
Date: Wed, 01 Oct 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759321793
