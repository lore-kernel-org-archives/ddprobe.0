Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41D4D2522A1
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744963194; cv=none; b=HVgbcLIoMFdNRKvsjdZlL7egT6VGTRNslLXtLqIk3+xNJoI4EBgrQNy7haGhJYOkqtdRekvhJAi/7NAEj6kje+d2pHT2fPWt4Oq44VaIzJDKpD7bMIEnODfNs69QXy36W54ggOzKU2vw4zHdOa1ZvxqgeiTdR01K2Cg4M1+FK+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744963194; c=relaxed/simple;
	bh=I7WB87BW61ouJETDxn55ciw/q7pqpaglkFU+JWEWxEM=;
	h=To:Subject:From:Message-Id:Date; b=XD9dxq6fqj5/SZKa/+MOaoGSDAUq/qr2GD4Xrnry2oVLkW8Zd5S/9wwAqXLlMs5Qd16/F2Q2KlI/s8u6YECX9wneSKBi5b9z2nAREdQ+kHlB9W4k71RnKYyL7FwMYUADnzerMeSuWcgSJ/lmyjfsYW4vILDzzyqYKDHZI8/XvC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cdljTBVv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cdljTBVv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC07AC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744963193;
	bh=I7WB87BW61ouJETDxn55ciw/q7pqpaglkFU+JWEWxEM=;
	h=To:Subject:From:Date:From;
	b=cdljTBVv02uTnWnjkUk6Y8kT67m/60qNJ/i9AOQb0Sd9iVFbyLYcWYWdWMxITzefJ
	 OR4zyzkFFvRbYV73UwMrw9K23O7ycfjzip4hc9yXQcvGy9xljW/T92/htsQ3QWf9/E
	 Kz5U0lJhYDa/CUMzUGZwmsCMHgtXoIWu8t7c7fSCvg4yCKlYhUtwW25Ph2c36e7tNE
	 CED8cxyjtdl66Mi2GWkKgqbQ4QNx5H1zHba4rz+Om7hiQAI9WudH/ZfYZXFGgu2cZm
	 N6DruLvhjY19vvIRskPl+0yLQftDZA/qhntmwWXKwHrhFwIIoU9+EGuhKKzB3t1uHK
	 gbHrp1j+ZDKeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4E1EC369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174496319366.11634.16931230365510964126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb2c959152621446076883c9670a413ac8e9b98c59e38fab9f8db3e3c1117525
Date: Fri, 18 Apr 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744963193
