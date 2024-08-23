Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 260F3189508
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724428554; cv=none; b=rOwKCNoTSgOvjJpHcHP6iJrv52PSI0H5KztkIyz4oI3e7eqLTm1YOiLCpxg7VH/S04riUuhDEOWyQ1zqLu3q3l0c+R83pnMgp/wdlEysP1QiOg07mycq2/9OH9cePwaVqF56uXvuzLkSd2FGgEUZs5eSOlmbTFtsBEbqSXBfuRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724428554; c=relaxed/simple;
	bh=K2EwwnPIH4y8ciVsymKHhulefDaFGRXc136JHzuzbEY=;
	h=To:Subject:From:Message-Id:Date; b=GE1LeYTTc4kfhWm0DPHWRGV3XcYpW9KVPhGauei9QyNiEpp/tqN3cOilphoEpOteVGBtot5tx/Do2fOgP4i3KtVpleakm7HjeS387MnSTXVk2IwOeNg9GpF8o3HmjhOxHne1d6+YZhNx0zj9SxxX6K5jWZ7CRysSCxJmA0e1Tro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ompaSzEw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ompaSzEw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9690C4AF09
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724428553;
	bh=K2EwwnPIH4y8ciVsymKHhulefDaFGRXc136JHzuzbEY=;
	h=To:Subject:From:Date:From;
	b=ompaSzEwFW9VD5Rl/Q4SjXG8H10Jn4T7a1o8BQdbfP+ydHSzIHhylWwgIZByC12Ti
	 YtM4OHse1GKzPmY0BPKqjvoE1i8Insgv7sLf9LAjb4EAqR+391jb5ABd3SjKTEe1fh
	 +UhSAWkVUE/QbsryKQzMi7YoBW6gx+6QwEYZBgsOEIXHp+u7HQNQ9a5HrIa0Orftjn
	 jN3gsN5n7YMjyC5fXd6UJPumyiQCnBa5XmEKF/kjeNWgGm5DpErn2CGjnSLYES24M1
	 9vTqjY3FApfJjImHChuIFR8PltzE6QSnqqYUHhgXq22t3e46F0glhmhiK7JpDzfPav
	 G6dkKlTaabHUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9207FC531DC
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172442855358.8658.13355949226875355784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8eea7cda94f34a4abd1fddb9d269051f0c1503c3bfdfc30bedb3c07dd02fb8a3
Date: Fri, 23 Aug 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724428553
