Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5295F21638D
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 04:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777957054; cv=none; b=H2P4UqdLAIQ9yrPXV2HXVsOOQZwv0fiS5+Z1DTFbeDPccqTRFpeszeCfxSVNAyAThlOw8hfhz0Z+T5sJYJf9o78KlArjUVGIEIEwCeKzKkgCJes40B0bhBah0BUOqfm8E6G8gmBuuJdv7lDo6dFTLifDckFZ8oy+kWcsNRBvA0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777957054; c=relaxed/simple;
	bh=rogV+9e+5P0Qk/54dngDAaAyddwyh6amrbj6dtrHZ9Q=;
	h=To:Subject:From:Message-Id:Date; b=sFO4M8L2Fu3n5uRIrkLYLCFdVsY4/MQDBmLo48j2xLx7or91zYRZ2K3sBPSa8m5lEyiZcapjpc23lV23yXIftIf6cK0OyvBFEKOnueTa+5RO5YVEKSQvIofulfIgnkApoe84Ox5IwAFFJj6d3Qd1RvkeAgQqHxiwYjx5iljaDM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bBwSIUMO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bBwSIUMO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C45B0C2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 04:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777957053;
	bh=rogV+9e+5P0Qk/54dngDAaAyddwyh6amrbj6dtrHZ9Q=;
	h=To:Subject:From:Date:From;
	b=bBwSIUMOgl+5h8lML4BTJlJQCQae20SGDFX8wbHZsGU8rNEp2R94ofeq4P6kB6dKK
	 X9TJYnYGbZnwYm+0t5DirPWnpFpjU8Ue/VdV2jF2h/OjQjZ77EhHEYmCxTP3KjT0FT
	 pEoE98Y2GaO48eATrlel2pH6xW3qxQ0cn5dVWhRxzGfAfqA7OeRbHLQAYiJUTn/8lE
	 5lH+kNptORAIOJfQ8qH5bWpME+uhdn2P0mWzLATclo2c3SApq8KWM2v7IxAqBLzCli
	 zJyGZENih/BO7fLAWuzXu36aTpj6lD+TUFDXgktbIwz3taL+E01Uos35XQyBaDMyLK
	 lDIY10pb/UBfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B382ECD13DA
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 04:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177795705368.870.8178747053342734699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f063ac52b42e4cc31ce3c37cfea6782fc463c339e01e0c6a5d27a26e62b3b628
Date: Tue, 05 May 2026 04:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777957053
