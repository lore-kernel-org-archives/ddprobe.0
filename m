Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27D5915E97
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 03:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767239634; cv=none; b=rcLYe2cVCGxQC7L6ZbULfAV9smS7MFR46E1t7X/BnT76kBahY7tsS0Eud5t4fScpjZLQQgmfSX6H6kUudZMTG9y9RPWiV9/6XTDh8MHg9iGZgIA2DqHCQTD7eNcR/A93WAWJiHQcwPxje6nZ7iUTpa0XUTk7nxyqktk+Q/Vnow0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767239634; c=relaxed/simple;
	bh=B7CFS8NCq/rFd+lX8NwH78mkAxP2TPwjC2rmVSyp3x8=;
	h=To:Subject:From:Message-Id:Date; b=geQDxrY5xO8w0OYfVZSsZGUIMwT1bzrLss39T8Llh0nvoHVKX1w934lxG030eN218A26tHtdzEjRdvwQpkufbIJJTPXYJLGYzC4rjFfD7oPS9AqAUlcbo+AgYjrxso6MS/EBDDcZClsCidirRx048cZclu9pgqS8KaaXBrqE5A0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X7Al9y+l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X7Al9y+l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0866C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 03:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767239633;
	bh=B7CFS8NCq/rFd+lX8NwH78mkAxP2TPwjC2rmVSyp3x8=;
	h=To:Subject:From:Date:From;
	b=X7Al9y+lnzgmbSspBRweWNvJp72NNZLq5DxyJq6w637kAcaSd/WorvAKH3AoVV9vc
	 w2vRVLazp3WClGi+IEyr8SPqQSrsjEkfaUwkZtmYql73uGPS21MRTwZgaCqNiWc+Oy
	 B3B5DTpX3j8JfPWFrMqfOAEsy2Q/cTJDLbNpoCCKetp2l+6uOtII2TE1DtHnUh+8uM
	 4p4ZgpYytRoSL00OeIqL7Rzo9DpUaYWC2iv/BeNaPkp4WuxWLiDv63rSbMZ8Bob/bK
	 RaY1SqSmjLTyKaCWNnogo0Te6C96hIirtx0IovxoxeOsMXKeFqIbAP8n5/DNz+/x2N
	 mmjgnIUDBisaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F70AEE57CE
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 03:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176723963358.15375.16819992988692334532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d0418833ef0009c88cb0695b7bf0d6b6ef1c52449a60d8d69e32898bb32520b
Date: Thu, 01 Jan 2026 03:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767239633
