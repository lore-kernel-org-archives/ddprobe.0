Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D73425776
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789174234; cv=none; b=kIiYvRDXn5qOgpk2lpzXOgrCkRYASlG/wDGn7PeH5sUPQr9oRfkPpuBn/R2RlbkAElIUluY6ZY1RidGT2xLWyk7s4y7/98msBqpqY+rSC+ni/EnvsHIPYSe/uiKF8ZYNLivNyQ8xjkE0hwIoblu5/JRpvs1+RKy2C6PUjL2q2rM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789174234; c=relaxed/simple;
	bh=V00BMxYqRkSkx2iDRri3mbAJoGJyTOOSyrqcUi65th8=;
	h=To:Subject:From:Message-Id:Date; b=toWGgX5JsWRx2GvZny5hbcIiEvzv2VKZiqudrjaqvXYBmP6Kv7BIfkJEvn1pHcE5YM5293+NgciN6/NAiOftyc8uezVoUUSeSsM2BLtWEJ8kF3fct2KlsyR+T2gem2k6A1iNLAwR6FYe7sj0G8E3pf7fB2xkHOsg/uajb8rRP2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QepNnDeJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QepNnDeJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0C16C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789174233;
	bh=V00BMxYqRkSkx2iDRri3mbAJoGJyTOOSyrqcUi65th8=;
	h=To:Subject:From:Date:From;
	b=QepNnDeJ4BWO38fqP3eiDSswzWAuJ1POxIMFL8bYUVNuK+HRvsF6Dgq3zjWvMCZZc
	 WrVayyHoc5unS9CTBjF7+oAucvk1uQR9si+WdU57pQKru8+QhDuobK+KI4kBm7z/Mg
	 h9KPd+gGh8TkkF2ldQehotSbZp/thpkb2okQE6CdNWXTPr9k9/9ZqkGf8T5RyHORYs
	 99IS45S3j4wANwKvKNyo1zuG+MaRkx1awwW94T8z5tdbNKjmMryFQkyWPPy0Sef43l
	 xJJ/tYao+2Scyxwt6NzZyrMOhoRK5WUc+gBTw6+LYUuum62gMmXTzNL9/+KIBU9cgw
	 xvau23CrOnS7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB7B0C88E53
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178917423369.20950.16437865641748824636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0338677b1cb82fa6d7017c015e764bafda1365bfcea55f78d3e89d955247292e
Date: Sat, 12 Sep 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789174233
