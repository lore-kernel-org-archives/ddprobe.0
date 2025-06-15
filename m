Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27B042F22
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750025994; cv=none; b=IXm9hGoGYYuaKypGeT7i4LlWDDkiVbiaRnSKokRCXJwDoC+AQ5XbCjRgb0uSHqfotibo8JHi19BVwyxZWYjO60Ibo6sBM4Kb7wkFMT9GnVTrepufBXKFfqOKnKWrP0ef16R74mwUm9K/4YIE5o4ZCs9k7iuM0Cn8Pvt9lZX90F8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750025994; c=relaxed/simple;
	bh=dUh/JCADOeYYZNc1sqsxDVprct4nnYOupuaafDtnoTw=;
	h=To:Subject:From:Message-Id:Date; b=K7OqrSRcjnsBcJ5/W3vbXz6WFcUF2bYqjiMIL98JWK17r8iVP0Xe1y0RBdRWuWIcBFwgIpf1M5xfHANTKbjPn4hs1hlWTjAbBxIitwD/PT5YdusEcUxoToDu8e/AGOf3F/Ben78Y2LA0+9o7sL59BYDFHMTxTqP5A/EZz2yJc+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tCaygFVI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tCaygFVI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADFDBC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750025993;
	bh=dUh/JCADOeYYZNc1sqsxDVprct4nnYOupuaafDtnoTw=;
	h=To:Subject:From:Date:From;
	b=tCaygFVIKfKumYMQy0JleL633n2YoFwWEMHkCT4Xwri51AP5efnPVoY1nDSzXwkKH
	 vex0T1n49WLGpxc8qsEx3lE2DeQlkmQHvqFCRYuvAEJ587ar1/FAKy8LQh3tnMtlyL
	 In4FQUxnNcVz7Iui9GJhjposaLmB3texNWdQu+5lNrgjFu0UC/oSwDJ8vMgK0isTKq
	 rBkYaxOKu6j89kVtMiA9ifFnUwwfFjLqYGdZcR4NeeI4EE8rY5nPAh7ExqEaYp10ON
	 L3Kb93d6ztn3CO68d4TQa65fJbVml94YowLIamjyOGa63LqjA5l30DFQjPchFOMOhN
	 0I5flACHovOTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99DD2C71135
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175002599359.21494.11947098276595264392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 932dd5470f62736699ce4d466e75a37c80fecf65eb5fa06739dc7cb547020013
Date: Sun, 15 Jun 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750025993
