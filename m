Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41B3E1F5EA
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 22:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764109374; cv=none; b=Zj7lcfUNnFU+8puXmb52VIg65vasgpmFGD+rgd5T51NgEYeRjrKzhBFb7XbR6xrToy9Vv3EccLIy5SuxHp0deHBm2kZGGnvdkTdmSM7onPh7nE8UJr++geAsX7u/mPfkh44DbBYVWKfOSkU9UovqdtwwlmnwTi8THlNhGyxRKkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764109374; c=relaxed/simple;
	bh=Vl910KJ5U7vFKSR5A54J0dKLps+Zhqns9QamymHuwUA=;
	h=To:Subject:From:Message-Id:Date; b=pM6+FcEfdkiXnbXBP6QVaUG7ypeyrgNnVEMvnrur7jBHvlyG0p90b7Ax5+IqJVIeDkj8p5aBnZESJcpbgbPYGGWyzvILiGvdbVZ7eTGXRI8xERXSQO/DEwOzrK/QOwt1KrP4fkDDT3X2j47zUegQQeWbCqpq5T5cbnXunMGwKlc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p5z+sldQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p5z+sldQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0518C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 22:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764109373;
	bh=Vl910KJ5U7vFKSR5A54J0dKLps+Zhqns9QamymHuwUA=;
	h=To:Subject:From:Date:From;
	b=p5z+sldQwIy96MBq9Ww28yLxSwJ3l+0ZIY2I7B3smpD+bJrsnA4DYTPzZnf1oA7aP
	 uynCuTy7RnJYQxbg6OOgbekFWXGdvIsc48fUU4Hy3nZGL1TeTpnnzkJTR2gcsC6BsV
	 +FAYJfLZLTw/DjVXBumBNgD9wzQNJf8muABGCWC7UmXXaMtBngA/RCdZdnNwAZWAtA
	 ByQAFHj2jPnLmX/X9ET77ZSvgh8zY9YGezXAbnxCOsbYqpU8I8NVv0UjZHwp5DsNrO
	 CYvuYTcw6gykiNlWrXK5f3jEVrGhzaD2U1fGbOYJiBNz5zxWqZqeqwS30Ygxa4R3bw
	 ZaqyyK1Ub1eAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96025D0EE18
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 22:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176410937360.10863.13929449516871897704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1d333b39b1abf1e841ab1614556317f9f99f7674ff5f6385b0caf4db01e4ea0
Date: Tue, 25 Nov 2025 22:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764109373
