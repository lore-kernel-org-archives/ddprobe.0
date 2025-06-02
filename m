Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3756D182B4
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748833194; cv=none; b=RGbNuDLrDPknXmSqESMV48m1CXYYVvHXWohKbiHiCAKFWhaHitX63ljjFGNnsgvGhhHhm8bfcGs4pBxW4OKCvQLbHxr1t2IPybFt9IF/pR3lvEPmeN4mUwmVD41yu4q79wkaKBBPQ+GzEEb6GBr+NZ9m525WDkPqveMhhdx8pJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748833194; c=relaxed/simple;
	bh=8U4lgA0T9mD0ATGJWpjbW/9uX/XI815jV1b8WIot9VU=;
	h=To:Subject:From:Message-Id:Date; b=svlwzvN5VxgUn3WNTGqZrrToMCV8NLp6x3m69Rn/gsq/cWWSHXPUo1bJOn3ntTp54PRnMtRO+WuVRxcATh3mcVXwRnWfn22X+nR9yNI7wxwmMo/yJ6Xt2kqS6zo6rL2uZ36EADHfto45H7285TU6CZ6VoG3SgInmR8GDnq7GIac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iDILpt7z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iDILpt7z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17D4C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748833193;
	bh=8U4lgA0T9mD0ATGJWpjbW/9uX/XI815jV1b8WIot9VU=;
	h=To:Subject:From:Date:From;
	b=iDILpt7zb7HdBYH5Lpe0wuhXMxJmCLzIo16ZsYqB2r7qpc+PW1G0o9twxjoJXm5ym
	 8MNrl86z4v2mzYAC8xNcCXoukRyeqhDCOdBre4wQ/sgfQvqVOjLJfvUNqRYnClfzAy
	 hUEjmjx0Gth7Wp/ONAc+qEmfh8hWm1B5D5FOs6lsz+DwzpI8At/3RgRp9czUyo18yU
	 4+Gx4n0R/mR3ZgRDyWW3k1UZ5VdZ0u0ydZHLuEMMeup/321RqA4paonhQf1r+wxTVl
	 pB/ZHBy72/d6RsDXzDx9gWmOsDqsBFQsiyMgaHthkqQm4AHaoCRIGHfo+AY3Qb1ig1
	 0wle8VHsBo0VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CC2C54FB3
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174883319359.29930.1393600666285393219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6584e5dcaf02fdb4c0d714b9350d873c721be999cdd3da089954220f23ad2aac
Date: Mon, 02 Jun 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748833193
