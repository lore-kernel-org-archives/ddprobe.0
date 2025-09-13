Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CA8B29DB99
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757755795; cv=none; b=X5hygID5F+G0ArmtUq8UXKDAvJZy2aBM2Ej0b9oDYteNj+LjWNM2sj+E/V6CGFnmks211Q2ork26cnRdft81npmpQNVO1GbW2IYJEQjJRsWueihf6Y4dfTbILjpmuuS3jBLezwaipIo1uT/xVPhYwMAMpZplRCCrt2Bsq9NpKIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757755795; c=relaxed/simple;
	bh=QJm18JyARbJbDb74Hvn+h4GEcXBDCca0t4hwWdusa2w=;
	h=To:Subject:From:Message-Id:Date; b=FOMmFfJmF4LI4U2E7QIpXNyUbRuCgEJ0ObbCFwMeQhP3rHXeTilYoUi2wFNiRv5PqvoCfD5Ra7q8ZePM3zteeFDJ3fTEnzRMfA8GQQEfa1xPxQdG0wtn+AfxCQVIH30tU3jUW2Nq0YUuk4hIcklYCscSxiWCtB9TCuLnX6TQmEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lqlK4dDY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lqlK4dDY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5380C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757755793;
	bh=QJm18JyARbJbDb74Hvn+h4GEcXBDCca0t4hwWdusa2w=;
	h=To:Subject:From:Date:From;
	b=lqlK4dDYa/h0vLZUWfYHqx3JTyTEcq71Q4SC7CrW5+IbnninzlT3SQrwoWtvQoGA0
	 UEJgKl8z2+Y23XK5oBAExvdMieE+ezthRicOS75uwmbY6Y4rJsnITTiEV5R8dW4Bvn
	 2CeEGv/7nB0fD/h+AZDWTw6tJ7Y/50zaC+ZMTQglQ2rTs2MxxnVnltZlFJMXq+S+m5
	 P2XdLvKLq8psl3VJWkL4r861jJGXXKEUPtMlO1OeJ0apvoILbKcqn7UA8c/ORQ8654
	 H4GcoucT6/pPPs0KXJHivOubMtaTWscElwQbZt15DBX8b5qJPiW1sKB1AhfxYY4f/g
	 GbQuqDRPssOSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907BDCAC587
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175775579358.28695.8172772531552316449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82a2d533cbe391d2e5a378333c90bf1b4f91560d180ce96e4f847369b660ef06
Date: Sat, 13 Sep 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757755793
