Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAFD742AA6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 02:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773456894; cv=none; b=GX4+UrqzLdnlZeRJmTDlKSDHdljGL4nDYCK66479HsjtdizpJwImc81ikJlyJ3ks/ycro77yhrICxopx73/r98H01D6pikqPBj7T7NmMd3TCqjiG68y357UBVqpAAcNb3vZjeRF8PQ7/eBk+EtMoMTizq+vzydRufVJbF8zKUDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773456894; c=relaxed/simple;
	bh=w63RSeKNP4OXSCR43bc91QRsc6XGyXqpvoO3J24hJCo=;
	h=To:Subject:From:Message-Id:Date; b=pB7PSdy/+CliMw6W92Bmk1f5AtFn0swBI/OF6Y4z8QVtAC4VkykYbGI6LW3ZvZuzzMuPR4ygTiSVSr47SLSKLFpeAUuYn/IWagxzzQ0NpmlbwAKNWjwZr8C+xvNE/fmbbJW2XSl/D0IT/UwvFqrOe2WEkYadSEmdeU1Y3ri8+HE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g2sfE/mb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g2sfE/mb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CDB6C19421
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 02:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773456893;
	bh=w63RSeKNP4OXSCR43bc91QRsc6XGyXqpvoO3J24hJCo=;
	h=To:Subject:From:Date:From;
	b=g2sfE/mbI7cxgVgtlMWNCf82/Y7onV2GDHNjLrpBJSvyHjJE5FBJBT4HNc4RwxIXd
	 zqtnh5DSUtHzCYCAJtMT715U5Z8X3ORfiRNQ9Dc73xrTDJfnDk6WVBEVgdgNlpdpBB
	 sU1jDKDMNvGUAl4d8EfPus09zCa9RKq8lDAwf/AgXu81i4v4PJk+A+3XY0JqY10We3
	 CrtXEQiW6UHEBiDBr1uPyD+ZEiq+DidqwU0w7WBrdp/TPzMavyyjrRcxSqnBAif9sj
	 xoYIgHE6I5ryulkiyJs8epcSX/aLU8xJdSdeG5suDmsvqPmlEN7fx9yzVX7/RgRK1C
	 C1WR8XxEC2vlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2C6107BCEF
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 02:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177345689357.16138.10044180750894509062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f0f7e4fc89f2efa4870c76f93be7c908bda6fd649fb3bb390cbbf4dd86d8ba6
Date: Sat, 14 Mar 2026 02:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773456893
