Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22ED9252900
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 03:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765077774; cv=none; b=Rh8ArEMiufKrUplQzkLFQ+ZzC6Cy1fB5yHXU+IOOsa5TgTubKHLx50zbAFWH/gtTteEvNUW7SNSzqEpf5iiyKTSZes6hPi5ONU9s/8aZ9cFd13bhHdlXRgAunjLd4w0sfO32osmf83wmAPnBVXCv5ggAWmsiY+9HPEDdIrC5U0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765077774; c=relaxed/simple;
	bh=7ozpU7IBUbbe9ASjJ8Uiha715ScqXtzrQmRHdAmFC9o=;
	h=To:Subject:From:Message-Id:Date; b=QAwxHc+zimLn8QHvwFp6mtHI1UdVBGpth0gw/QuxjUbcry6tYDa1WM9tKeaeZtEaIRJtHrfJPB2krRAnTOZ2fP9z+AjkEdykw3XstzSwyfuf5XdYDotzl4NmuBq9oSZQgXMyDd4cZ7rVXsKW+VrNdJa0Tw7sQcXzSMOBFSXU2y4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pvqZ8GaK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pvqZ8GaK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89C4C4CEF5
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 03:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765077773;
	bh=7ozpU7IBUbbe9ASjJ8Uiha715ScqXtzrQmRHdAmFC9o=;
	h=To:Subject:From:Date:From;
	b=pvqZ8GaKi8Z7cKK4Inb2QV+m41wET+Rq9TJd7WQ43Tsm5Onljmfii4o1uU5Bheo+C
	 VZPeTn+4Zncme38Ll79a9KAyMo5AhHRns0JLTdT/gcoZ94oKIoBDCTp0dvN+bBDqHq
	 5SBnJMtbiuUfV2g9C238ZQIs9sXDzgKHg2FbeOF1jTDcefaBNHLPETjyrnW4mHscBi
	 2YTvYpjkIYH5cr410GEfXKsUl3kU6rWAFqZ2/QzniCs+7aEtDmMoPZ40ArgRZXe8N9
	 QHr0vH90YgehocjPdg/xPZlCUesmao11VTQ6whYtecK+Eank+Go71k/SZVSRTxLcqJ
	 +sNFSIafJf3EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F40D1CDC6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 03:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176507777358.7177.2970305772240986119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6ec28cd879bf43a91706ecc9a89f06403085d0d26bf1b4a4b41db0ca205f48e
Date: Sun, 07 Dec 2025 03:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765077773
