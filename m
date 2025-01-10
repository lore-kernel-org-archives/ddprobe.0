Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3417F2080F9
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736548554; cv=none; b=H71RTsER9xMZ0eQNwdD7Y0iYkZZEQTyrNqgyUcJXNSy9ZFG6X7zkK9TcktqqUvzSWKu3rRRsJL6yHhNnIBW2fSwuX9kMT6eR7k6mHs0S0N2XCvECseDy1YjHV8oiHygY3JvjvOC1DKhSbOIQrncGAW7M5pPiIhoFQAPJbA9hE+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736548554; c=relaxed/simple;
	bh=NSaoLf1NldZ1kvmdNvcz50elHSZkPUokK4LyGbayD9g=;
	h=To:Subject:From:Message-Id:Date; b=k0VmGBIhjPXR6SkOqmDHU1BmEgzltbT7kgjmqlTpVdsjCo507WucNZ1DGG6ExP0Flz/nw2Zfi6ipCIBx6+B7PIVRNyLs4vmd3EI6p99gb8w2mYUnZ9b+8xHJ/uUjWrxBlrX/63m/3pQ+QCDBqQ/dEnQTJ3CQYmYozafS+CeFGa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QxEqWBoy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QxEqWBoy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2AD3C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736548553;
	bh=NSaoLf1NldZ1kvmdNvcz50elHSZkPUokK4LyGbayD9g=;
	h=To:Subject:From:Date:From;
	b=QxEqWBoy4u3ktRBVwE1EWDHD5Az93UiwAWqDkfI09m2rmG57sqD0I/ojRoDxF1uys
	 ZPgh5FJbVc9i082oC30jIGhqtMa82rJ+CyIj1bM2lF0942FAI9gAji3V+c6PAlU/d4
	 022nTCzJZQtoeR8T2xvPU/UGXMbcwze9MsM+Y8T1OYkfXXJvrk8v4Yy0QftvYHw2uJ
	 vl0ClGwfe5mX2Z9ev5oyckIiHvuMlk4Axbdj2PwCzrXEGy7utlyhDAhgI/6sjKvcbZ
	 K5e9cc8LRDPpCZCC5tJbINR/FbiuS4hcP2PYIyM2UZ6N3hBAazHo0mWjxLy82xT/bk
	 BtohAn11PzATg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A026EE77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173654855362.27652.8479447067079748995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1169795cf0ced20bdc3482b959a9e1f72dd8d5e0189f5dde4bc9d9cff615227c
Date: Fri, 10 Jan 2025 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736548553
