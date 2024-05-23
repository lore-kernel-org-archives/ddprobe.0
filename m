Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 558802F875
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 05:13:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716441203; cv=none; b=DPP9eEvw2SOWTR1hZveKnw2d2p6JGwycPsnAoRgWL30PFMqnO3xYf/GCg+SNJBfhS3InhU8jH7Vrcs0Gqc/bQ6ogTY3p0IYhLCwZjF3AOx936+5nqLRgzIhcm1VtTuE43A30NgXp8iJvIsHeIdX52zcoLgVYB4ZpNofcMcuN2nE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716441203; c=relaxed/simple;
	bh=mHG5kcAxbJfCO/UEOZsFWDOqkmReg0NrFKUY19RpYsY=;
	h=To:Subject:From:Message-Id:Date; b=Azv7lVvowuv2YnaJOC+gd50rXDdaJq8xIMPVxbilyqEVVuW31qJ3TGxoHvsFNcNYxqn35tD79MvtnFOjOn7pmoVqQ3rtmMFfjFHoQxWjwDTxK4un443IaTFp4F907hlnywDug+wE4YAosfgLMH1eXYkhZN3jkrI4rMydZCeV8EE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tMLzh3oc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tMLzh3oc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4251C32786
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 05:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716441202;
	bh=mHG5kcAxbJfCO/UEOZsFWDOqkmReg0NrFKUY19RpYsY=;
	h=To:Subject:From:Date:From;
	b=tMLzh3ocMbjO08FrQItr0bZLcmTrtekaH2RBl9O/ovY8gkLLP1MYsiXHnsva11n8U
	 sckrqqGPwmY1e/CBqXAG2Zow1ZXd11AGr7+/U4QGuLwG65EHfR9pTVqltqp+omGlcm
	 5FTb+BDVRH/BxodH9DRM4YtTs9/2dJI+XSkNxG5zdQ1JzYD00AsWo+pvlDK5xT1iE0
	 8mRan+oZKOmHQC5uVudlk+0jSXM35h7GM6epd09/p/XA3inhVe+rFeFL9Z3Ydrvv5P
	 tWtiQFkUkh9Q5Zu1ZoCRUZeECjS5z5WqH87gWl+b4rRM9mBkoqIbueWxm4w2te+V9K
	 K7ael07bGip/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCD7BC25B75
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 05:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171644120276.29549.2816555146912381709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d0fdc1734e6e1f48a5718f5cf57715905ed07d7a9bec1c7229d601bbf2b01b3
Date: Thu, 23 May 2024 05:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716441202
