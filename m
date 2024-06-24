Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 696FA4C6C
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 23:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719273203; cv=none; b=H5t/c6iGF68ROnmZ9918CN8FGck5+H8x98UXR1FHmtQRElnGYoErhl+nA1fHkkddpWVPoci0XRiJkHq8l7OdkymKBTZg/J5XY55opQBhEqzkxXvQ0jzeZvq3gTRVP+OKGODe4ILlC+Rvs8FGNx9DShokLIVMxdgaRRjaLS7+pRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719273203; c=relaxed/simple;
	bh=orz7nMsjhZLYuSgt9w28bTsXQXE8G34ecJsUNQty08E=;
	h=To:Subject:From:Message-Id:Date; b=TQQt5eZgedVyW32jvLXmxUZfXm2FHJD1ZhQGV3ePwKyLi02OqxUClYolkM07nr/6xEAnF0AAVtJFjWKLN/2P4s+cy8xXvSUnR+9lZXY/xAXMHJkHoDLAVy4ABbvdgkT2XH41M4D6AOnO760PmKvvYIjx+f4qs8LCs4u+KNjgeIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YYSKHzDs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YYSKHzDs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E32D1C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 23:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719273202;
	bh=orz7nMsjhZLYuSgt9w28bTsXQXE8G34ecJsUNQty08E=;
	h=To:Subject:From:Date:From;
	b=YYSKHzDsgh9EL7hzyLQe70AOZM7dRwclcyDhAkksAD81c7X8xLHmI+bo14dsxBKAY
	 J3yEioGXA14ENiI/c0R69ECJrWRTXXlfqjkyduxvza/OgamwXqcx5Hyh2W3mVA3cH6
	 XrPou7DE8XliPT0692tflUBtmUFzargqFEp2GBKsf+TRY9HdIOiAaupFQ/yhOC3I+r
	 Uq/5hPftAvOmslTDl2eS9hczS2LoDiXSXbJ2omorCXTvyy1N1pZ/X/1A4gUeJUij66
	 MB6kSetgI+eSCawezqgUGuG9fS0juSCIKsT4B4zThceo3LidC5t5Lmrj/PWPt9ITxk
	 ISw8m7X0sI5pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1865C2BD09
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 23:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171927320281.15447.7001656941559945826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05ed3d7e4755ca59601570c0f6bc56f8faab32055d732dafc23dd616debf5b3c
Date: Mon, 24 Jun 2024 23:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719273202
