Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F1A614270
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 09:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705484896; cv=none; b=eMGQlyVSN/eWcDFXYhvXTl//gknu+n6C8uQLxmnicbNViTZN8i33hHHDlYFGCveJPTsyJoRFXVlryqBTf36L6p3sJg8oTG2i50e84lE1/0klSRugmAKDtgW2n2szsb+AMJA3/hbdSRBcQer1UArAPFF2nd59QCW8N1SER/1AWKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705484896; c=relaxed/simple;
	bh=fOzURHegskSCECWD3WAwsRkx1ukwXHLBk34FaY88XSc=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=FfFV7xXmeZqIIevytYaKUlTvc0bAjfnIGz/blAiM1dGyIF6SQcdpPWpV4MDG6z4DU0Ozh8kmQTCADv5vrX9moIuMThYXjjPr4Z5CcP/tycecjDbU4ofhrugnL+LUnYglLAlKAItQtUFIfbnz4rViQlH8PORioQnZKXdqz4Q3Mf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nq+mWuB4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nq+mWuB4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78B1BC433C7
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 09:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705484896;
	bh=fOzURHegskSCECWD3WAwsRkx1ukwXHLBk34FaY88XSc=;
	h=To:Subject:From:Date:From;
	b=Nq+mWuB4CEDt5p6MeUqcUeNS/WRkRXwiNAJv0Bzeds/LxCSTND+BZ9KGHyq5OfWWf
	 n5p1nJKiNIsc/JnclICjRJYIr4Q9bH6rlS8kVqwnWkKXbH2RdiuKZcFzZU5qMPfcnC
	 2dP5jEzsIsRBNYhmgSz5ogn7RNNt77ycR4pM3LkOdF6nOOW4dOYpnWhR/tcavdXvzv
	 KIXPSxs/lTrxatO0poCNV1ZgRQMSjHhSZvZApDiqfFmP1WBIPnS+Tga0RaW/RAig0m
	 v7qyMvAnshE/QuRUxbCKkqPPWq4s3CoLPEKsttfgRFGoxVDH8To8yefdB6YBPk8jo6
	 ab2ZtuuNgoK4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 614FCC47258
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 09:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170548489638.20656.8156950201142319565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f3af0436426a1ec5e248ec6de89f4646b9d51820bed61d9286f4b4562207a9d
Date: Wed, 17 Jan 2024 09:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705484896
