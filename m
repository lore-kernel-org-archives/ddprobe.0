Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7038318EDE
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 15:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769010833; cv=none; b=OQ0E/MmWfU0oBiQb8ieoDmSntUWBmQnioBMzgBtGMKPtX/4qU7p2u8189usAkUbArUkmPUe1gaQVTjZyHOB3MaXObfDlwENY6IyIGvutujpujI1l3JvXMBE4axnB29obJL34qIMlOBbCaPi3xZxwrjAYLAdUCjqUj3H2wjvdT6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769010833; c=relaxed/simple;
	bh=VzJ5Z6nLZxBg9rp7QZLN1JRr+JBlzkVEuFGaNzd9OY8=;
	h=To:Subject:From:Message-Id:Date; b=fOl7zzOsEVHt4KekVPm9dwksnRvlzfgkCUPXECtcF+pqTxBRjtQc0zQpawB5NQocaSIASVoNtLbI4QaVOyHlEb7FsnW/vD6zvofSgcuIkLiOVxPNAdrgGwcDzLiJ+k0LIDSJZron1zXhrQ7qGKRaU0PkOJ3zDDqUeB5SmkdDyWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HmGQEt1e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HmGQEt1e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7075C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 15:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769010833;
	bh=VzJ5Z6nLZxBg9rp7QZLN1JRr+JBlzkVEuFGaNzd9OY8=;
	h=To:Subject:From:Date:From;
	b=HmGQEt1eiNsR2CKi23yzewOvywaeAkGQkklPG66bFOh+bhjOnb+XsKzIJtOokoZ0K
	 ksSKGC9Y0WzgmJwfELZ6T6e4zYIEHHosCjwaoFhPvszQD57GrgLsQsoq2viM2tDlxz
	 lS9cZarT4N7nb4tGPz3oiJ7NS8cGQvLfjRkGZUXyuJMtx2HKTA4gWAxLcntoywviCg
	 Xe4gxrpPivR+61Z/t/kujkztAiLVXsUmmDUkQzSpmU9l87Rj+IRK41eYarxMn3WpKK
	 C+dMwCuaUGAjdVUr3NFKfGJJ3soo09CkmcCfFLsEUuykiBAm3D3AEFLKuqwkKP87qO
	 Zus+gkAVQYY8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946CFC44536
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 15:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176901083358.11809.4675714989448247041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23c2e01a5e82604ada1646bf10c3635ec6de0ba23612f0b843c7b2245dbe8a84
Date: Wed, 21 Jan 2026 15:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769010833
