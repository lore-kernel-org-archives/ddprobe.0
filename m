Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C165D1FDE09
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751795993; cv=none; b=OCHTxXBGlevsjwblZ4p8E9EgjpBogqujzr/XKeNVVFvffp2/a64sI8GRsOTmbcBnnQ2D8ZLlEKQoqIQpa532bYdloGRi6LjHE7UeR5VuekUteNvjRghyQMVY83qgRH+IjDZZgazT0euX6v5czEhvuftCre3Hs0XwcJD7sSw7CEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751795993; c=relaxed/simple;
	bh=V0D7ZMSYxYvzD6MjqTBZcUM5PA+PItQMVO6O4XhAT0c=;
	h=To:Subject:From:Message-Id:Date; b=Ml7PUvLnKAMXVy3+f0Mcy11q3H8e9UNLtrnsfF35qfqsn0IbGznqRAoS+2c0Bd0w8i6jvMGyvTDc2pFVlJgTXldaHg2BsmZ9ZGyFKlfhOkOIemHI2oe43q3BReOAMP7oaFXgvLP2RYIQqXnLaX/Q2gCPCyJ/FgAszuZdVpR+YsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V4/6dXde; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V4/6dXde"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D443C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751795993;
	bh=V0D7ZMSYxYvzD6MjqTBZcUM5PA+PItQMVO6O4XhAT0c=;
	h=To:Subject:From:Date:From;
	b=V4/6dXdejUlBDjqijeRLcB3Ift0QAE19wtVK2QmR2BJfYrrqzqoGXLuxFjiWdmHiK
	 R12ls3tRx3xc3OpWVWSUbtxLH6H1b4PgscslNoRlBdOwLP7ur68YeJn3e7i+NviXzl
	 DcliWyCgKk+cxDsRpzrQ/icjJAubf/lDF28hcd+VciVHelB1HIt0l4ErXi7M5nfJDY
	 cF76/Gxw9n3h3dP56/LlLooI05hKFqV5oUaTxU/NE09Ouu1q2Rj1tVpCB+HGPLb1ob
	 SxTmd89bfYrodAZSCnu4hlAB5SGmw3H2U6mAh41JO9WjsXYBHBWj/Iz2fRHtbFv2Cy
	 /e9QpzT6ZzqZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DCB4C83F03
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175179599357.24406.7896886592000056130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 098771b73048e997d49d705f6a963696e785b0a9f8f199a95665a59bee34df31
Date: Sun, 06 Jul 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751795993
