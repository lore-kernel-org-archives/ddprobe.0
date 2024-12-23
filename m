Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E91A1917D8
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734957954; cv=none; b=p+KG3WZ9jtJfOi2g2vXMHozt8q625GuuYOybxjyDAK+lRD3v5eda6pfP4lvvcrykYxGRlkatuzY5Rtyc7mlfLxCpiKVT+aS6c7P5JBMPRvjDrLz2de6dmZMy+Yg8a3bSoTpPjSQ/SzB0dEyAeJAcx4hAwxXgia4ip1EWzKQOTbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734957954; c=relaxed/simple;
	bh=/hCW1lYrJy1SlrlmPayWCjN8Eg9aLfJoYBVpA1nEWsE=;
	h=To:Subject:From:Message-Id:Date; b=lnkDrDwW+HEoGbtyjHmpg1ESADJBExg9urekgcJ6NV2LWVveUk44VAd86f+ZrW4dMDMVrcYvBY9dk49kOT7laUxlacdB1G0skUUcZmCmaFKk2x5rI6HxJuAbrkIGEFMTtmngU+VK6z6+amZgpJPHlqlukf2l/XYZCqgmVgZ7l0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c/We7oRb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c/We7oRb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B08EAC4CED4
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734957953;
	bh=/hCW1lYrJy1SlrlmPayWCjN8Eg9aLfJoYBVpA1nEWsE=;
	h=To:Subject:From:Date:From;
	b=c/We7oRbLBuaMku1eJrCM30kfJvBKhkqLiFUYGsDFU6SZLkWlFXGcv0qDRAD8uMQe
	 lFPLmCB1Nkjma6vKGvgcM686B95AKd3urplZR2IoII09uT5MhR83NwHIf3C9/2e0KT
	 JzGaP5K66By93GB8NrGQgyx5xUOQi8JHL7XtktRPkNY+a1s9rQbcOLOATjMHURqRF1
	 foreyKEY/HzwBVvcC//fdUwvYIoI5aHMrKmUI19MeS+gs3HU7bvv6aPYu/cnFRjjtG
	 QvDWelA4taClT9TnllXlR7lnjHtDXQ6R2Qk+zMaT+8FGc+YkDGMNElFaXnv2BCC+gH
	 XT2Hm28+YDCKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AD45E7718B
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173495795362.3604.17056534008369979876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e630c0c1167a2fff3b2dbad6b7ed75d1ef509acc94b9e98db8cb3eba74bb553d
Date: Mon, 23 Dec 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734957953
