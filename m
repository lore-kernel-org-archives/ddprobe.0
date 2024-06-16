Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EC05C8FE
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 04:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718510903; cv=none; b=t5YveYTWpNr0pnQRg2dFJKpU0NMbNden0Kq0S9p7TPqPiTRuSOD6TBtInqtJ5uMnrSjWVFCMHnd+3hF8APvp31CQ5jGjs/J0+qhnjvcreXeCaGHfzNu5d96+gywDaL8v5x0JX7t8Jv5OURF8aCfWN4I5JcJtEb9PBcky6AbeFH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718510903; c=relaxed/simple;
	bh=GHFUhjLhkM86r8VmFFGXzWGnoRqodIltdGKDlusdqqs=;
	h=To:Subject:From:Message-Id:Date; b=uj9WMgUhxFVfSka7ZZCo3RVk8FL9ztB45RElP8VKPfon2wIg6j3OzIyFOIFnCCunlsh+LC7EUg0iMJJ30K80pZp1Y5gZQA3RobMO/ASexSzsqoWXhqTLJSX3QXdkE6aXuKs4f/11XPx5XbqdFDGxIUlYazTjPvee613dsxANxl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EEvEZEBf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EEvEZEBf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E438BC2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 04:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718510902;
	bh=GHFUhjLhkM86r8VmFFGXzWGnoRqodIltdGKDlusdqqs=;
	h=To:Subject:From:Date:From;
	b=EEvEZEBfDRbVhozkGZ0GluxL1UW1UwLBwpKjGh15xk+uYrroUo3n9UAK6KM8m8cmY
	 2p8eoRdf31D3eXLtTZonFJP/BAqdrGqW2TukVhhwu5mR7SbIf8upAVWV2oBUeqS5Zc
	 cUSakr8e6/lOF3rJ0BbxV7F21VqA6Y9qW45yMpJlLtMc9ulCErGIFBvQQSZKeo/AdM
	 35gBfrDiqqvCrKCvIJo7APYDiNjUwOYRbT5Vam3RGmIfqp0mexj/cma+KdgvCcKE/h
	 opUkny31adFuYsgJheJFxC7qO80hnJlBs+HoAxZtn00wgvWn1wZjrAESmlrMLU7NB2
	 OefWW+ydHNgpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC0BAC27C6E
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 04:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171851090280.10311.14461491862041848114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4bd7b9efb435b6abf44bdce3a90c03b52587e1b782ac78471c2badf3e1f6540
Date: Sun, 16 Jun 2024 04:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718510902
