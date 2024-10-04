Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA6C91AA786
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728053753; cv=none; b=A/IVC2Z8JzkY51kWDagtJeQYoUsdvkI/HEu+UfBZnWa2wuKUygG2kq8QDDSl2zav4vRtONCSTI3QlVkPzllxfx/fnR20LooJC4pBSaqVOusGTrKJZLIXD6u5WNj0cEXnbLeLwKi19hIh6afLbRp2moDDC2KX+PELBUgyXNKxG1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728053753; c=relaxed/simple;
	bh=VRD420PnGLr8Ck2C8cC+tJNT7w9ZsStjEoHEil3Tj8U=;
	h=To:Subject:From:Message-Id:Date; b=lF6BMPKJIQ4ccKK8iRiPr9dDuloaLHn+vR/lMV5stW26LSlktdTxpM7pqzQVUqWmRFo1Onwab6MpVf5JGfFv4SoMDxd456T6wE3GD+cWmzAn4T/ZLLons62ei+Bo0N1+EKnMpMrHjh5limNdqAT+KUw+qbmgh09j2WYK2vXof4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ulo37BBu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ulo37BBu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA5D9C4CEC6
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728053753;
	bh=VRD420PnGLr8Ck2C8cC+tJNT7w9ZsStjEoHEil3Tj8U=;
	h=To:Subject:From:Date:From;
	b=Ulo37BBuzRiNA0n95zVcmoO1qECLBbmC5+cr3SPkpE7scuWYzGPAOeAOajfSx2juC
	 nyJ9pcm8U3jqFQyV/QeCdV82qgNZl4CghTK/5OVs803wEoheIME1w2TnMC5RSay8fv
	 H8ijle7ppgwJY2IRAwVyTEokUq8s+YzjcaY36XeukOaHmJtIWnBaGj6nKiaEGQu5Ft
	 QBhDEfUk21YMt1jIFW5qKhPEW61Bz0l7wzlsK0rj+NEd1A7AxITQfPpAH410IuUVK4
	 BJHAlyjqgWDiWYb/eZsSWRdFo2f1cLyGyiHCRCjmg9QdtT4mhuqZe6rM0k+AS4AqPj
	 lit6h8XgvWZ/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96564CF8843
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172805375360.25354.14832703962506608316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1525c247cd2796eb691fb258f0ad60270183cc5992234e987cd60b70f312d884
Date: Fri, 04 Oct 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728053753
