Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 814F01A38F9
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 21:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781385394; cv=none; b=RkaH7jc8ireLC0tu9pl9yM85WL21eWXbHg8ytaK7qOuUzGCNFuF5Cc7r38+lAxolCRycuhNmO0r+EEfvCPjmLq/F7TQsatwrXgTUvK1m8wQx+qAC+FCbzAEBRFTcEcXvUaaoMrVmhe3fgjlLEj6xbFMY97bHYoUTwBPsNNjAgf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781385394; c=relaxed/simple;
	bh=CKgxsi9ghnlXAc08V2ePv1w/vPAdc60dS/tuRWqC3uk=;
	h=To:Subject:From:Message-Id:Date; b=BrCI3S3U2gBrIuGp3kWHHc2/sKsIrxBeezXUtwv6G+yALR/oxawL0YZstdasj1TScPHG2EzOi704w8Umf7GGhzWLCyd3AhVuymEcJm1KtqfvGoPi4msL1vh2pXbmYVpQcxWI4IPt0iFTN6dHkpOQ/8dMIPLtzqK0aA6i8z6ydeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pSe5FIUh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pSe5FIUh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8B7AC19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 21:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781385393;
	bh=CKgxsi9ghnlXAc08V2ePv1w/vPAdc60dS/tuRWqC3uk=;
	h=To:Subject:From:Date:From;
	b=pSe5FIUhGqyib0xm3VsGNcfKymRqVphAeL6mmTeOPon9883WZ0Y6Re76L3ii+Sfsr
	 GGBIhSjmqWXgvO6U9JrJa+rTfZF7uQbARZnzSGjE+YGY+wrdlw8YicJ4ZEqBz2V/dJ
	 mPffGJj0PY5SAiWjAEdJk0i754iDFw2vC8/auy8TBaxCcLh47l9WfHNbYjxknCBTS/
	 pm9DcpIjh97KYO+VHx+DmEqlLUOaxFxqwVSJoc7N2NbMqX3+EKZhgkDDGjdu0VHW0Y
	 szgoWW+PSuV0rBVTEAGETcfVKpZ29QW4109ZMwJgEBckC+Frgw4GRgHd89e6EBl79q
	 0zkmrJSgC1tMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95E3CD98CF
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 21:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178138539367.680.15808103133289124822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6da1a0b0f3e63c2720eabe2a61552bd862a6ded1ac02fe00145ea873c5a8559
Date: Sat, 13 Jun 2026 21:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781385393
