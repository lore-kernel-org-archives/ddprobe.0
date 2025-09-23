Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 341F93595C
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758634795; cv=none; b=d7Zq2VeOf4iPHBUW869kxRFGZHl71FD4DilbQ3Tlw2dGm+XWH5o46hiCmkewqKFPVN7ZMG6opNgitgGyGj1elmhFFjFgq8GrFLJqR2QuV6a6+1DXgIc4m+wFR7HrnHpxyiY03U2aY08ooQ5C2Yqjzu/6f2/L+wfr8BkxlIM5Ipk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758634795; c=relaxed/simple;
	bh=q1D353BIujQJl0jVSHfctPJfxabBzgKTuKxtIuhLK+I=;
	h=To:Subject:From:Message-Id:Date; b=V/e/xVPNa0x9ESXR3kWD5vNTJhyL2o7A0X46vRW3RWGHiefFrFrKoPuGjdsbvczNahpy+T2WoPprGZCZu/YSfazdxHUbY+vR7iliuUAHc6u6h8XXyfsDN8H2qHk9leYd4ZxBVrRf5I/3ViVAskfxkMHvdB7aPBTiWMwOTKZXFW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TxWmNyiO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TxWmNyiO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C5CC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758634793;
	bh=q1D353BIujQJl0jVSHfctPJfxabBzgKTuKxtIuhLK+I=;
	h=To:Subject:From:Date:From;
	b=TxWmNyiOwKbkSAY+SpP0WU3VCDtdnnVG+G5GBhdNN/ZSGp2J9kdk3jgFE0XqjvbiT
	 pCc8XecHQB2KsWKKgH6kZsBj4l9W9Ck9/lo1TOphTZfBnBB+Wok8SxTW4Eml+59R2D
	 amVQZ5Ck3pjtTb77saSgAGXHV0C4fv9yP0xq6KZzDSxzl3+SkRf0Tpv48OJKzur6OQ
	 01BTefiQacjEHzBgTC2JZcXg9T977LWQN2VCfkcUB3Dbn9ktNR+JP7X93jqxNLivxq
	 Lbpy8uHsu/+gZnFvJcbqeLSt4XkhI7dYXSsHtH6Dk3oC7QHH++Y0sIXDoZRNEOokHW
	 aA+V1bGQmDDlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF4CCAC5AC
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175863479357.16244.14811205520628892194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23bf45aac687ccce32e71b3b470b646a21d13f7b86e6229c030aace8accd1bbc
Date: Tue, 23 Sep 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758634793
