Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 422693F4115
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 18:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778695234; cv=none; b=E+RI3I2hZ9/kVbRMYOJq3Tc2rB7xTliPHvGliLnKkAxGz5VVskqe40e4xUv6lJ4E1JTMYkPj7GaIP9kql6lV3VkEg7tlhhthW393AZJ5jNbBD+f9LNKmehpQf9t45QtHS9Nx040ejmJ9cP0Q8L+POtQRImXdiUqhgV0SxCkLwNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778695234; c=relaxed/simple;
	bh=hy+EnSBImVD0SGqdwdgfhKnnELHVBJ4F6enejanGS0I=;
	h=To:Subject:From:Message-Id:Date; b=WCs0Z3iRkoRo49icBfTkCPNWInhVs8BI0ZmiSXxyhApyLtOcAhILH45sW3H3x9q9p9Vda1Bei4IYbTwLLG0hJx16VCBYSu0QeYECp3LYcPTGvaMWlDXtzhn60QR0/r8jJzSj7JqkBUKxBHHzTt3YpjPLXFmakxJ9aHoLxSWypFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mYpJy28y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mYpJy28y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6CADC19425
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778695233;
	bh=hy+EnSBImVD0SGqdwdgfhKnnELHVBJ4F6enejanGS0I=;
	h=To:Subject:From:Date:From;
	b=mYpJy28yiLnkQLAxsyTAKUyf/y6V/iYVJUCHtVscwf5xOkOG3a6XdRxzQCI/VL7u3
	 O+CqdXkdcqvdQLUAPEb9BtHHJqxRPeqlU0Vi+QjPSdm0cZQQMWSFpgcRjoMquJTg9r
	 B/zdax0eRTR8w4Z+bS23wZdqexCnGU8lu0NJN2aeUZ+uezBTllyj2N46QzRauBoKJx
	 C27DlZjSWO4pcKQXaqOivg8KUmoe1S1ojmWZP6u+hz8NINYXVzxED00VwOo42Nodjx
	 pSUMwel/clUyVsP8Xk5z7I2wsr2gp9okkrjRfHsKx9yOTIimAr5OyZiZyiwtLLlg84
	 u536AgymQKrQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC20ACD4F21
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177869523369.5723.784164011066283300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ee222146af50f40d2d327d88b0085a10a0838517e6e936fcb2148defb5f76b6
Date: Wed, 13 May 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778695233
