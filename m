Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2522113A244
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 22:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764280974; cv=none; b=iIA+Tbn0IrsRx97NMZRwvIt2+mjnUEul4fTFXtmQYu6rNpu08i07xZKB3VdO8P/Gf4IwOW2x/Uo8mVlkado7mHeMNK5iDu6oDdlsGQ9yf26H0L5DRA0Y6STXFB8O8JfPSOyD8Ria+qUz2uxfkgX5zk6Wt5VUK/TeJrP3uZU68Ik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764280974; c=relaxed/simple;
	bh=+e7f9jBFy1JXR28FAM+hq4hiMgKhM9kaARxwcPQEn0M=;
	h=To:Subject:From:Message-Id:Date; b=P89m4m3Jzav3KzyBBhwAENZkxB3+4Pw2f/ZZuXdCosZhSzGjXnXWjVX2xipDVKaSENobvGV1YXOyPf5VH/YM1R149RZ736DRYb8LoNqu2Ujso2n3xcAvEP2Kkgwu2bf5X5gDbM23dAhzNYhqetej3hj+XJAtqPAIS3rwQBHjpuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FZHdeRIn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FZHdeRIn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3385C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 22:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764280973;
	bh=+e7f9jBFy1JXR28FAM+hq4hiMgKhM9kaARxwcPQEn0M=;
	h=To:Subject:From:Date:From;
	b=FZHdeRIn//xeMWIkqnqIwIxuU0QnNBLkO7sawTyZ4LEvI+n2Ccg8KiBcaFq7xOmrb
	 kJh3ZzAv5g5ooY22kErQrN3YxmEQRG0N/oLfFrm1E7LLD/+3lZUnFipo67fQhFOptV
	 l39I3NCSvWtVzvsmIZTx1noPjK+RBk2hSibNr8zdZruef+vmJNEIQ92rMXsfGr3KED
	 7tRtk6rqKOMCL+7+AVpION/jgUUHZ2ZVo+epVR3AKtpWDK1+KRo2wuIkLvOjt8u4FW
	 nvOh7FzzPSxapmzzIzNTNOb3iqf+HKQKkGtGigyrrcnUcBc0Psz3z6s2NZOUCSMkBI
	 FY/ECpB0xIjtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F08D111A8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 22:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176428097358.31011.13017305108488965296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a973883ab2a6d57cb9ab3efe2ea785f42efc6a8c3b06189e361b2d4e12bee60a
Date: Thu, 27 Nov 2025 22:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764280973
