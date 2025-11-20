Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5530307AE1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 07:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763624513; cv=none; b=Eyzn2A/KxLlmA6CtH4ArQVgYtsuw3Me2trsYUVbaSd8DEp1tIAvLrOtxCQxUuJq329WnlYzTLGrX2W7Ur0AvOa9Qu5jKCvX4kOyhKXJ4e1Ua/I6jiqNP8CPiBRSjia2bz9rsF8SSgr6NZ3utENWO8HcduaqpmvDDURwahVYwnfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763624513; c=relaxed/simple;
	bh=rG/+zC8RbXO4z0y4fqLr5Q63rzov2fza90yH258UrdU=;
	h=To:Subject:From:Message-Id:Date; b=F3X0NcuRlIbhtto78Fsbg0bzEh1zohDfIXaT2NiMLlklkInALcR40c5dOSt7P+FJk/0Z9Jiz6jkpjxAQQzKQX6EvItD7H8jjyloAkWGNkjhulB6EUqgx8eF0PbAQZl17HbZVFvm5VeQAsJSgrP/UPYWwd83sx9BLSkuxPca1opI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sJ9YYijf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sJ9YYijf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31D8C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 07:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763624513;
	bh=rG/+zC8RbXO4z0y4fqLr5Q63rzov2fza90yH258UrdU=;
	h=To:Subject:From:Date:From;
	b=sJ9YYijfz8ryk000thxMoLawoAuzmtzYkXg1e5KXhMlKsh1AqUn4nEeCoaPuKqiSg
	 YpnT8kei61+Sxfr0XzYK6NkWYxtkDNpQVmy50vbpKvpBSVoRIqys5DnEoo30f/uttv
	 RrVcqSDpfmUKSSDoypb4VfYF0MECY+fmAThX98hnEBs/7CatuhpO+8cLjLZAu6t80L
	 YL8UynErR9K/JMOu24gp8F1OT0klqamgS6GshWFlNo4CY3yIFduVw9mmYXy7X7SEDp
	 SCd3ipZZiSrU3mQZbjzbbnONq+Xk0igZMXp4fLIKio1U/ji+5Tegzk5p1LjTl/ZJKu
	 NYa9yd84Ddb4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D4FCF8551
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 07:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176362451360.23642.2585364107880129439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 715b58b2d9e682768b6b1ad4379dfb606981ad9e139d5d495d23817c3d2770aa
Date: Thu, 20 Nov 2025 07:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763624513
