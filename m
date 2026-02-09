Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BEEA324B3C
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 13:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770644634; cv=none; b=OSg5AznKJAgZDWsHMYKnOp5XPA3wC6I3NlqK2wkuO/P0UZJNQq/S/BSCW3HhmuyVr1+puGXZMTfkxQtR+ZcBhNvK/cuOnk1BSiC1hn19kpeU/tj7w6gHEmqW019Iw1gBjDf98XiOjzszPT1i0/CvJZbUmq0VDC9L+QSC8OQoXuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770644634; c=relaxed/simple;
	bh=lJ3e4n6wD14Gsi5vtyjlKui75vlRcvCVp7KXM7CjdPI=;
	h=To:Subject:From:Message-Id:Date; b=NSxinfTKJOzAQYoK49N0uwzHjKPKUuBVkN12F76zJUyg8QBcoOTWtftZCCHbRp29yyvB8wXOhVJBc2HJItMNWntvGttWV7PH4KxD4NiF97hddbjpxP6Ck5k98SrMkOh3zfmToNI66ShDD++UoE4llTzjvd8qBoYCg3fhURu3xs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dIONfpCr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dIONfpCr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE336C116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 13:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770644633;
	bh=lJ3e4n6wD14Gsi5vtyjlKui75vlRcvCVp7KXM7CjdPI=;
	h=To:Subject:From:Date:From;
	b=dIONfpCrDlqDIBd8iA/ebB/7BhUzIag4ACDcTG+K+VIzi2rxOKQidrcWOD4v3VX4K
	 jEaeYZV2uEzth4RKRz+sMw/BkfPbzgRnHzUGdoySmS+rbEUEmkIfMtEzF1GquTHHKb
	 e45wqfPADy7WbDT7lYev0vDQWqWJBCoxA+CgsKTyxh6XQp6zDAdvbBoZdsr/QUpgq8
	 MyJgDqmtg18d0Bnw7L78lkwGpRIoEZRsW4bMuzTJ1PENYp4J5PlNleSwJJcmAKPYTu
	 Rm4KN1h1+YNyyqguLPqn86K4n247zCd4m4tTf9TIKnED1yYKWgUTO87oEVzsBXBTZJ
	 G02R74DzkE2UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B68A2E81BC4
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 13:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177064463372.9218.7471971428690193040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c3c97d3d6a85ad851a8678c9c54983a879c4c8a4b30a25b215e888c4b04eb7e
Date: Mon, 09 Feb 2026 13:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770644633
