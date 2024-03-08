Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E88D51C6A3
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 15:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709911697; cv=none; b=iFLVO8WIB1tUnvmSlJyXytNwQhkeaY/m97UXRRVJTAoXOfWMVAUF1l+rV4p/IFIchWDO1Top+k2SWT+ud1kiMfR3Kv5uD9OyhGGYlKFGbNNVn6eU1YaQUfgkjvsX4QZ09E/Vi4DFTu9WGiTkr1hWxYR/+sql2hr+nxlNiE8zB1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709911697; c=relaxed/simple;
	bh=If89agEA3U755ZgYp7FBQp9Jx5W+SiIRmMvjsE2WbuY=;
	h=To:Subject:From:Message-Id:Date; b=iRL2BpwXfxnTO7/zTnvcvR94eUq75Ss6rcznd/NblVk6O1ebqOYzEla2fwtrDnPK5mUr1UJBe9KvyxmUxXnOfrD5wbj7Ni7DExyOZS+6GLv9yZB6x0tVlxdA+B0VJ1+pI/Ac/ZvzSB6QxzPM05knM6/iu1cSWAn9AFwKGF/Utrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QfXVNVDa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QfXVNVDa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A681C433C7
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 15:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709911696;
	bh=If89agEA3U755ZgYp7FBQp9Jx5W+SiIRmMvjsE2WbuY=;
	h=To:Subject:From:Date:From;
	b=QfXVNVDaYbI2o7Rsj0a2rMoHQceImIrkUuMNIRWtaRJXvZjD3GDEavY2oNKB16xSC
	 kgvRGORsOH6AuJ+5ghAHkvO1+kLtL0M7s/oN84sNpoj8XJNSv6tvrqBtMGgWp2f2Da
	 5KqGgBz1BUs9QqhTw60G8+pkLK5jWjDO9ZITVAQEVfdLIxHlReLGWnlGHqlH+xk01q
	 xkSi7qp4fDq2kyipQFOzDB6jhD16Tly+O8tM74URq6EUjQ4fN/2i3UI+2vkOOvHHLv
	 fKBISttTq7uwMMa+1xtOAfbXJYtuyzzGoZQYVShARq7YHhfWjgyweLDopVlGFA6yo1
	 YTv/21GC1i3Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E50FC54E4A
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 15:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170991169637.24908.6361879762301859534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 210cb4af183d2d4ef1c570b1d61ea57cd9669710c67930d622bf1639deb9bfab
Date: Fri, 08 Mar 2024 15:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709911696
