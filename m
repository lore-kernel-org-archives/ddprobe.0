Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2860918BC3D
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752944994; cv=none; b=W0fBG8RuQa7DkWv/S+EYVYlZJyOkyVkyKCp1uLhHeW39k8gX4upWrUxF9ntUuF8PVB6PYCp0EStsSsQVk47DL53pGNvhOwkuwxSk63H2riASEiei/mTYhD07YI3qdz+ZsgkpGkTj5w+ERfZHGmrtGlTRpszGlXVJZNfIGjj/G/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752944994; c=relaxed/simple;
	bh=g9go3/ZYT7GJlGegcWgR2bamAABxe/jq1qgDfzN87Xw=;
	h=To:Subject:From:Message-Id:Date; b=cWTWMYy+i+iFAyXqxjULXWEOK2CtslJENe8VZ/Y7Qf5Mj+qAL6PfLqQN/oSDimqlf9ThC/551t6ZjH3QWXuHWOla9EGGIsl/RIDM5B+PuZugimhKZqiSH6V6v9HzE9l5aX9vJfyGunF090IBFIlyrrqa2DxXBrtUV+a7+bsVvkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DWZn4CfW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DWZn4CfW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A339CC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752944993;
	bh=g9go3/ZYT7GJlGegcWgR2bamAABxe/jq1qgDfzN87Xw=;
	h=To:Subject:From:Date:From;
	b=DWZn4CfW2BqBRF7+GukRFTs1N8soasgaHe+yrzkSOZ0s73Wr0PnwPw7EPo5cQfagw
	 QQHtUJNAa9K8ggMRLoN+m2xswYiTNVBFsfy/rb9cqQfQpJBQcVSW0H7TZeFMag3zZ+
	 6f5o5N+YA7q4VISqudd5byYGpshhO1VmQgmQ2VmeaXJiAc6Q9YTuT0F9hwx8gMUpJq
	 /q9f/Lp1T2FFuAC8LbnrXctdB5DscdmtjBCdhOJBMzGcsnJjydPvTkLLCgNA0CspiN
	 FSi5Sr+ioVe27lba13B5p/HrXvV8EFghxTJQQJK14JWbSHUtZ1wCGEvGOFeb4S4Bsm
	 jaCIJNPdzaMbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945DBC83F34
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175294499357.1942.16461945101882850226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a649697cddfc9c0fcf1638ed3152c1d3f1c31e37127aea3d572c246673add77
Date: Sat, 19 Jul 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752944993
