Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBCA983A06
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 18:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708541897; cv=none; b=rOCxUVAxloWMNnn5haVDlcGCd4v4ndzrNhlk+MWS0KP7TVVTJMXAKfSuG88hbpHqqBhgv4BMdP+xFmfCE95NUidPS1kRNY1vW/zk11yupXlRiy5Ct1NDBJe51djmZIzU00w0vKLgR4EAxOPiZRXFMpP6lmCRYCqakV1Uhe1yqXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708541897; c=relaxed/simple;
	bh=i8dBIrJy/FK9XeOz3wZiK8JE6HAHAaIPf19uDZvpjoc=;
	h=To:Subject:From:Message-Id:Date; b=mQ49mSd+dccewalelSF9KrVuhNbiwrWkNXqH+aDLIAsFxa01CFxgY+zwxkFJEMvX2RgT7b949XphprA+9/sKy+V5kGkV0Xwr5wKGIzMi1rWGv5E76sM+KypX+/gdjDf1Qwd5Z6Bin3lHYtMPVwaQKffT5LPUmmIgRYqW7PGKdlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ekkQ3nlt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ekkQ3nlt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77AD1C433C7
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 18:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708541896;
	bh=i8dBIrJy/FK9XeOz3wZiK8JE6HAHAaIPf19uDZvpjoc=;
	h=To:Subject:From:Date:From;
	b=ekkQ3nlthD5rj+HSCgFt5qMecGtZO1SwN9K2L0D0BKE9FeIEd34kca8mAnvrgEOC0
	 CvB9Ygwjk4trjdLcuawS1b4YEDzm/MF/Wv3xQCxRlzTxlsqI6qFowdRSvJuho3/Pv7
	 BW660VJ6yCLq3MaduWXHFAVawksOknbNcK08hds7Dn4jISAgCb2x/8rYPLSlgNXgp/
	 DmfEBXQnKk52GCYRkYimm/SwfmGDueq0zYuocqhfKCrA9GiR6n6mitiwvIHsL3HOmZ
	 SUnGTeyr3a+d8pWGR938KP6HdqrMVOben6b3HpA8FJFi2cDHdq7/DxxarLoZG4sage
	 qk7LMG3b68WBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61399C5478A
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 18:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170854189639.22149.13122796563813430789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3613f276d5a04e8192e8df4f042e92cf92a7da5b33fbcf39e032bc98c16a3935
Date: Wed, 21 Feb 2024 18:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708541896
