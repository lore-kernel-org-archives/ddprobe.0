Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0867E2E7185
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 10:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769942634; cv=none; b=oA9vOtIXy9R0yu8WwOb0moImJIRqckn8tGjpmwfEPxqclkd4AONH0e+5eTd90UWP8KG13r76Yw2gXhvkU89lTc87pQYAc1PO1IsgsM9wR2OAg86Qm9Jf2WMnQjnPbvnplExxOaApPfMkTq0WmWVoDFh5V9MmTM1e+bvOf3XKXsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769942634; c=relaxed/simple;
	bh=kRuncNGggpaJC8Hezf7Ed2k2LFDoVpoxcCHBIH02kB4=;
	h=To:Subject:From:Message-Id:Date; b=iEJcvI+nm8NSafxouL2k7ffShS9c2ltT4WTgE7QcAT1MapS97A+rVHfIcYOrecv84oqOPuGA0Ka9jjgLDlkKO1rJa+IUhlQtHNCmDLcYQYDzpAeNqCzrT4VU6QQ2KwR7hR6nAvzeTW5wFk/JKE7w2wlyGcupDj7xziD7vRxqZcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DZa++Fc5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DZa++Fc5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B4CC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 10:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769942633;
	bh=kRuncNGggpaJC8Hezf7Ed2k2LFDoVpoxcCHBIH02kB4=;
	h=To:Subject:From:Date:From;
	b=DZa++Fc5dvddmE9fvR4yGQbdqUul+ma5l/e9iiUVmqkAcEtAs91tVXoT0JPHENtQ2
	 xAXDGyl3z7djirmH6W7wI2x2+M7lQI2hHzgpk3lGMRH8vo95h8tueXMeFyULuvhVI2
	 GZrqxrJQcXnLjzzB8pTkfHcpZIUkNGOLDtLvOMKrIy1Q4KH0WxDeltu36QTV1ghOSf
	 FugdCUnlyc7CMoOmRR9dQhqn2ETqXOip4d6rH1NGlOsMyrOI1ZdE0ZPJ3VQPKAQnNN
	 Ov6A4carbMGaa480G1x8fMmgARWkP1cos6mGXEQDFGngT9LNBHk0PZcNuqLzyPm5TK
	 jral5PiL+Ln6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910E0E7C6FC
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 10:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176994263357.6355.11721045443486574287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e087476fdf976d363a979c39b0f0109f5384e8fd12dc30585d9efea8ef2303d8
Date: Sun, 01 Feb 2026 10:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769942633
