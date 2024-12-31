Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30DA817ADE8
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735641954; cv=none; b=I54UWp+nDMilHfeAfhS+LA0LZ/7kGZIWgJHSV77RyoSX+5K89iI0zyZ7CK3X19ntIaQewr91v0T6LCNX1fwE88o1s/2wgudiZGNZAqsJcO3DGY0IPIJH5zqUHgVie6g/B5FWhUojpMm8kY3uGByJh8dSoGpvnnFBiOaejveyosM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735641954; c=relaxed/simple;
	bh=+bV++k5fJdFv3W2zRA9LeiLIsxdfbEm+d6jDWLAoe18=;
	h=To:Subject:From:Message-Id:Date; b=iQ0VSZLGraUFuj/Ci5/I2xZ3VVDKxo8bkFTIfNXfrRoZVVEXBUrWNknkj9f3Kdb86gXSYfEy74SvWnXAPtvUVoIXUiWNsvsvzzci+sS9uYkzAJ7nsfrYXdFUndT3WLdQJFrKlkrC8YUfOcbPD5IWLx3pEpHwWvcZjVflJI30Qqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LwcvyDjL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LwcvyDjL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E7CC4CED2
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735641953;
	bh=+bV++k5fJdFv3W2zRA9LeiLIsxdfbEm+d6jDWLAoe18=;
	h=To:Subject:From:Date:From;
	b=LwcvyDjLi0yr0haZ6ZvktBC7ceHcxRgGRmcw7WYkFKkgR4MvBj80sFCtywlhHfXi0
	 pyX+KfIp7zDE6CVZdWHtKedov57FDjGXqIF6Rffx6TpYauT6IUMGtnaKcPylU8eOrz
	 yS2TNDxb3wXF7oSpBLaPT42WkLp52Edl1+ViGaFYRwIGwKR6LZNa9hrI7o7SRbsJA0
	 Y9VVE6p50rFVJl0g1o+hC1ojp9VWg5xelozcyo00RhNdJNiryZZc3MURc6NrZjMYb7
	 KonHRn5on7KewncMyWk+Fz7d7X6FVCENvoUIOItmaq5ayMNuiGhSYQMwP5wg5+gpSG
	 0si8YDQkGFhxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D69E77188
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173564195358.26748.14842101637883628422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e21b4793295c551e7471a386f1c08db0d62f73ae86e1fb3e4118e892a7f461bb
Date: Tue, 31 Dec 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735641953
