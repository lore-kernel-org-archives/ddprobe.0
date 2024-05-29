Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7670A15A861
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 15:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716995663; cv=none; b=mCOSUng+JvPnST1Ac4BKqHnNF37BX6JXzWO6eQuGDpVP0gMIUXzPCWwd3A6ihWtCHnluubzS/hxTdmD8ZHZTrzHsDJKFbGIXIbRwrc+FWbmPAYrVA2uINPHx4vIwNpPw/dEHkbSAiOK8lfDg5XBQrOXdYkM6rOSBhYVRQzHTJTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716995663; c=relaxed/simple;
	bh=i98WNAxMzsHLMeiBIOu0SpiPFExschrMl62Cb9G3/0c=;
	h=To:Subject:From:Message-Id:Date; b=dh8DzvhtCtxiiin+EJgMqdGu7UrqSyDl7xpfZAi1eEBDEu1q9w/mvXk407JyNZAkZhfSjgwrpf4a3/foDwJrLrFocBj+10/p/9/N45X9vf16bpqa8BRQjVsCQ50uVI3yCKRHJjV4o3qQVlEU8/NUfSXlbSrSpYcmocIX/c/wYbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I8bj85Ld; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I8bj85Ld"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9CFAC2BD10
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 15:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716995662;
	bh=i98WNAxMzsHLMeiBIOu0SpiPFExschrMl62Cb9G3/0c=;
	h=To:Subject:From:Date:From;
	b=I8bj85Ld4JI0EeIUReS2uBouUvwPQro8WQYjY1t8gU6IfsUNnxFcMjZn3ni5Y2pRN
	 pXq18xwv11QlGSTyYaQfj/nUYsQfB9eqT07pZs8ZpZ9sMT8bIX1WX3AO+ENlGRmpN2
	 lALFJtJ54RJEACda97jxcyARtC5AnVgx0XHxDD/qUHPNDNw85PXrEq+fpGXBVlHJem
	 GBQZwCdSVx/rjxWGinwI6Mljpx7Pfj72d9gTYKE/vqTJ3N5ek+qUfyEcGGY3qpFVrX
	 u+b1g7izPgRTeyLx97MvbcNc5zif+Y/0ffPW89elcEE+pJqB1o569bfVuxmC20etzZ
	 zKwKwvP4sCNfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBC04C27C43
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 15:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171699566281.21190.1481627208032523785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6af6f14144b4b80fd1b93ab49a42aaa5e62c8c703820c52612db3b58324a779
Date: Wed, 29 May 2024 15:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716995662
