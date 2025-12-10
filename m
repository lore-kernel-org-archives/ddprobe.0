Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44D3A1B87C0
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 03:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765336374; cv=none; b=KtowOwBTNpe85Lxbaw/zVnlio6CijxbYr5RZB8oAZ/D4KibD6VejkwWkyG6rpdJ93XvSsu+4OYJN1wMBCX1MLDVUd89hi5iaEqUabIDnZOQYskFK9R6mG76nGNyHVGxTLzB9zth08jT3ZZEGGxLf436wvRH9AeooF6toNyaM0WY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765336374; c=relaxed/simple;
	bh=qoFH6BBItKfDXLBZYTeT/oxhbmlnNmhzFrA+Je8dIA0=;
	h=To:Subject:From:Message-Id:Date; b=mAWWpJUT1xzvYSQ+gPStXj3lWUfqw/Tp0ENoca+cNAoOJf8KUbUu+VmOYC23rS3r9M/l8jf+hmIZhCvjBYA2OvlJfDkySThCezfFGG2icorplbPIjaMFdpOdEE1+zybZWUyclw/6fqdIhH0rgdMbMYTXTQitP/MhnhOsKIFwKwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hydOP3Iv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hydOP3Iv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7A8DC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 03:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765336373;
	bh=qoFH6BBItKfDXLBZYTeT/oxhbmlnNmhzFrA+Je8dIA0=;
	h=To:Subject:From:Date:From;
	b=hydOP3IvZh1L3oGwj6vm7Sd/JwDHUwPzsKCujt5SOHAma5Porf3sI500kQhBXJrYM
	 g843NUL4Aedppyu1o5EN/2zEJBx8DCuzsmiS3mPb0OqTYezBVTJIrZO19/7b4bRv/M
	 C/GzfLLAUcmnl3Kw0edlGkKu+M8HR6+XtYUV7afiA7/php9Qgg1W4EiQzTTtrY1Cic
	 eugET8bflyJ10LQk8hf4lQjIu8sOBkDjIGLvmDH2KQW8vh7vhTqCCsuHLpz3boT/9V
	 n4YIdd62Z8fLCI+OWgj2Wb6lz43nQs0wq78mI4r1b0RSizmkBLWWoQAafHcP6RzRCN
	 +wih1hNQndgog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A58D5D3C521
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 03:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176533637362.30386.2807805081682727613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55ec7ccca1ea52e25a6da22146bf5f7fa88ca754933cc67895612aa4f3723b7e
Date: Wed, 10 Dec 2025 03:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765336373
