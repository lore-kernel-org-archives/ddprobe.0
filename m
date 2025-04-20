Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A2FC3C17
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745109594; cv=none; b=WmyvmYq94yRdsptwWQ0+jI7EJqzxjPu+Npe5JbIGWIxDAmCi2sMnfJNqIJrc3TeH5pBxy0P592GKWzbRsRn+vpJrqGmFiROuLNVoAGRLpzGRFgM1Lbt7bpgb/i5wVP/n/nViqURKW3W/0kZgiab7t2nnJUlAE4H16xN9EX2+6s8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745109594; c=relaxed/simple;
	bh=vf+x6yJCUB251C5/RiVZLTYYtw/xL/vfeWxHFtJvD3E=;
	h=To:Subject:From:Message-Id:Date; b=YITskbvtTQpEQ9WbuQDfKsyJ4/1z1nKOG1uspJY5XhQqr4LorjqB9lXulqMNuVJDoCdw+dlXS/VEEf3vXZY2EB1Y270kBlCb6qfVlsEmIBNrGanrmMuRAeAhni63ZEDH4gj5LZN2ODqyVy/QwJ5i7kWNLbIaeqwvPn2zvXoKfhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=idZolM7+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="idZolM7+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF6E9C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745109593;
	bh=vf+x6yJCUB251C5/RiVZLTYYtw/xL/vfeWxHFtJvD3E=;
	h=To:Subject:From:Date:From;
	b=idZolM7+XjYwGZJGQCrzcQlcVXV6kJxxbWaBTL/xKaUhXcgr4MyLn/hY7Ip7FX7xz
	 WJIowIP/WudnS8tpfcNY8pcpQ60LkCTgBE+nLjB7EwYiXA1I3KRS/U/p6lcVQMSwLG
	 yiJiPO4bUuAHhu3B+XgjhlDrOcsLjNOJDZ0FN7BZDPO7N4uCo/CQ2zn3U+qvp7DxGi
	 vJ2cexhCx1kZJkWTJNSGftfJgLAPPZ9WtfYP4Wv3+nVrBYySY7/SRzPTVWeXPB1xjL
	 M2UDNF69KlB6DOSgUGsDZ19BFCWtTVdasdbp8hKW4656aASa1iznnetxMKny9q8Osr
	 6hABT76riiabg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 975DBC369CF
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174510959358.1691.15935664897299515596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acb7599b7015ed2722ec907d2744c5ca3dc5abd4e6aff80f43652d420bbd59b8
Date: Sun, 20 Apr 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745109593
