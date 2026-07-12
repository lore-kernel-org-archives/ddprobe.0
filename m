Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EB2135DA41
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 07:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783840114; cv=none; b=BlACir2U/cq3IF7Xsvpyg6aeJk1u7FU4kuNSyv2aGV4jWfyAQrC1ZagEkMpjP+NHfozpdZ2WKkgln0uYhPpNsdMjKokKRJYDh0xBT2Lzi7gga8fvKWA0Lc4mnp4ztuAFFtIqj6ph8HY2Gel7lgUKKizibm14J1MdGAprc0wPu1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783840114; c=relaxed/simple;
	bh=TGMjrwtPXzIEuUpZ1uNdMJpg5C6LxH+8n4WQdVue/Hs=;
	h=To:Subject:From:Message-Id:Date; b=fa+OdXMvdjf5vNOjx4sbUQhdmp7LQbsiQ7QspeJ1fJTkQwZjqE0qI4R4d2wpJLCL3cq+E8FT6TJP4pHiyx2CglBuDqZx+LR6MORHSsnkIXvsbEtz0Sco09Bu0sd+E3MoQP7KI14Gd9Xm1XnPixlkT8BByPjkyorMHLTmb2E1LJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AC5pAOu4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AC5pAOu4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF6F0C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 07:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783840113;
	bh=TGMjrwtPXzIEuUpZ1uNdMJpg5C6LxH+8n4WQdVue/Hs=;
	h=To:Subject:From:Date:From;
	b=AC5pAOu4BRmevY2XsXDf0p5a0l7PBDMhx5r+bvQyRUJTG8LpnQNMiBxWzrRhX0JH7
	 q4tfrqAGAm5gIwPNxt9ekwDOfOAajbBQ5/1SY6Bhqj3efo4gWZc65/UpnAbHghQWtA
	 jlQF6ift+W8xi9+L7SfQBYhc4P8VEwKYbwfx1Ex7NwOoZks93XBsTT0bkDnpayA5Ef
	 1f2DlBF9c9bEj5i/atwaz83lkNfIIRnLghnP7D7LonsmsRszLnU+DkedxH/45lGOoE
	 xkBkcP0zf/R/QE8KQEaqmhMnn2a/HFIVVo2XjUmBfN08b6HlV2RQCCZF1Cea/te2Dr
	 4jY+6GgR7RsAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC5BC43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 07:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178384011368.32607.10198398247645788213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08edc2b2bd0dfd4a86eeef22b4a7f3261edda08e69043308a6f50e0c768dda1c
Date: Sun, 12 Jul 2026 07:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783840113
