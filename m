Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F3D3B9DBC
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 09:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784540314; cv=none; b=XtYo7zJgiepXIFnwo+21L8cYv2flOkVUHpbtCFqkR1oDjnssLP9hx+J6pFJK2ljxkznlP7sOBhcu95u7b+7CmupsWhXpNVKa4OoPV1ZrCOYPWQaAvGA4RGZvgNsUCrAMPVOdS8JKTc+cQ9jSSTJT+ZlmSX01M+cl8kJHmzro07c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784540314; c=relaxed/simple;
	bh=+NZ+T6LvlMw1JfrPSc5Z91B0R9DfTyqreC2Ul5UN8sY=;
	h=To:Subject:From:Message-Id:Date; b=bIeDrmCb4oR6idlcu/+qD1LqRFg3EiWNxkqjvAfG2gff61kpI8AAJB0XXuyoNZ4lYkmUax49NAIFC6fburZfS/XxnCmsQUpLnlz2Wu3mnfCzvukTQ01w86Ol2QLYvYVqBqVMpi+cFyk+MXMgGW4r6fDSOq9A92R4oEEQkI5TFcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OFj+ZqpO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OFj+ZqpO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D39F5C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 09:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784540313;
	bh=+NZ+T6LvlMw1JfrPSc5Z91B0R9DfTyqreC2Ul5UN8sY=;
	h=To:Subject:From:Date:From;
	b=OFj+ZqpOb0phvMw48FCDOF1g9E5pIE/EunLwqvh9m8VTUDsFMq7OehzbGA5dRf4sR
	 XHu8k9blvPtQV7RorslLQv+EyLfI3510hqh7y5Ulb1r6OwWVg3zPTrUIVt7RAOOEaD
	 T2qbkqMdSSEEGa+oQwXsiXybAsL7LwgAbWCq0LfJWrArmMeBxvnEc1fna8BSh7PE75
	 W3bqe7M9O5lPrxR4ohwNZEfLpb/IT++ixvDKgckS6fHembdjxjANFXZlDsY3Aj59uT
	 RaOV35VRhq571QdUtIaHw3QdJSieYD6vPjtACerb+UbLK7j9pgCHri7uknL2bnfrIW
	 bVPmZ2cLk5FQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B069BC4451B
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 09:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178454031371.10945.3418971880380330166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d8903372e25be99259d95f82596761b01bd59aa2a7656073407d94652d61ec3
Date: Mon, 20 Jul 2026 09:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784540313
