Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18EF8339B52
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 12:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765975434; cv=none; b=lQwyOImlRy1acnVrM7JyqOzgCgUqmVDzaTvJ84qN6giAuIxRFL6B8KhNGpeZbHt/4z4ZXdhtWB9FnLWCXOd4ilEij3XzhVvyleiGSES0IcGlylFZ+/bEgrdmNz844NeJ2srKxUbMqypmA+H5DXKKWJ0EDbhLbLuY8PGNQjhTDY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765975434; c=relaxed/simple;
	bh=h7iutMKrBqvBtfTI2TiiNvQMOaw38BnQgl424VuO7Z0=;
	h=To:Subject:From:Message-Id:Date; b=X9ugKQhJRW+H+n5uUDGS/XHg3QqWXxmPrVwNWBi/kvgxH73Pz1YOpVE8G6Fiv4pgZpTFh8WNgoXjUSzLGwECm+dHmXG5H1ySBLYA1HZsQ1Y1x9QtUZAWTRJ3cwlyxECHxLbGEKRx9WYrAExm5JfRnjKGXpvWPdBAlRRBl7pBC8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EgapCGwb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EgapCGwb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5998C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 12:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765975433;
	bh=h7iutMKrBqvBtfTI2TiiNvQMOaw38BnQgl424VuO7Z0=;
	h=To:Subject:From:Date:From;
	b=EgapCGwbpURc94kbUz3DeAs7pfa2DEKD9zcR8CZSLTCeopdVvfTxZ/1ziJBMLX4vU
	 b2r4PERTMAfIjJQBA2+sRPgKECI87VBpM91MnJGPLav+4empUKk3tqIPc2XvLpJmHT
	 VDPYrzIlOXBwnrE9lYiS1fxD6lik2FZwmtPV6FdiqOS1AM2PrTIbZd6pxQcQu8hmqX
	 xlY72PzuuwRVGGTz7HpLDXe/0G8Q9NpNTvqrYXzDZe4Ae5UtYqr9wqRMQxgs4RGwXQ
	 T6Xlvxua2pzOulINpWfd2CfCWwSX7tA9X+fInH/hsfKg7JmI7DfqXNpduv+tO+Wi+I
	 z+GZhwx5N+GeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974A9D65559
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 12:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176597543361.15645.3183134014184646214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bd004d146d5fa154f497bfb7c79f7ad1a837b7139ed08d8dbb6c6cd7957d2bc
Date: Wed, 17 Dec 2025 12:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765975433
