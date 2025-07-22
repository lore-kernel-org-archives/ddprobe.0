Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 281C221FF3E
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753214995; cv=none; b=XXpXSZ4kmaRpdFiuC5GHf82cxe1t1VE334fysW0wh4CjpYccnx7g/A4s3Y8/cM+98KiZIFpvzIX/N6u05ivoIrvrLKIBopds9QrgsZ7jj0PjwivHaNEJsFlqhOA/Xb4kRiBQK6aVzFvdJlaLQQxZ4el+85qxiRzz1INOr1I9wyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753214995; c=relaxed/simple;
	bh=C0fr+kBNUx0V1UYfi7WDMJSi6BMnCnbBoW5ju21YzsQ=;
	h=To:Subject:From:Message-Id:Date; b=uuZ2czo4pqTEg5AH0v6HWNFNBuikJBr2Q5cI9K7pKKqkz56J4daP3hkVXqklA26PoJ2pwtvObqBOnjaj/iAhC+fdhyCxzJOYduEUSXJu5RcJYPKEqWDiVl1jX9Tr895CSFSRKjeU05yz0+FbxtX0HVUoqCq1fsDDkUoyrh52I+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aPKCqZbm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aPKCqZbm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E9EC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753214993;
	bh=C0fr+kBNUx0V1UYfi7WDMJSi6BMnCnbBoW5ju21YzsQ=;
	h=To:Subject:From:Date:From;
	b=aPKCqZbmZvncJgD3DogvQUFrUqTlhzB5nOmwLfpY4BOlK28Jzh7eR7fpl6URSOon+
	 nz6lWvQMk34D39qSeTt9boA7VWzjjmrlLlekMvM23sQghxJjIarFa5I8ZZPKTqICTI
	 YcOQw2qYWpvTa6dPng6XecaHxpG5lcMyW+wm+AMyKBBnBN0qP53rzp8W0/OD8UFFgL
	 W2CDaPs26tC0m5MhtGFAYdi356PFLZ6/mBfWEYFV4i9hPHQkLHsIuRPQk8DfEa0Ype
	 6laKrSur1woVdqUzKwoaxr8AKFVqbF93anFxfxLG9moLX70Ok2jZS9MPLoeFhEKCZZ
	 lM2f3tLoos9CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F744C83F1A
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175321499357.20103.788858760203966813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f323745f6d11f481be2d48372d11891b3ae91df201a1cdc5af552471ed00eb37
Date: Tue, 22 Jul 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753214993
