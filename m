Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCECC8488
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748267393; cv=none; b=H4tXhZx+AumnauYkBdCbs+jPak6R/7HmEiynOjG6b9wXxoM20oV+8ngOhMcINpHB65wB/qtU262lyseFWK9G1Yc/t31WLzbaP4cjd+0ALTlc393ASjGD1syOZ4xiFvBAotgMbg1lRB4w4BsPSgGJy9wvSdJkpfKD/k/GTzxQ5eI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748267393; c=relaxed/simple;
	bh=kr204rouOFya8irswdzV19MemFpIwfTWaiJK7fgzrtA=;
	h=To:Subject:From:Message-Id:Date; b=YL8fyabOhnINmyK/59J5URWTzBE27R2cLstVrgl2tsKUKyVjXaqqp3JjKWCUsM7m54u2pXmk/7m4ad56l610mBhOUUWH5YWuKdrU8I4/x4lWJLdkX+FuDhrg1GcJmtCZQ4DefU7Y2XVHb1RW5L5yLjAwdww/ln/X9ReQbsAhGXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jxs1ReQo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jxs1ReQo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3EFFC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748267393;
	bh=kr204rouOFya8irswdzV19MemFpIwfTWaiJK7fgzrtA=;
	h=To:Subject:From:Date:From;
	b=Jxs1ReQo54+zYoiZdBKsSVhbfA2tCpEC4nOtzPShg0QbRRnKpaSXZKqfpOnjixIXe
	 6u76a8TwJA+2q3lIYIJarRYR+Kex93BMqVKid7OidnpOMTheAzWYj12zw2uf9YPA/U
	 M5T38AE2PJWkhmIpQVFtNX0pB1RGSxB/3q/EPC0PtHwWvFlX+WvdWW8DG5yW5Trjq1
	 GpIYIgoQe7QNse+wudJDo9XkoacsrL3TTnr9wQWoXUtzcugYVWQ3AViwzXHoTZMk6F
	 vIQ7wgDrZu3Ij0bQJ86xmkJ31Kem0eIlvcFPIqOKLzedCs8YHbRsX5lNbLB4l2jhcR
	 opauPbz1C9GTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F765C54FB3
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174826739357.16623.1225765582903958166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0914e11cc0b57f16c12498ad052c2dd1c8ff3030c2a1258f8f6b5aa7cf4d121
Date: Mon, 26 May 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748267393
