Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B255382399
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 06:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774853694; cv=none; b=DNQpZjnKcLCryDDk5T5MeXSIp8KPB2/gkpSb449wSkl2WcILiue1N35la6LfQNi2J8oJCU10WU4CLcn8Gzr5KEUZorvkqix5m6R08gUuDU4Sqr/gENuCdwjoXMEw17On0Jd5u0MXKGU2pjVljruu/3mI75C15eIl5eP+3piqRsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774853694; c=relaxed/simple;
	bh=9xmaDMMoqYqzUBZGhsY8FKMRek08I401hm+wZw4rjpQ=;
	h=To:Subject:From:Message-Id:Date; b=t9Ux3duT/ZDcwHMiybTQF5QcHeRXNT54stKj4oHJcnzK/z8cEqZ4JAmV/sdq+m+O2BDhdsly6Y7AAAqh/x98asRhQ0wfLYyihCIhBX0K0W4zwPfjXTG5MYhKklZQ+fbitDVvPrav3gLYvuvqtRRVU0nEfOSPlK58Dzrt9BX2qjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LRaXVK98; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LRaXVK98"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E05C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 06:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774853693;
	bh=9xmaDMMoqYqzUBZGhsY8FKMRek08I401hm+wZw4rjpQ=;
	h=To:Subject:From:Date:From;
	b=LRaXVK98EAgq/qlvh39TBTDWynuxpbtwNkm52w6RZQHFby2sURzHYQ/ae4ZPtXZIr
	 Z4+p9vnrfjEc1jOwZtUl4TQoIONpttprxw9aBBjA8I8/7O+qwAygYQq5s2M2vRGh+o
	 EX6sIH+g+ia3ozD4dDifxkNhXei/y4hp8oDZdaQa2BTPlSZSFRsPQXjSaFAxwdahuo
	 8Z3NbRhEIzxxvj28VAj1ZM2AyT9K5xZSNHn4rKKIZY5jg8XPO2oEVhTEYUff0Yo+MD
	 Vi83AdBwD3aj64cKnjZvEwmuWp4wvy3S0OVNWtg70teo3XeItIKtTf80l6tG+rkPaR
	 jvq0HK768N5hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92154FF494B
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 06:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177485369359.29094.1253902406205794248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c997bca2f1e4a0b25d18e2baa92b42d8c2fbf909d9594a55330d54458b8fb76
Date: Mon, 30 Mar 2026 06:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774853693
