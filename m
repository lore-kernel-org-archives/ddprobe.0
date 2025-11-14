Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C97082E1C56
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763147393; cv=none; b=QryjleS46NTU87UcrVcP7/h1tJoNpJkUqMEHi05LZ+wTBR7LJ4fz4D1QeIdGEjbadXgiyPWA/Ys+jPW1sCdc2P40/iI3lSzO29T2edBUrf7suRaXVEm0PxIF2wE6Bdth/xluGa88yNCC4RYVYoLe0ofY0OZwNQyEF4MgIo40gW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763147393; c=relaxed/simple;
	bh=TPE7VQy1ArY4HGontySivFbecyBx210LU0a6Q+tfVzI=;
	h=To:Subject:From:Message-Id:Date; b=oj/jx6DdqjzGBFsDYa2mOA8FhFxwHVrMgQ7/q5FyKLnU31wMNoR+JGdbU/wIS7VQMgM3N5nKl9oQvHrexV23kgGzo1iCQZqCaVnmoKh6ABJg3rSzQBnjRAgZbtx9VBAV+hcCN3skYZaJtgrgiDT1H3jmdgUKW6rmvJSD7xNX39s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qZQP1cBJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qZQP1cBJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F926C116B1
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763147393;
	bh=TPE7VQy1ArY4HGontySivFbecyBx210LU0a6Q+tfVzI=;
	h=To:Subject:From:Date:From;
	b=qZQP1cBJqzhXdeuEDlljFhl0afKBZCBCThD92F93c3++IpIn7OkKQKL6ovwOIHILz
	 rSnxk5PwcQJ6IF7QxX11st67dbfzHwkDWMgMwL++cR2UfktlReM/t9lrPY1Eezmlr7
	 hSrbsECR5wxJteOBZV1PxhPxWJI5dXZ998Ck+eg3fE9FrYXSEiZFtbff2nTpyq9tyX
	 US8tuf5dNyhDEJsmqVT0o31H+wlf+RGXL77w4OHDCxgZ8mGZTWwkoBXH6Yq3NDTp1T
	 i9ctbGzRGOvId6mGvFa8KrmDGY15MwBpDolOvsNVxuUzaDxG2NKvwsFGLLIqP03Njn
	 w7LA1JMAZgprA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92182CE8D76
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176314739358.10778.16897020743172471107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d32b36d15de6b4f1766ec90e0274c60c68fdfdb6c2f2ff644b1a81375f2ceffd
Date: Fri, 14 Nov 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763147393
