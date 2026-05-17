Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 274A8358363
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 12:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779021634; cv=none; b=bxxbICjecr2SO32RUXlLWW3zSjIGRKT+/QEbVu1NfFY5QtjNBIClWxrxjnqZ7pke3gYpihUxO2BhKCHV/0SP5VwE4am5oKnrgM0zC/vuIRl+kVbNvywS0AS2I6MDx0ElVVH9CCAaBqbxoCmeFOTbOCsknUb9yhbD2G+eOtnThso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779021634; c=relaxed/simple;
	bh=UjmPZnbpGq9Xc4IkJ0kdWQc/cEbNp+i6ZrHY5oxMPNw=;
	h=To:Subject:From:Message-Id:Date; b=cMHTkXLjkAqNIWzJaBfgspj8pasftdJrKhccsufs9yCMD1iPMt8RIDkgiF/Yo2Ti4wRNG3wWPj9UuZ82LovB0+zcxzeGeipnGT9lcKP9UteEZgMKJNUr7k1iESOuXvklgtLuN7yDj5vib/PRTt0/+me8/DpS+A+kDfXrOi97TCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=btroExmM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="btroExmM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C42B3C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779021633;
	bh=UjmPZnbpGq9Xc4IkJ0kdWQc/cEbNp+i6ZrHY5oxMPNw=;
	h=To:Subject:From:Date:From;
	b=btroExmMDbeQNKeWA+Uj6LxxvxZWdwvLGKXhvbCGhPGnUBGZVXNhs0C6wl+XVDp5Z
	 LL6Sc1jhCWCi8f6wzSyAFG9o1thgGDxSAu0Ux9xHZ5gn32D1JP51NBl9lGLXJL9evB
	 5ATKJy16hwoSa+jwuj/j4/IOgjZQ8yLhi6Vgj3SaUZfrFZBcNTc0QFkLFjlzXZBoqK
	 eXCZkkxnhvA8IgtZLXCxV9SxZfMYqJHHrMBHkgMWmJx3v/jLDEMgOjPDia/BShHdvl
	 PfkS6atHtmw0/YCR4xSxU4/nqOGWy15TxTeAbl4YRht0MoZnrplDPQJP0aDpjzCr8H
	 yDWpWxgwNj/gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE86FCD4F21
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177902163369.27062.16749366281630145599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d9cac48e2d22e48cbc17898246634d698f22a8f2247e26b9d895925291b7350
Date: Sun, 17 May 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779021633
