Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21BC5C8E6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 00:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771200894; cv=none; b=BH62H7LEdKZyaWjvLDBUrY5pMlAztUBT3Qh+0pGS70Cda+lLIKqOfkW49t+AFJmamiPlSqf94Gqf64g4vmhHEYr+UDY+1Iyb8RnyF0HoJn+18+dhwfS8ncitYobhnVWsgBFwRxiRWcPwS/JNN9z4n262gWiQPNGt01+6ouqZ9bA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771200894; c=relaxed/simple;
	bh=yr7CurRJe1epxDveSPfooyA1sU3mERwtRXoL/tymRnE=;
	h=To:Subject:From:Message-Id:Date; b=mC8/NkRLPWq8+Uzy+ZLW1OnSiHYIUpDJr9vD3X0hynMtX3T5lvTagCTWY54mHd/YomRMqLhiQ/qViU2aVEzvL+l1g+8nmKBQ/5SYb/th5qIsbbp15yg7XYny9j7hQ99kEB24ylsmNGnFeoqpN63NaMBC1zIW8EqelPwkirzkBn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l/5BXoXl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l/5BXoXl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5C55C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 00:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771200893;
	bh=yr7CurRJe1epxDveSPfooyA1sU3mERwtRXoL/tymRnE=;
	h=To:Subject:From:Date:From;
	b=l/5BXoXlVE5PEWGAVHRv13ENh6B3nNdf2kXhXb4YAOdLw6tYV36Zru6X2pBZ0i17A
	 ++Iij6qCdRsnYzNLFxwTEfyCoq3KGmrauhKkDPItFvVdlherac0uSwL9k9ZL8KzkH2
	 CWrr0U4j4BYrVoG3J83X5CqMXTVW+Asx0CMLtYDNOqJ3AhNu98Qbpqn9SO3Uour3fB
	 Nggb/hZJFhMdIQVUg2aOqXkZtT39AQHMR/CkGXphO50H0hWlqpRgP+Rk3FIjN0o/We
	 18BUInlMzZ3rutrJwxCJopNvq5XpU7Zf1stBtAe1NsocMN6TB+J5uKyBde0odLAXAM
	 oDtfkP1iScyCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F3B4E63F1C
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 00:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177120089360.25589.1974673246280859819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 163946e69998c4f122500c990c4dabd93626bb3ea3d03a3cf5550cc969e1dd18
Date: Mon, 16 Feb 2026 00:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771200893
