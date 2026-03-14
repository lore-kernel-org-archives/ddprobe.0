Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 122E8248F66
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 01:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773451494; cv=none; b=B1J13rJVSWBJFgnDU6aw4ud4wL6PgS0U1C+kE5WutdfJ/itgcYkfIll3rz3sc1Z6WQh0FvM6oGWu70lIRLccXgTu4n7fB1MfKfSu7FYnl6iSZhk8WHuVDvPLQxUp1aYLONcBB8ghXOMt7CDHgKZJtLM4wnYWxe9uluLJgKppj+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773451494; c=relaxed/simple;
	bh=xjyShqtcL8rjWpgfJVjqoNJgMLovFkbY2zWBsKgEMd8=;
	h=To:Subject:From:Message-Id:Date; b=tx3ES7tabun8IoGz3nGv7LTe6vHfYfhHSIBHbdWvsYNg3WRxWKdmXzx9wCqTRzk6pBX3RL8WW04L+GYr+s/+WPVjw275+DcxK8NCKNYqh2SRVNPOrrZUzciexnDLBJPQoL7kqemLS+eNLu+PsLN+yB2+Gdl5QUHrhN2tt0L0tcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dikqQZK9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dikqQZK9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF33C19421
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 01:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773451493;
	bh=xjyShqtcL8rjWpgfJVjqoNJgMLovFkbY2zWBsKgEMd8=;
	h=To:Subject:From:Date:From;
	b=dikqQZK9x+4yflufrm94VeiDUGBSP52kPCn00oWKw8bJHqHoFGoDE0U1HCl65XMoa
	 qGTUxvkqPgDwHFIM8sOs0D+u3JdqckHAqzmVr4XR0DWBeLAPj6JIr2SxJ9vbrcwGX+
	 SOZyICK/jXbfIJP8uYirQm7/JcuxXTsOuHsL8gg7XPJk0kGTiVjmvIKSf32shUo9Tw
	 XeCvdntRlAm1Z5sRnqP/ucs077kp5yjjKq+XxSdlnRz4xbEo/RhOY+uVWv/xAficpE
	 MlXq1VlGreyXXL6g4ZD6wSDP/MZSAkrVw9xjZswArbU6Z9vjjo2nhbeTSb66Bw7SRd
	 PTzafDbilNjrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 984AF107BCEF
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 01:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177345149358.8137.13006290388709136505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fa33d58ed6fa41ac0be1026d4780056ee7ccd696ca05d2f354c0bd587d34eda
Date: Sat, 14 Mar 2026 01:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773451493
