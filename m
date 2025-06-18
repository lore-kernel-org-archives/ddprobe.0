Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 516381EEA40
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750228794; cv=none; b=rUq9TZ9nmI0Z0bKC8O+08/arx4Lon7ErFfJC7yAkPX4n6E//cUSlo7+6EVdhVqoRllZvsbEkb4hB17PK5NeVNfzdxIDEjHb08aJeT0yZwtC4DKehJt4CWo15lyFrNiKtQz0LL62UBD/ZKBH+7MCPu75kAGsUY/JSJcfq7SVhNBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750228794; c=relaxed/simple;
	bh=k/v4Y7rP+UEgXPRjaAa4FH0Qcz5lN3G8qIv/Vq5ccs4=;
	h=To:Subject:From:Message-Id:Date; b=fxydkyPQeNWXrMeKkLasPsUGhW9FRs5Lk9cvU3cZavQVu5xbwiAq0DalQ1PIwIa/nQYnR49NfaHqGQyETchtbMNzrw5THCVIHYNy0iV8xK85be3wp2fIrxDLrZrq4FyHb8b5+enIW26cg76QVWb3McpkcXsYvtTP5RkiFp19/UM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kkESPvor; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kkESPvor"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85E7C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750228793;
	bh=k/v4Y7rP+UEgXPRjaAa4FH0Qcz5lN3G8qIv/Vq5ccs4=;
	h=To:Subject:From:Date:From;
	b=kkESPvorZQ6i6ExffvMp7c8m47owN1Z4x+1QJTHNMQaa+QEMJTPjBNpsMOWJFTU0y
	 oUwfuGT/bFU8zWOHRbUpVp8hIsNbAVVsfpicChJYAiselpHcWtisQQhnMl2prITggj
	 2ieySmfUY/0emt7eYFfcmOnbDJU8dn+oJbLyu3sdt+Fuij8bV/olCC54qXe3+JsXo1
	 v6Aky2jc9OMM/54xgRNrUqDIITk5E/tnCGyPEUdTNS87gSThgckY5rHrcv4Ssz7Mdc
	 q/10qiZxFaAllhXwF0WF2Ej7StU+qYcdaltMPtAE2xVe0zf9AhJdgFWJwZwzQnW92K
	 gZT7zE1XoUfcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E2DC71157
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175022879359.5750.15430012018792623202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6336db2112545f06fb7c80d3bd1ac856714e4a1e7dd0222b3d64b849f06465d4
Date: Wed, 18 Jun 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750228793
