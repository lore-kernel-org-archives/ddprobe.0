Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BE7119580A
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727904954; cv=none; b=Tp+PyM23JprY8golJBJB1IO28+nnef735jtutzmVoC/+rGqMnzFGmi46zbOCy8+vveVGyyuDOP02T+oUDuc0Eed1djCG3RbUQPYzTI9QDXvq03JY4/HikCn7IXsG3hM45N31nYa+u0EymnUVCTF3Y6tSr32fjXaGR1wPdjyxERI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727904954; c=relaxed/simple;
	bh=i6AujIM77NYJ3gVB9II4/zKyqITZ3+979X/jD9M+lsE=;
	h=To:Subject:From:Message-Id:Date; b=tv8RWuDGFCrTGvTf407eQBmcxGv+d6ZgwijHHXb/lUdM/KGlj7FffWyDG05dV5b0lwFqmi9o2P/Mhwbo4opaTb3PhqIA9u8cjvEjXBgfq/yvyTWX0h+5HbK5xDKWRA05ndvJ9d1oerL8hkL4czfVgCYtS/xrEYFgdJxdWdO3lu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ukcy0FA4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ukcy0FA4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B105FC4CEC2
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727904953;
	bh=i6AujIM77NYJ3gVB9II4/zKyqITZ3+979X/jD9M+lsE=;
	h=To:Subject:From:Date:From;
	b=ukcy0FA4v9Je4KZKKvF406i9z7b92Cc8dc++rxzm7wspPTJT7INTKtOkuQf4MHK43
	 lklmgSzS6Ak0RRXnFMPM0B+FoakGQ/k2qNX2oFZQwbm+zK96Ve3TMsLGXecLuJewNg
	 MCLPgGPDQmw3xTb215YFOr5Br9DpNd+1Y1Q66XAtM3HbJ40RdT9X69S3uZjOEB/xD1
	 SKIaQhDnldmx9Jt/ACsCOMnhBxKHeRDQqGi/COFKz0AZHBWETJQXpQQtx2/vN6ATzi
	 RFa7u1KuMkbhJFH3K/0oZ7RTZD09H2ha0gVnNGxzp4V8F1p+nkShJFCBRYkJvIFCO/
	 ptNCYActd69bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DAE8CF8540
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172790495360.14847.18139667297115135188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 044e86e4a70a385c4423a63f841d3e1852f97580305e04ff2d4d9423effcacfe
Date: Wed, 02 Oct 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727904953
