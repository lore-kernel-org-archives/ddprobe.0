Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A47D4D9F75
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789600234; cv=none; b=o0mo7RrEGzsgSZPjOUul5ZrH2LwYvCwHiEPnOsyOFjH2Z9mIFYTKm3wlGIoF6SLxhHYiTejDsZX9BzDWEzx5eBnvyAlEBi7GaPw60cT5rDTBllyaq/uT+T79U+ck3ZQQJd1o7+fWq0haTFOHv5C2wONy9e/ZB2+LOo3VTAFtACk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789600234; c=relaxed/simple;
	bh=tFzCvjWlE5YDBNLYN7BWfq7xnCQigqxKtJJMPeXkOZI=;
	h=To:Subject:From:Message-Id:Date; b=sV8OF+JANKzJ5nHiMatIzz1tYFusubjPPlUE0+jL8qaJzuk9VpjUsm7X6jUTSLQ3GmWs09YC49wTG9EVv8glI6BuP9E6NM9x74PSytDrv6J8u1yq7iuJ9ziOyKiqY8PreWGVSf2Agtz6dH5eWMsicubEgewapkNaVa7ytySW0MU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kV3msrYR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kV3msrYR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D45A0C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789600233;
	bh=tFzCvjWlE5YDBNLYN7BWfq7xnCQigqxKtJJMPeXkOZI=;
	h=To:Subject:From:Date:From;
	b=kV3msrYRzFB1MWj2qyVmf68ZTko7LwXzJmgw83WI1R+5ZVYcVxax8RDBhPu0acyB1
	 xbLNnK01cLy+pQpw6BDtbYPE2wGDIalnb2Zhcbx57SghKnHiDevD8VZ/A5IW9HvSv5
	 juSsi6oumksVuNQb6rGWvjPktitRmEUNmq2nMgVvAE6RoKsYxKujlkyrrn/EhbdGcC
	 ce+rJPgbEcs60hhuI62y3ryvKgUjmWr5oj9PGpLR7/ze+cGkQVThu2/w8iR3TpnPgH
	 4Vsxwes4ApqWSivNHuM7dRVLKuL6USAmI5mdPAHN0yXq7iTJ2/M9MxNGRFx5pPPNI2
	 h+FVze7UNUCVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEBBDC982CD
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178960023370.21416.3245454653685838666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7786c82f56fe84fdb756c5fd17739fd0c206eed5b9be8f94e8d09017729f717
Date: Wed, 16 Sep 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789600233
