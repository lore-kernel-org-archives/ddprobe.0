Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B0601E5718
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744186794; cv=none; b=j+vI03bS0yVj7lRHS5bB3F8R5qJnLIOaVxNaBXuJhoH151buOOY7pgCn1hWILUDFZ+TreasneLU3hSQH3bmVw+01ll6/zxa0KoffSK6fW9pBVz+Nf6vUfG/9iS8d2xPU2uGWmgmygkE8dzaQu5u9miZuumD5iDS30qmlLjfIbGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744186794; c=relaxed/simple;
	bh=zWNQS9WFS1QQBzf96MNn2b0qj9cXpytYlPg9WkFZOmo=;
	h=To:Subject:From:Message-Id:Date; b=FUmL3QoBXUoOcKxQihlKSmDervj4/r6LUXOGag5oDdI9133KO0b4nDC+DpqsLteWjfJbO/4ifV9EzyrXg0FuPe4dydf5a70bUYgeUhUr5ZeYbYfhK6FSRNFYCtbkPKgpYcEm166rea2dspNV7pkfHri1K79CdnmE1FlxuRlUKug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e8/OHHxb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e8/OHHxb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5AFEC4CEE3
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744186793;
	bh=zWNQS9WFS1QQBzf96MNn2b0qj9cXpytYlPg9WkFZOmo=;
	h=To:Subject:From:Date:From;
	b=e8/OHHxbTKj0XWm/QrSwq+Ug8L/tMaDyB10L+g9sCSFZDjd9QTBWFar/GX/hMd7yT
	 if68PeSW7sUuovgSbqe44MIGUdRtKpFTYZR94w4mydmW1KdEu3CnX0Jx9gC/9Cfb8S
	 7cKc/gmdoLFvqQ1yz71/9/CIHpwqPTCoyMBxgj9ZIlRT27qnVX6ESZlSbLKjghW8JU
	 9PC31uZPLelCR1YWwgx2LOt0Jtq1zXATSjgiIiUB5AbNUt5BnHc7Lfw+ZNqGHTjkqb
	 aTcmXB+XHyB5v9RAgzd+5jAs0nhjSIq0vGEDYHwBcJLUU47REgY+3kbSmIMsAFlQOy
	 og1aMTgBA32iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A79C36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174418679361.12648.12274677591024765248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c08c4fd1a1e064733c56eac5c67a18d5aa2e98e472f7d2e28eb37d636e8bccc8
Date: Wed, 09 Apr 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744186793
