Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F203BE574
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 10:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710583697; cv=none; b=cM9FQLJiqE+2qGZLs92+eQkitm72qmA5C3BBQLmE42jS2yMhXWXeSzNFb6gJ+oSOr50I1I4UuepweagLKlHuM/MMnb1czwSj7Ufpd+HxH691/VrWgpzPLrMI5M92RiFVwRRQp+VvBy74fwz82HaS4yiJE5sZ5eInmZKQN1S+BHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710583697; c=relaxed/simple;
	bh=D4fYnqdmcdxd2GKLdq3X7yGhjpK3RaX2YTWRghINcP8=;
	h=To:Subject:From:Message-Id:Date; b=oa5nVArKI6UwkhWBZVNrjhkT35YvnTz4Xb+Of8Hte62Ts9uFZ4K+El6fmM/b+f9G3n+rmGaKSchlRb5eXwLAeAnqITJxCzTMwknyPg1Z+dWGdtB2HfIz5P2r3oVNKRgUGGHwGqUYyJHzsNZXTCALCFeJbFwETEWiIwKn8GF+cBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NnMAnwAH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NnMAnwAH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 714FAC433F1
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 10:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710583696;
	bh=D4fYnqdmcdxd2GKLdq3X7yGhjpK3RaX2YTWRghINcP8=;
	h=To:Subject:From:Date:From;
	b=NnMAnwAHNNTXJ5v4nM7coVpEgmXY8YCNg/45VB2oWlCPKtmosfrOBoz6kHLD7MbEe
	 vVziU8V5Lj3nGLK1iuQ2/yc8IGHleZ+2NYO6Q0ClzQA1qa/MbRlV/4LYdQbb6dvv0F
	 PRsUZRwJUXS2FBhtmY7m8SI2qgxsnJM0VL4mtNL9RNGsCIW5c6kSM+xZRVJJ7Szlji
	 yDLjcZZ7Wprd+NAXZfhBxMS8/lskAj5EuIngbGaq49Gi9qpaDXELcKXgim0+4JB4Cb
	 sDY32ALtXCvLeztCcuW+8NmNywqBF0QnaogIOX0g67ZbiY4AYK1328nuhoLzokPltI
	 1XSeSiyk15vLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E05FC54E60
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 10:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171058369636.32088.8008500827228570951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3000c84f688a1970dfa9348e748263e7ee10927420eda359a32bda7b653b2685
Date: Sat, 16 Mar 2024 10:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710583696
