Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2363E3612EE
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 20:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772657694; cv=none; b=bZyBRpRp2pwImM4+v4ZpLMni0FAfFB1cltTzgf+XHF3duBEq3XFF52IL5q81Lz+eoH6lQJQYe+21esVo/7S3GUWb4H5Una+mmpIePvRKKK/UL4E6a6MBVDscZBT0hfBHc1+Y4lAPnDoFQylkQfz/cEQhEWnwHXs5h4GHRSTGa3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772657694; c=relaxed/simple;
	bh=IL19FdWVojdkjW41Lt1NjTOOB5bzkg8+TxzA5ugSBF4=;
	h=To:Subject:From:Message-Id:Date; b=YgjWdQIk79lED3Xi2ocbn7/zW+KMdvleun6t4cEUSYwjKZbK6MG3Vbi1THgwjbeYWUWewV3LBThChBZ8KhxDU9iBgqCk0emhTr4IekxB3HbTcj+AFyQ/j1NfEu3tLL5aUeKpFmaGoQpPfaxqxtT0XeYnVJ1nyqHwZZcFJT83Lio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ogFkaOWw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ogFkaOWw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B40A6C19425
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 20:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772657693;
	bh=IL19FdWVojdkjW41Lt1NjTOOB5bzkg8+TxzA5ugSBF4=;
	h=To:Subject:From:Date:From;
	b=ogFkaOWwWgqATh//Zb6ybVi39uPO1ue8JUqqKRU89k/i4q/hJEHxIs6W99BRlfy8f
	 P269QhFXB678ikc8R1ARpyPKFm3wPP8VguOZbcbwlL6OXrUZ/iHlKoiWiCNGFn4A77
	 ekbDRuSI4iLQUeh7+tFVhxlwCKnYhwlvU569nmtAX06XXO7SBKf6IsYMZ1wG4Ab9zi
	 6RBZeR8Mazs5P10IZLukLoQhf1F67LyXl9663yImdln+BUMKY6lrHW1jnRb8DuBWhg
	 66deBiwQysrrmH/3TU9A4UiOIPMlE8pfR2kRmUmjpKLBhwe/0K+HUWoEeygLVlAxON
	 aoulQyrfpp3Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A3DEFCE47
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 20:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177265769358.10609.3466026912684644733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 330fabe925236168326f13be6fe4854b48f00a98fa72491d4a50f7413f0fed95
Date: Wed, 04 Mar 2026 20:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772657693
