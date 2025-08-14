Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D3A227587D
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755158995; cv=none; b=WIyXQz+Zei/XfzoXgaO0ishOwDwlr7VrTBZQexEskbe50No68YlYm8b+POod2AwYVGNWJlxysuDa33h+2eI0HtYCwKZT6l1CRQ+fFYxjbIzEVDVbZeHCQL2lZdYzJHo8szlsRSnjBYF7pDEt2Ev5g30KJAm5ZvyiudzHQpkxcwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755158995; c=relaxed/simple;
	bh=VPnBKAHYPyHJGmg1CQAax3Wsidg23fsIcXICPmpKD7s=;
	h=To:Subject:From:Message-Id:Date; b=h49RPaKtszB8yzBH4Y2/Z6VDKV5r4afXOi8jPfU3eUF3fBjp9/dcGPhLHeXhWR8sFGOPO5BKfQnEhgzfOSORwRK8DjWv2PF0hhWMRoWXEILx8x03ag71WRVYyobJi7YC1o2l/qps7iI+xERpYN0Egiv3Ktq3pZtriEAwFqZ/u+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S4w+xMub; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S4w+xMub"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FDFC4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755158993;
	bh=VPnBKAHYPyHJGmg1CQAax3Wsidg23fsIcXICPmpKD7s=;
	h=To:Subject:From:Date:From;
	b=S4w+xMubi4UhrCRBbt9OmXV1vBqtMjVxZtIivm0UJxbsJ70Z6OIsntbraIa3s4dG/
	 FmRdogDdTplKbdTJ2w5dVEnwNMWpMMmKc4LD5qXVy+pAn7XA5vM3m++zfJCRA1NBxR
	 NnFBlJiU6GKWYW73kijuwj/7eldPyn95pRs9t4H7IyPkWIMa734TrRCuVHRfgl5hKU
	 IeH5m81tPZTFPwAaSbpbFJBGinoYStleu8O3nJHIjBICQb5JLGq26InkZDR+gZAYKx
	 ysjKbLqT0N5obkj08M2zNoTBDtKWGF9gOA90fG0a21qzBL5JTk5EdBlzMZbm7xYH3n
	 2RbapIGtsaC9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C58CA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175515899358.17893.5941535542114589761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2014b8c444e2d38c1bae8812eee15274f8219b010effb1938a04d75911c7679a
Date: Thu, 14 Aug 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755158993
