Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F628330665
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 17:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771436694; cv=none; b=Y5F/ZSwPasFE/0SwtoByATIESKgxM7rSMPo81Of5cvNTnJjM4UXk8IQ8dX37QBMkRmbzOL/ssSVLS/CYOvuB3SX+ZIwgzlpONOFpg6pxGeIe+W96KJVI8waiTF/2/wcOcs8f1fPXm9Qh0uVahv20p64ll0jIa17aeefswpVlv+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771436694; c=relaxed/simple;
	bh=G2a61wAnYMQMGaj1MMy5Cnw8l7hd1/bGYHArwiLTFiM=;
	h=To:Subject:From:Message-Id:Date; b=cAbJC3c/7jYsjZjpoJBZecF5v8PCLo7fbgCr19TK8UpMj4nAPlSQ7xNuWJbGtdMrh7HaFhf2V56h+hXJy13H19Z6bZOTXsEgIe8jFuMXBBxV9x/kR7iA7YSuCdrPYSJCnUcjnEyevqpqycOQLQvV+kLeXX/Lp+TY/LJWnLkig4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r+VWFd0m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r+VWFd0m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71E5C116D0
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 17:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771436693;
	bh=G2a61wAnYMQMGaj1MMy5Cnw8l7hd1/bGYHArwiLTFiM=;
	h=To:Subject:From:Date:From;
	b=r+VWFd0mWYHlG/ufsOdTxcY1GWTZ7Vt0rrT7gpLspnpuklWMjoAAt9v/h7GFcwXi7
	 TsIqHDXNEyG0Gb2p3ndc8RfOQ6pOgOzNbDIGwyTRaKtwn0QyUnLOP2cicHXyffcg2f
	 oPkVJufW/kdsS6R21xnqdSNlbPmTJGDuy9GsTLXrucITnXWiBjkeFO7kYERiFv9bCz
	 X9PQLNTfVilV5GRmuqTXCqx0Ib+Id2yfDImt9gkkBxTBfcCsHZczNPpDW47K0Pkxnv
	 TeoZyIOP/0cU8z4HDRp81oL0ZReVU3LKHesJVtvHhBopWfi73mFy5KTr/C7d9SAQip
	 mAckQWv84bd0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9268FE9A02C
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 17:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177143669359.10954.14810092397657791679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 721d41541f130a193f66c4f009d16af89c269be312932dc248dc9b8d2465d181
Date: Wed, 18 Feb 2026 17:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771436693
