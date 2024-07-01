Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62E4E16CD25
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 15:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719846923; cv=none; b=AqTomxxGg8OV3DdVARkIK5xSPU7RawCzNUjytqZci4RT+IyKyk2mocQKcnHUf9uQV0geVzgJ+3EzQzKqSA3O399YdWE2GVFJl2EFgtLfyA39KR3zXUBCUxXAFauAgn2OmJJE3Fe9ZjrBNTbOjGY57vSHMth1EzUnnlZF9k4h/ng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719846923; c=relaxed/simple;
	bh=tkLJYbnfCNGDn7wFYtW4fomxeNmAOQQzeCFU0gBDRoc=;
	h=To:Subject:From:Message-Id:Date; b=curPOE9SIsQ2m5cZJXYwZAKXg7edLP0+uopv85RTePCgr6NzW217hzez7Q6Xdcb1CS5H6U87tF0oRfaUv2t/W3N0eu1na421WiwBb1gr1r/UBa6QVzD/inh9Wp7SV4JRPkdkVdsDkVH8x8astSv5s8q7duAOUqyiE6xSA5NvUE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UACrE2iD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UACrE2iD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5EBBC2BD10
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 15:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719846922;
	bh=tkLJYbnfCNGDn7wFYtW4fomxeNmAOQQzeCFU0gBDRoc=;
	h=To:Subject:From:Date:From;
	b=UACrE2iDwMyig6yFUkh8zlxm5EyjWqF49bU6ILvEZv8lUJMWM+tje/5JyOrAF9MVy
	 pjbP23AnGVkjpjySX6DPJuyRbBdjgdrQP/qVxr6y5hxLj2TImxs4npzyDLQY0bXf+O
	 WC3kvoFL3/tKyJrzcUUaHL5N8nF4y5q01CSCsZwIO593Mf3AEaH3gxD1rHM2tBJbOW
	 lwzNk+IpmDq5HC+eWG0V9AXIzsb+YXx/7qOO9fgdsJk6koUO2DopVjJjPkZOazIvfa
	 YlX8xEZo38PXswQHcBqH7pCApKEktu+NiK+TLjJpQvOGDQjfnEtf8xc0jNXziRe9WL
	 q5tJYvQ4DvvyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDD2EC3065B
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 15:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171984692282.31199.4106366908159842096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7c01ed149aa9d5944b36e58d75c8b585fcc422168901dd32540bd2df0f7908b
Date: Mon, 01 Jul 2024 15:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719846922
