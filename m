Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2952D27F000
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757260794; cv=none; b=A6bnMdGhfKKYvzaoXsdsqseQ9oe4kdzMIzlgB3JoNzL8XPrD5c0jluWe9ZcSzaEDN1ATQSAdAPPJGuSz5AsWUTILjGxXefF6sioZ0XqvHGzkdwm42NGgk5NDQUaE4dkPAsTe7t74xE0bOjF1hI3fIMLHhm1tYikZ+aYPXsFCyUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757260794; c=relaxed/simple;
	bh=9YNrisKGB0dSZvmnmtxkhwkU7Id9KixyY+LGpRvCPNk=;
	h=To:Subject:From:Message-Id:Date; b=t+JQ6N6ThqBwkXFHDt3uz+5lVgqMuXxE4u9pnYA+CMwm16cQUrbPk1Sz4ZpwYLnqL5isBhejRioNOrdHWe6htIaCaPM/JyxvOMH540kNQ6vVx0fhz58lIwGoqhPDa5Le/+qgbmRS++QCHLU1+SWUe9l/kcgnYHKOHkvGYyrO+9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gjAP1bR6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gjAP1bR6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAAC9C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757260793;
	bh=9YNrisKGB0dSZvmnmtxkhwkU7Id9KixyY+LGpRvCPNk=;
	h=To:Subject:From:Date:From;
	b=gjAP1bR6vE6+VgEDvpaQ5c4IhDQ+JOgDDnmWku5z1f4OmgL/vdGrKGFosI3x32dzM
	 fkV0+suerTfQr9wVsq4nyRQVPWtZ54NbfshG+IJmQMRXJlIwwD/2dyot7GZQzvDzNR
	 ljOBy9pf7laIH3jxp/SR8PtOxAXxfe73vqUZUj0FSupPue9JE83jNShdnuBOfiddzO
	 +Ph7tkmOLkqtpSDcNlXVW3CVfE1gxj3TeydV0xJ61uMxnDnE3B2zut77F82OYCM+Zg
	 y3u+/h+oEZLdyYgZN5ZyVtcAFHTG9nPBNm1h5W0N/2MteQE6P0uDdNwKyH4q4yDSUY
	 VNllQ073jMPiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9697DCA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175726079359.13373.7907474871179140916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2343b9d344a433fc0930893b4a5d72b72e06fc3b01735a3a6b817946465245b
Date: Sun, 07 Sep 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757260793
