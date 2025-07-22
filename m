Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29BC0287260
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753221594; cv=none; b=opHzi22WesAFcGVoUVj6U35mcUdj5bmlUdFLKAKSBe4wqyhmbDJDiEa8m9+mcqfFam5tpNo7jqyKmztWFFPCd+GtFZEBvo80jIdzvXJBFWouV+ghQXy2N1S4A1NjChTs2zVQUUhNN5kMaJG5xWJAc21AltdoOwWm05SbpuS7pks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753221594; c=relaxed/simple;
	bh=p5fFjGuQ8awiZYV2nK6RKIZ0hy78YUlWBfwnUOgUiG8=;
	h=To:Subject:From:Message-Id:Date; b=JjtSnmqIQBl4qGW2ZqwVgRR6JKEvZsqgoqyrDkj6Wpn2pDytMe+8oxLRgo6d6rqUiHJtLY6jkNf6WB9/3eUKqoP8jZrKR6YSjDWI6iyFcoO36caTH2G3dY87DWJfscorrJ0qrBYFEjMlJBNEyuIya/eEb5zOth5ATNY1bozBINE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q9OpjRBo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q9OpjRBo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48CAC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753221593;
	bh=p5fFjGuQ8awiZYV2nK6RKIZ0hy78YUlWBfwnUOgUiG8=;
	h=To:Subject:From:Date:From;
	b=Q9OpjRBoc12vJdjVtZAQtrcaki9XCHoyBgcjh7hB3ElTBQC3op3c+WyKasXtWZfCb
	 kkGq4Yk54/eyFPEnpwhhr/bx9Iy1BCXIhpu8Da81IA8ujdXKoG73+bzHZwLSLY73HK
	 /r7uI7KUvOuuDpOjKkS5DMDSS2qZJpCw7WdS/g5R95ypn8zNmH7oxvKjDuWywOHHQu
	 I2CoYbQYrFyHrLU19E8kZf5TMG41r0Gv2sdaDFWnRztJxwLDY4rSZUW6fdIfwGkdRQ
	 mXbM5cLhdWWpiYfGYfC9DbjbG/EG0pE+CC0/8yiGOSon4n3VIPNrgLAxbMKig907bJ
	 /Z+SwXzFQKg3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E0CC83F1A
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175322159358.27079.16018406641868950135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03f6c9552385762da5f537af5d3055a4f9f24402d3b7de2f83e8d3c3e6d8bc41
Date: Tue, 22 Jul 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753221593
