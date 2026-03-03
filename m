Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F21C5155A5D
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 01:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772500494; cv=none; b=GwuYGxovvBLX8gfuHxSExspGJp5ZIZMF3NTviP6L3wX8DjhvcyQ2tzEBk9cUSj1MjU56UjV0UJBToBGKDsoPN5KRsdW8X4cRv1OY23spOpzV2Z6P18OUk81Y7OXE1n5TqzsdyqlAD7+GtNAKJ19BsL7EFDrQZ6IsvWWU3cMEzEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772500494; c=relaxed/simple;
	bh=+E4I09SSpkNRc0WqsRCc4JK4FAAG8g/k4ZSC46uvPdc=;
	h=To:Subject:From:Message-Id:Date; b=hfb/D7rTf7tM3+DGR11XdKlbmsgC/siyWnJZM4mKDTjmaySaVA1pZLY54E6miwMlwRqxlXQ8FGhL0J8eId3Swo5Tr6pqN01Hdm2wEWGjxbXwtjO/DGydVchSbyTNLFqCP5RMlSwl4oxQphPatLOrAnTVWE3y3XKSxtK26Mh1/0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pZIcrWbi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pZIcrWbi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A76CBC19423
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 01:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772500493;
	bh=+E4I09SSpkNRc0WqsRCc4JK4FAAG8g/k4ZSC46uvPdc=;
	h=To:Subject:From:Date:From;
	b=pZIcrWbi0FSnsaK73M0OwvNRKGMRCf9LE/8nrZeecwG0zQJCILL3MXJJ8/cNyBRRP
	 /VtDlQgqEa/YZ73xl5Vo0i9ZjoJvDYqnFs+qsFSJ42mEtILPNBqxcJ1QsyCLNwI1Cj
	 E/LQb5gFHisrZArFsF0WSSySQji2avUR9pQbGf9Jqca0pdPOjhPkg1bPKGqhEY1I8h
	 AntLbnvz0Rh3RPS8IPaR7YPdiMZQ7zLrJ/V6mF2i0CKbutlsM+UUTl+iogR6hYewD2
	 3V+2B2dRSDtO7TpqlciQBWuAlT7Qx6tS4stMv3i+GIbDbDleEaWPttgIXAUQwUpT5w
	 pyhA7ABAb2Ewg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92576EB3641
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 01:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177250049358.27706.10798231755375618898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a59125eb0d47f32551e08c27c00fada9084a90a478667583488116234c81d1ad
Date: Tue, 03 Mar 2026 01:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772500493
