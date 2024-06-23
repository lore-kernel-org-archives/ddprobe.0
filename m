Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D5F61C14
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 09:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719133943; cv=none; b=kffYOW6vboZS3u1D0GAb6uOtdGqKYDVYIMdMJhzuiItO8dPsCowMRxjE8hZnO3JGjkLJGw2Zvct1Sxm8raK2ff9aKKq49p8F7DnbL85iJ3zDqgNGHm11lIwKznhJMmHk/hiIM8sK5jy5XsUNl4mzqX6CWw3BdDD2+StChVJ5vk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719133943; c=relaxed/simple;
	bh=a6Dh+67BDqGnW0JXnNWESaCCoZtkgu6upYi+BnSg2g8=;
	h=To:Subject:From:Message-Id:Date; b=gWRjqrwvsfQ5qeFAvZUAEhE7//C6zDEHRcqj8smTgGDyAgPiTswj/bgqCjGO55qMzgYKzwODaPLLZjhjhImMFonn9LjjDA7jBbQiowVg9ZFg9jHlX6yU+AxYtEwe/vLZvOHU2fPoOSD/wLmuXFulo8crsCVsrrXWNwmfKR2WYCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YQ/sIY7d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YQ/sIY7d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB123C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 09:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719133942;
	bh=a6Dh+67BDqGnW0JXnNWESaCCoZtkgu6upYi+BnSg2g8=;
	h=To:Subject:From:Date:From;
	b=YQ/sIY7d5f/3tR5lrkD4ZGI2icV9N42eBQQHtLDu/LX+I8CertgvkQp7DvNbobxac
	 Cf/eAagrRV5NVtb51sn2jUm0KOAb7WEnuG+nRd7zTXgEOrvk7UEhsaZ0oOpAIkWMsp
	 FraIWgKAsNt7aFKmAXrlLXdbKka8PgH9u9DVzu7sweHeixPy88BHTn5gWFRC6QnVoG
	 xDvtW0L1bNEnZXc8cZAexMry8s5QUExGldlVkvUUxovB/zGCbOM63HwG03e6Civ8MG
	 lK6SrsNO1hjSVVX9gnXeFFVBX2QrBv/SjKdjg7+Gv8/1hq30eHOT/ynZA0bmcCmPGl
	 kBr9GNhJUpAwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C789FC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 09:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171913394280.8029.2864289069096043646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0d3a03ed646d4b1656d9d5249ea834dc06db5d76bdac4c9c48294d7488df4b1
Date: Sun, 23 Jun 2024 09:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719133942
