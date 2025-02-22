Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC271E489
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 02:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740190734; cv=none; b=Hed9I6QITb2yGfIfjQxaS0LV5eYZQR4HDAxPLd/Supx7bC+WqzcTBr3Bm4MdHD/admdGd7NtZWZGR0tOcotqGhM1B2hDyA6yKMjlyfXgT7CGjGl1VaBkxtr4oqvqUffhinKmb3AoQpFmVCOL8WTTK7izBQ+mQDVDOl0oQE1LQiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740190734; c=relaxed/simple;
	bh=hGwhmZMsO0gKCUXcMtccCjW3lnbmag7fC74osUnC6+4=;
	h=To:Subject:From:Message-Id:Date; b=nfdr7SPbtyEgQEqZqU2Cy0Zy6J7nAALd356s1d+GAgG5y4qKURy4D1VjAZNi5Qw1oFCugK9kLh8mKolGpG35TwSAmeOuwSBXPZhbYSyB5JovhoXoh9itAR8aOXxo/DD5SsVRzT02Bmur3uThWOrvJJvP5sQFvSfbuXb+Ek94iXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ukWWO/J3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ukWWO/J3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBFDC4CED6
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 02:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740190733;
	bh=hGwhmZMsO0gKCUXcMtccCjW3lnbmag7fC74osUnC6+4=;
	h=To:Subject:From:Date:From;
	b=ukWWO/J3/wH8K0uKo0azNSqPsGEbiQF0EeouBe3pdfqPoizcteqIUrSrUhEFiJ72u
	 vuid44HiYZ6aF17pWqwzfB4EhQZpyYjVdk/GWaJL7mWY2UYOBuFM4a/rPUN/X9RMyG
	 iI2oMvh58iALWwarn7Ois2xqx7db0YXhiio1dO3Zxixe085jfsyrpigqN6mZo0Pn34
	 2BYnr7O1ny8EMTqK5E16cpWgyrRvEUJhVNdM2zMUAl3NNqUSX+DxRDDhR2eUVh1o/W
	 OzfjEXMCs6GMAMq6pYUM3KDIO23IDigd9LBukZroxecMOQrbhsnDjWUrBuI7OgiT/3
	 wWl3Yye7nS5Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E924C021B3
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 02:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174019073357.14290.12165815463086848518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c3c481b06622767f606b7e4754ac6f2f51f31aedf295dd29d84d7577a86333b
Date: Sat, 22 Feb 2025 02:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740190733
