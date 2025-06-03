Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32D832C3261
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748920194; cv=none; b=gtvtbbw1MpY0AAnY0paEj5WnMlJBsE8sXcG/NP0N+JDKhmaczhU8m7l65JJFgN8EAjmXYnV3VVB6QxqPPtui66unIGFeEcrKQNfBdRPDLseQNCNQRBDAqa6zV342grqb9fyE0dnf2d7QmYGSM3lJlsbvX6Nh/+vEsn9UasM4bm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748920194; c=relaxed/simple;
	bh=koXDK228Y9tcNuqUm0ogdUJU3bIhGYHqaoai1b6YUmk=;
	h=To:Subject:From:Message-Id:Date; b=kfMcURwJATGp+PwA2ZF8knrmqleD/cLFEaaLdysJKOXjcw7i8LReosSOxQX3Su0Nnu3wnsvVLdmKjknfdwbCzxDbjbE9oxFzV6H+jqa3ePQ9zHyK7PPzrXLbuNgqhru0Mz7Bwn7RH+tXHInCdgPQ7cJXL8RiYJlXLmAB2ghQnHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dDcA9mTv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dDcA9mTv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C09C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748920193;
	bh=koXDK228Y9tcNuqUm0ogdUJU3bIhGYHqaoai1b6YUmk=;
	h=To:Subject:From:Date:From;
	b=dDcA9mTv5WaBrDUoUGMOZ19bVGwAg86bbLIFdtOWr/9Ibm5z1fVRreoD/MSJGIi7U
	 evxPIQ05cM/YyWs/O29D8gUq7Lxjl+wgAuu3A2RuFEfp3H+N2wFx5noPLkYL4nficH
	 GyViN7Xr/GQk9BvjV0AcPicAx3G7Ytz9VyqZnvr8VnO0W/KVS/aZTnCr5tz1AuBG0O
	 sYcx/Pn7TcWCQvShQd3AdDP1hai3pBLkckA0KuSnBn2sTDhFpPY2eCN97z7AYI4bVu
	 50pHbRvZhlaK6kulUq6m4BK58cQ2U9ayhdaaB8tGd9v2YMqEbOLXxOKhNjbzQ/ljfl
	 f3XHAYfHEwpkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0C4C5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174892019357.18307.16372332474518605243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc6d167d0aa5f9bed164e0cc4ab7ef985660807d8415dc012d04af4d51312e1d
Date: Tue, 03 Jun 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748920193
