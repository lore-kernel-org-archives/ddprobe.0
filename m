Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0945C26E6F6
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758002994; cv=none; b=JVXbkqVDdjULllOGyn5n4FHZ2TFfJmzkKPvFmKZrPLTrLFbUiKZEmy0qSkXHDyTrX6ldbkmWcuLgwoD4stemoiYNmzUSB44oovCILS16RqQ03siSpQwSO9at9Sm6S871GcemOt4C/zs+d5WRqhdQPioTlAi7sPsd6YoAAPOX7XI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758002994; c=relaxed/simple;
	bh=3E+T9iElDjZxe+jfhzD9L+cKz6rs6xcWDYgoEGluZrU=;
	h=To:Subject:From:Message-Id:Date; b=KzoAgVq7MGYpfqEX3YIKe0jBuEKKwRvJExLvlFawl7DDguTXBPpKh6sUwh0q7Svo4PCKgzMWDQr06DWu1+A2uuyvARTP7mvaRZfwv4x6uGDyBliMBgyTO5wYkilsytxjVjpMFNJ/HTGcY9dLhtb+785dE1eFuxnCIlJVw0Jn7I0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tc2pOKLI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tc2pOKLI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCAAC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758002993;
	bh=3E+T9iElDjZxe+jfhzD9L+cKz6rs6xcWDYgoEGluZrU=;
	h=To:Subject:From:Date:From;
	b=Tc2pOKLIVaw3C4zI0FYDHf03Yt+wdAF9Ihinm/1jniLl4agl0+1WPrHkIbjtXrJ6O
	 XCkp8VVzs4lVDwV7AKoWp+GJv7Z9kaoUUShQtGb3E4AD0M6PITfTfJ0gC3uvhbRMHY
	 knC/tSw/O4VhBGK58wBewykwjx/Y7s9MFvrc99fALK0+UHArOgeaMZcR6+jy5oV362
	 Q2Dwpw3Fx2jOKyGyzaDWi0POzAX0Q2HXjoN5Rs93edBGOJxn0IPI0GNvNGRLp6P/mJ
	 w5rPWhp4jmBWkL9HiHuYiJ6q2prqRsU9kV2CtCYNSkgPoPxB+Fuvpm8synC0s7bR3N
	 3myyzFWq9gyhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9021CCAC598
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175800299358.23637.11601975796230998772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fabbce46c34e9d5a3bbc2861080e9cfcd35678459b0ab3e583fefb325c62a83
Date: Tue, 16 Sep 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758002993
