Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D8F7256C6D
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 12:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741694934; cv=none; b=DETDGe+3Kvf4r4DCV3/GPudmezXNLS/AJK964s+xtl/wVq8O8hc+HkWBCKvYtnaRxJqljjKJrPBAQmpkLCBQbahmMCK+Zkwv1tbazQgkNS7QLfWfOk2c8DsstO4iFaCFxUCKv6hSyDR/Z6qFNfs1rZzpwZX+AkIB2+Wi/1IihuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741694934; c=relaxed/simple;
	bh=FnrFSta+jPYOcBN+FgaESRofTgGppisNroI0hQywU8A=;
	h=To:Subject:From:Message-Id:Date; b=qqgeCN+ZouHLjfraPXRfFVp6WAj/ARaWzDNBwp2AowirPMPB8jtGHUdBQSfq8K39HMTicSU4ejSTIIYHHCuByZ1w62R5he8JB2b5iHBJfxT0nalFz+Pz5LOmH1C7QqICEYjpAAklAOc9AFK6l8gl0T27+cIQh2fEwfkzWYG6U2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lxQVr4Zy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lxQVr4Zy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D2CC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 12:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741694933;
	bh=FnrFSta+jPYOcBN+FgaESRofTgGppisNroI0hQywU8A=;
	h=To:Subject:From:Date:From;
	b=lxQVr4ZyEV3ic1ra4Soio/3uTeLQXpMltV5nEA4VhmyyICbHvePoeb/xp2WV55gyS
	 46hH1MSsX2xTtX8uqAplQ5/nGrCt6ocxOn2wHrIjePaFkny+HF4Cv1JFwrxm6zU3G6
	 GQLMQ+0PesidCeoXYRa8viqOcafNt1G4nQR/nxNKwzq5V+o+fqHzD6vQ/Xxcua19O4
	 RvKbEngsxjwatmuUo9YC/W6MD1lp4byj2qmWC+v5vsB8OR3WxRVsnqo0/VnsWsy9OU
	 /WR4VuaW0dgoDlrETWUmjs6zLjSQqPig9BxnA0RsoQVpzd5zjpkgmj9eBjsq3WdapS
	 OqzydWSnogXQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957A3C282EC
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 12:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174169493359.13356.9808361049120258221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5672040fa271379d3c21d0049442bf6057703d9909a5739422eef4db3c46ac0c
Date: Tue, 11 Mar 2025 12:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741694933
