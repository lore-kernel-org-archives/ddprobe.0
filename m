Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42714433A6
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763008794; cv=none; b=RWFm4t3KXktDE1MMEgSTOzQTyK8zclMaijV62Zzoy7EJ1nyhWkc13SqScBzq/HB012A28JFZXlI/HHsRuXqzhfAh8Ez/ocS2f2Zr6c3Q4UsrJlCocmrNq5oMHOo208UhsOzd7y4l/h3z6QcrHn8aHTY2ITQv/1yHCEExvgHzs8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763008794; c=relaxed/simple;
	bh=wFBSCdGAt+Gi3BCf9v0NAdNnb/eLWtlV8j1Qz4NEMto=;
	h=To:Subject:From:Message-Id:Date; b=pkr83+AzBVAa1VGxW4+K7uuH6ld3NIStixXGUg+Gor/6hIRJZpNu+pBTvT93QuaYIluhgnR6XquNPww2tZvKkc7JL+MX4A0Hl4QZvVYCGv4XvFYD8ayktMwfxogrttt/oS7S76TPjGIDpyD8+3gRe4E+N7MRtoF1BQklAdcDObk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ouSvlz/j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ouSvlz/j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C09D8C16AAE
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763008793;
	bh=wFBSCdGAt+Gi3BCf9v0NAdNnb/eLWtlV8j1Qz4NEMto=;
	h=To:Subject:From:Date:From;
	b=ouSvlz/j7uoLnk9dL2XzDDfuEDHp3JuGgMN4phWC5L9R2cRO2eXokCa940nA8uxj1
	 Tl8BnY+fmfhVBligy9CyNivW+5OBcvNrupQMYvN0MWGOKjt2o92hQg1WG4Ch7+lRfy
	 KwhDOLUz+fqub9hzT+XFgc+FtLXnjEy3g2o8NFXSCah3cS8SV5MIgD13DVHZ4dVREY
	 qorkrIfVymwuwwxEblekFkqvJ4sFPXFaADqDxmhOgFMAPCatCzuUxwhtjK/OLPPPVP
	 01oyK0Nxq2qN3eKIoiDbJl96w+6AlqKgzMRwtMtZuPuY+0H1jjPAH4p1kALXP3gM7z
	 gPzfycTwWED3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B31E0CD4F2F
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176300879371.13763.1915152469928659193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ea96e245d39d2fb9e40210be9201aafaff3326e9e2b9d08628dd51a2fb28698
Date: Thu, 13 Nov 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763008793
