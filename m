Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 298FC1885B8
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751574594; cv=none; b=uD3P6X+cUMTkBCqSvM5iBwHd0aIzvbgDcVgSMXtwjdLppPjncCcths5aU62UJ4rM7QT/N18OmJxEOB9FDraW3JcNiQCgLX+OesStlj0REqQZZ7O6tKiE/tRYud0gEBpbP/5+BiWH/whfPN/Vmi6yiOCsP3NmrFLkylOEQbF3IG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751574594; c=relaxed/simple;
	bh=JJRHkOEoflOWYc4PFY4POBt8g0DJSEq4tQ90ECW6P1I=;
	h=To:Subject:From:Message-Id:Date; b=uQ4JJOyCNL7XeI1rOlDdtu1KYiO23moEvGaEstb6vDmSb+niVVdMwLDzGa9KFeJi8OaVZ7JBiWWAsKFv4O5OW63A02MFELcbRtqFrQxtjExbhbg0vntJnwFpdVZOQbzfYoNwGVomtgYpM87fXj3iMzq4s4B3nt9ZTLwjRl0738U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T5fBPXmF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T5fBPXmF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3160C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751574593;
	bh=JJRHkOEoflOWYc4PFY4POBt8g0DJSEq4tQ90ECW6P1I=;
	h=To:Subject:From:Date:From;
	b=T5fBPXmFnwNYgLfqdnf6vCn8pNPcNchMB2pZUDLPJFgfcedT1+1NRyWZLwKXS8UyF
	 i6Ycqf9TSd7W6UmNGokTKG2fjsa5+HRG7sZKRI7KZz4Rl6qUKl7yioua1a2MKSxMv/
	 8lSZ8oZS+QTiB0xJJ5ixJ8IFlvX6Ug//XvQ/ytQeYsQllmJiC+i+PRBFLNB14Mk13N
	 huj+8R5Ikr21eRG1ufTHUv7jmEKXps8FomvIunmNghtB3XnZF009h9Wz97WbUmXGhd
	 MPacIIo6A6Q9xKZ9Dk9QlFVfafN2Y2VYbFo9E6qZZ0ygd1eFmi+5Bh8jg/71AApBd/
	 dBNAem0PlF+Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BD0C83F03
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175157459358.1096.6762517922054414946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 939f7386a190079abf32d20a8f988fb014d0826eb4cd0e6ed5e7bebce8e5d49c
Date: Thu, 03 Jul 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751574593
