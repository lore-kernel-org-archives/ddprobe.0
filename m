Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D07321FF3F
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 18:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764526374; cv=none; b=UNwHs4VH7DW7QBEkywHVHZi+WOoF7hZEBrRVa+qrykBOu/KCtI4y4aL42BH4L3pzE77gdqi5pyC/Yqxuf1R1fUyv22pFNraTSBO73vRcBmAKzfoSakvQJjcdAJyp4BdaJIknoTZDiNIrsZbcuy4qxqRCaW4BJ3bXVrj9xG7C2NQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764526374; c=relaxed/simple;
	bh=YDecXgcHxEtZlNUKTuGzSopZJ794j703WmKOqToC5q4=;
	h=To:Subject:From:Message-Id:Date; b=Ba426eemetbX/6uNKwEqeE9o5pbSz47qzusDhAfeYUeG7JReEhHq3NcbKiQZAWSYhHyAtSiGZWmJwO3ogU7nYmrKK68hSw/7Th5IC+qD75fXbQxIzhM7HXLff0l7Vzh+FSZU5d2/grtNcFsoV3iadxklDPJjD0oAXg2PeB1yd/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vK1FTP3A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vK1FTP3A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A96F6C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 18:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764526373;
	bh=YDecXgcHxEtZlNUKTuGzSopZJ794j703WmKOqToC5q4=;
	h=To:Subject:From:Date:From;
	b=vK1FTP3A0YtPJUiGFVxeHktHCcI8U7AlF8SLoemdKIbZ1cH3pBg/VBN5ZgJ+w8gfF
	 scwPfGO/v8oYFw/07NdTa2A/hanF5WRrubQIckNXg02pbORi7E3OuCkaXBVPQSxgpP
	 VDgXxYMWi+Kb4tCtaLzEFYFztpkStoZYwlXckOVlJz3jpyafAY3pzQ38SW9WK3D82E
	 AR4CdCS7lOd/n+eefa6C/H7KMZ+WWIuX8sXYPMH6OaN2cscf08/1Q2IMswOWal73dC
	 ti0WScHVno4fLycVR7oWaOxaN+GcIysYSKoS4g64JoAZD+KzXmuQQT6ozxhR0PNHYf
	 l8yeL+bJZ2ABA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96834CFD376
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 18:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176452637358.24795.15472176268441088787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad5595bdce2d30aa62bc1d0f08dcb149927b3ce48ed01cb9680a064dc0d4dfec
Date: Sun, 30 Nov 2025 18:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764526373
