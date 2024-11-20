Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1A15E545
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732083354; cv=none; b=FfN6GLNR1ZmzKsjNQhw0nk//nWXNceSztX2smKmXDxr7xDE4WkogJLzPIAY17qZGx7y6zslEEZbPsI9crIdTF+XnhMD7afRmFLRKIXQS1I8Tw1m/qXuCAMehapgddlAGUB8TlIhs0GBRgcpek6bpw1yR8Rm/y0h8KjzIWYJRv4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732083354; c=relaxed/simple;
	bh=1aF/JoxIVW2gBMFIjmk45kQ7tBmbKzD4qAYzMVYrEKM=;
	h=To:Subject:From:Message-Id:Date; b=A5z8rYoeQXVXveX+Cl9XYkcr/NZMgC+GKGAvImcG23bKjKcDyTK9seCOB7TLF/hxsd8l1W/g0Hy/0Gc1zlBmmTp1KlbKXDz74MeH4i+Hddcyex0LQeOZIQaohx/M/q3eYJ7l6r82PNXK5yaEV6XICNQD3tyQEuuON1kh8E5dchY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TYitA70A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TYitA70A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B63C9C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732083353;
	bh=1aF/JoxIVW2gBMFIjmk45kQ7tBmbKzD4qAYzMVYrEKM=;
	h=To:Subject:From:Date:From;
	b=TYitA70ASJlh27cWNq0x4o6quxLO66nimvLyO0ZbV3XKQoW6bb/LjRylcOC/HiDFe
	 g2T6aKKajQ0XAuRSPA98T/Avp7m6CFIQKYC06Osv7oBLiOGyRdEtnQdpkj6tWzXmBR
	 5v027h6a2+vlFcgA2aIUpCJU20/29F/TtyN+vVgPHmI9mNcl+wP8JYR8tRx21MKj3f
	 7oSPmC7rBcOWRbt5FjvQHe0VL0DKD/YGFccb4iTk3XGxa+nhufpgb2aoKOstxgxjKS
	 WrH1SYKv9h/PJAdAoabCkCNgEpEOKo/yvnR4iNmED9MERi56NvEp9lrQ/9u1jckEZ/
	 2PxYD7LGYlLCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1816D6E2C2
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173208335362.5997.7160283124955150163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 523a4a4eeb5559c0fb0f589e6cfa3c6bf8170b3122881f42083ac4b786695bbc
Date: Wed, 20 Nov 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732083353
