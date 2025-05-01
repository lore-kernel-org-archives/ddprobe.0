Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 343E72153FB
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746125394; cv=none; b=EIo1uPIkuC2xYdaCUCwMNoNLzZOrYCnpu7Hs1deNhyVhW4npAIZzGpYEl9jQLY/MXvuvSGMGuwDSmViCOVoochoIoJnW/gP1Spg7I/HoaMIPiLpn54wf8Y4BUkwLs8NEifZqiLMKT2nQHakiiq0Y8DJBOBL9lopr1gmDelaTi0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746125394; c=relaxed/simple;
	bh=xtrBdQa7HOS5MhEHiJ6dqcTTzbzoS+BbmL79QTTZpVQ=;
	h=To:Subject:From:Message-Id:Date; b=oTC7KkCqC3uMEtgWN9tJJ2aPbz5PVuwlwXiNr89TnNBKQVyAgUjcRcqV2C2R9ICnSmNK63s8EXp82Dd8Nm95WXBTL1Q0ZYGFusSZG7dsOtWMbGBL8OfcD/jnVXE350mGHc/XhG3Robrbx3esLo32SWz4FMeC9OpRyQF63dla/zs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KLxPYD/E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KLxPYD/E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF0DC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746125393;
	bh=xtrBdQa7HOS5MhEHiJ6dqcTTzbzoS+BbmL79QTTZpVQ=;
	h=To:Subject:From:Date:From;
	b=KLxPYD/E7A++9qRqOOWyBb9hmvqbgKQbsI5nxN3jt96pjGJ95JOLbdzf3YHK/XW5i
	 ul+SryfdBYt4rK23kO6gjCVCeybIiUpBQtv4zGtm+fbxm7K5kTGWcBYjjMeu8fz+D5
	 F4MsxqDYUQyz6QTyVljO7Q/RXF/64mZT1AD8CH9AvoXq4Udx1tR1f3deTVnUP7B/bf
	 bz0tR7NfLy2fu0vMHDcQQo9LuJLF9zDER6H4MvhCe7qZlk3VFj5uh0fXP7JZm9ORgE
	 PtLbRkngAOGQOZTs6O7+hAeuJd1G0WNvUhbVYgBYrbwgIJ0Nnt/NEg/93+a1XnXdBW
	 M9suFPy2ZSTNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED57C369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174612539357.6816.18055601146412355190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2e8167c4e1acf01a958b2b7b7908fb18c014b1f7733f9f85b3c19e0d6b6d9ec
Date: Thu, 01 May 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746125393
