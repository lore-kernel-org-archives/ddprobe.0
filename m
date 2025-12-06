Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BBD42EA743
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 11:02:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765018974; cv=none; b=dyMY2RYRzY0yPSrzQ4U3Zxw2chpoFI7C27BB5HasXamjn9PwtkTRhIWNwYyEAiZ6Rkv55OmZDzHzjOBZg8zHKUEb6zW+fc8+V0boNJwS45neGO0xpwZaNg4kvI7KwfnwcQZcENGmfFMkw3whxVraJtMZwhXxEumiBG1p2+ftsAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765018974; c=relaxed/simple;
	bh=AT8jX59ZMtGE9R5tGaP6S80rsfFKejGvSnTC0yfbpPs=;
	h=To:Subject:From:Message-Id:Date; b=Hc0tmUtI8BNz4OyfJYwunYTunyIMWOTxUqONrFIZIps14CodulUC6QBaDUTLWhPEjMmCCD93MQ3KAVDda0UiaEA3YQHFjTe9aYF+32eXXtnNdB0oa9ORQ3MOSKKl5gkONXzutcDS55jqcw8zCUN/QAp4lHjRmH/QU1t/sH4l1wo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UKgPXN9A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UKgPXN9A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFFD7C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 11:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765018973;
	bh=AT8jX59ZMtGE9R5tGaP6S80rsfFKejGvSnTC0yfbpPs=;
	h=To:Subject:From:Date:From;
	b=UKgPXN9ASIRjwCx5+Gi8Ax3EZ3xFivHgS1r+w7i9V1sIaN8hZCZSjBqhrGxjwiSMt
	 ctTB6mTK+IWhSXbFWrToiYQVAS6j8GT6eOQ62RdWIqExM6FcS8+SXFlYCLaRiLdyFm
	 oWABYsZrYVL+eq7/AsAe4QuYgV5iLKalF7cqENJ7kdqsIdO4mRFXcTJiYIKCBr2crA
	 2alYZFjxiEZEDUu/g6kWqkStZohLuRoaoqXQoFkd6kn/9ctguUfp1OQKJDZ9ClOKrw
	 lEFwMEBHRnuFUE0N+uiagD4l9IOpToAJZKr/zmuAV1qvZEPh0Tnm9v52/NZ8YBtCTv
	 qsTATe45qdMBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C84D7D3B7D1
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 11:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176501897377.13034.1543843408020152627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cc5bf2c8142c97d30937b00ae2227288ad6e841eb3be5b6d21bc08b7b0ac549
Date: Sat, 06 Dec 2025 11:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765018973
