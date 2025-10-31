Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F1581E8826
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761948594; cv=none; b=CxhC+uZfWhJas9VDjVLg7mb4He+BtZUrWKpj2ITPX5FecUgCQvF5eASC6yvmSz4v8TXl7+DF3u4z1SeV3ivQozgiELzO7fcJLp11jn403BBLnIp0xl/r4MXw2z/EabZJ6P8XGPP7QjV1hirEdlqGf/SZYbM3ttuEqeyXUy4xIZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761948594; c=relaxed/simple;
	bh=MBxldG9sANMnCQdodJqz1OcgPTa69HWTJPWTh0pshQA=;
	h=To:Subject:From:Message-Id:Date; b=Me68vV8h08KfrLr9bcpv4cF0+ZCVK2RvQqB325cHL4hd2qXdjDiP3RPs8SUbTKBP8wZoR3icDnh9N2BzW6fEcE3iUgoEnN2oM4S/sqgxTAfdQL6FNq8kGvS//uByhHszc8e2bxD38wqPKW5hqea7en1j1HHX4RhQ5yvbJstVloc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qcQffY4a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qcQffY4a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7CACC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761948593;
	bh=MBxldG9sANMnCQdodJqz1OcgPTa69HWTJPWTh0pshQA=;
	h=To:Subject:From:Date:From;
	b=qcQffY4aen16vbkQnJgQSjcOyrQdZniSKFvhf8VwyKbKI/3Z31/VBXvOXJbaP1e0I
	 td3BcWcJeLhMLokafr3vspEb5jWyarcrZ+xnx1F+K6Av4m+Rp7MAiwkJ2W/7VFRbhV
	 ZLS2/QibW85dehGf9jidYk18Y6Hw+fGhK6DfbwQ9yqWRsYyAa0rVeJI0V5b2+wJ0RQ
	 WdolXgzya+iXMgLHbrrIkx74Afcxg0gfKvQB7d64pId4p6iS8+MvPsFFssuQpPmxam
	 0viuWCcSjmJumKhQEUy4ZvbvHBvGGT/VFBXSk0tftYg/jK3GwIooC/lImPRXYD/R9t
	 t41SYoeVef9zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9716DCCF9FE
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176194859360.16217.16245048099636313709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4864bd79fc4f407c9bd5a80812cc2d60d48fc90eb502e2f2d8d0c97c932eb77a
Date: Fri, 31 Oct 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761948593
