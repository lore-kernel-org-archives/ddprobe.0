Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 342801E0B6C
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725468954; cv=none; b=jC4+D1UeYjWtB9ibz9ZoHGKLOIyIwYC+wFH1EnlpfyQRA3T4Ib7M6PAeuS/Ow/CNuVZ1zJGrH/Lpf27Tla94JS34Yy/I22jgove+eCijrmf0Wo9xDkWGr2N42f+HeScSqhvGuTxwt+tw5hzROVa8OsoQRJIyUrJfFgpwv9YdJLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725468954; c=relaxed/simple;
	bh=DkHQJjFbo9SF6v1hs/yU5fPwnrhTxExVq7MlNTRa40o=;
	h=To:Subject:From:Message-Id:Date; b=ZCk35T9JKFh9qf4wtA+B6lXLUCSNTrzUIZpuGG2OY13zqXZ09tM4wICtgRMLv4GaF1eGTu+S38d+vHOnRCmm60CuwGngDAwHmCsyWuVjv1RebI2jZ19m+Fk8BgP8Sq9YKrkjU++lVii71MPFsCQ4piXnathn4EILg9GZc+w/FG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vMqWFkBZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vMqWFkBZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0F27C4CEC6
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725468953;
	bh=DkHQJjFbo9SF6v1hs/yU5fPwnrhTxExVq7MlNTRa40o=;
	h=To:Subject:From:Date:From;
	b=vMqWFkBZGIcb2TLyxdQiZGXzU7gfy13Nv6oscJqz3Zl8OnE2PdqSEgdzHv2PyDkq6
	 x2To+EeiKKVbzoi4+zTi8bztrGTe0Y0ss0rOsSNfNR1Dqi1seLI/zvEbWLgFlH7I/l
	 Z3us1NDICsa+9+uj9kkAcZKRF38PC5G62CDSByZ3lU+WevUPfJ7ulzU6mAf9EYb5Js
	 4uA4f5ar+8vxxnOvNeK0nbMPS5eB8bNmTUTYqzIMs8jyplMNhOA5As3m7w3gnnviLZ
	 OLhVBf2IrvwE2q8jpDC/rNitBWwHq9RcJphNxnRwh+0K4bQAIWAPezjKJQ1Juy0YNr
	 OWQa0RfRl/JEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7B6ACD4857
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172546895367.21225.6589736821793994234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36b611e745d7b5f8f95466c17807387b94f740eefcaecf9d7fc5982fdbf98909
Date: Wed, 04 Sep 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725468953
