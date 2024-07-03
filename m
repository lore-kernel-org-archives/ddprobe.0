Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AE5A804
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 02:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719972323; cv=none; b=HNA7ZjHDAq4q63Dly8ucs7Sp2k10/cMwlSBq+EMAgLXQ8X2shnOZKEuWBBFhv1alrlAa96zURZdJ5R39NkDb13Vbci0Y+Qfrsmh70vaYrgD+4Hy2Jiru3knsiBgOZgj9JJX3QLYvHGBX6fvZVmIVQRb6YjBrohysLI+B2ZiIG0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719972323; c=relaxed/simple;
	bh=3q3kgD4NAr2flQJRHBzg5MNEvRfgnzRtwLNhtlKLjI0=;
	h=To:Subject:From:Message-Id:Date; b=oi1CYlyjmh3u2ej7CPlz2+ubngo3w9FVgE1GfY1Wx6v0KSNSU03AJbQRzM3Tdj6c2sLYIFcZVHfAjtnk7uFTj5kqAYfWiZ6DEQpRxmL6UxWlxWqLf7T9bO8+r7uMlVCcZGUx9CV3nhtrIj5M2vqaN8ssgsPRu01LoR15QS2JZMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GMbN+7go; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GMbN+7go"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5938C116B1
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 02:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719972322;
	bh=3q3kgD4NAr2flQJRHBzg5MNEvRfgnzRtwLNhtlKLjI0=;
	h=To:Subject:From:Date:From;
	b=GMbN+7goIrYPJS4w0VKhmmUUQ9zhVBrVW7M0oVmpK7fjPydhYuTlriDwPrkCbwNfe
	 Oj5nIZ/jfMw6gXBJxgrcVfi3EDQL6Kl7yV0VqOWUOIjqEv6LdjCAEsCVKAlU+oLwy5
	 4cednxhyz0LhWDNBXBS9tH5O5cgil9sRkiSj5LOUqlotEhwt6jsnkCRjhTXWGWtMh6
	 R8mWvRvZJlIhWQmrsrkCm39Z7X0GzIjej/j6r7PftFr6uCe8YUCT4A2lZ045jQR5pj
	 WHjA4muazVug7+w+mxvRyOich5hHnDrGpgNSmFVZiwOeLMvy8Xvg8/YNYBipOyPDlp
	 EXgPN9urvwcWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDF68C30658
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 02:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171997232282.14963.8812955784020415585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23cd9295186e355cc2cb8ad03bbbe01bafb6a9a432f58d20b6972120c7a1f9a6
Date: Wed, 03 Jul 2024 02:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719972322
