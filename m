Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10A9031619F
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760569194; cv=none; b=DTFOexFEu3RC45q+uX8TvjphbJB++w3cdKdYFshrZexPcu9vVUWgdk8zCE9GOp+Hn7Tf94j+rV5uYSuSb5Jp1gp1zDbkbIZQCE5Zy2yJK5b0JSizawlmRxTDGe/ddoNpgNsVFqqjyuex/F33gh2EO7f8rQtTLOOIrDTTo4q3DVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760569194; c=relaxed/simple;
	bh=nfS2oy+zaSYoiKfvX5JvEDWhshYbYdvbAKLsAsWTWgE=;
	h=To:Subject:From:Message-Id:Date; b=g/INS+bRGnrPap7ec2wgfSavKrTlDmYrWSmB29M0sr+NuRc6jP+8IvT+F7wIj67F0wjXROxCnDuWQRVGjleAxJZTw6T2MDO0zfQBuMkivX4ml7rf31clkpBrmG1+RgyXX+9VfBLWS8GGGekd1wh+Yr7xXfcf18S+zLYWcu4G+7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gn1Gteyi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gn1Gteyi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16FEC4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760569193;
	bh=nfS2oy+zaSYoiKfvX5JvEDWhshYbYdvbAKLsAsWTWgE=;
	h=To:Subject:From:Date:From;
	b=Gn1GteyidJcBb7OC40H88B9Hmd0/tiWpEyZ2OT1plZDyVHPyr077qAjxax3SkLkpn
	 td0sfSZVBN5M/uBkVXhLZ7rJeSPT+BLT7d8qrZDHAMluA8L30uxWauyBG8HMIjd+ib
	 XGeFurA/l4lyzkvGFp3m4hPZRRfi3QG68IaUCNqNjTmNsNowKaB7ZYXvWaY6YWkxyK
	 9qm+SlcASmYwgW7pZzOL16lRh29L88K/pUp7GvG7CZAD46Sq69jfXY7zc7NVwOt5p/
	 qN7PL+V19+qOBm1r7j5CHSa4oPnhs/oMO2l+r0PJQAUkWmEvB000nG+ICI4031QuJY
	 d0vA1IelawWwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD6CCCD193
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176056919358.7106.15819242150539116389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e98aa2713d7f0433af2b3e70cb440211f7bd5f30eb010ea896ebb6cf52e380c
Date: Wed, 15 Oct 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760569193
