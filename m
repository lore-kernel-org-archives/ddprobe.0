Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 253662F5B
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753150194; cv=none; b=HYLz54AxXJRl1+J2WsUNg6UsizpualzB9LoZaBqgbDKdUjHOC7DFe0A0fcozzFQMPlx4G5+WwhLhD3qAeNsodyMcQzQOe32XMtAmNkv7t85ZQ6MfiBm0UVLjtj0zG8SsaKffMCF/vBpU2YtR1sWx5noBht7lFXj884nivPRc4E0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753150194; c=relaxed/simple;
	bh=ZxwqkP+UmvE8T8HJQI7hTcIvPXfOzriyK+DXslkVr/U=;
	h=To:Subject:From:Message-Id:Date; b=bJK9jtFQAdVaT3X+Ti3GPjg+DUvTpxZgkam6G4KwPTPNh7wE8OtkBpXAQcajzLc/Zj2dCKYZFbT4kjdHm4s8zjOgr0cegqO10QDi/0R3pQ1IcYjIEC7uBcNSKk2/B4cdW2+7qBUXO9jNjkj4xTeX+F6hu68avBKumhHodRv3asE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MJHIMhqG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MJHIMhqG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2972C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753150193;
	bh=ZxwqkP+UmvE8T8HJQI7hTcIvPXfOzriyK+DXslkVr/U=;
	h=To:Subject:From:Date:From;
	b=MJHIMhqGN+tNKE7ikT+dcgr70ooWMgTZ1QH645ARDOodq+6K0BBFtr7BRtysubZmm
	 RTeT2u6QbnCVNzDkHQSu05O6TjXkxWiTFMOM7br+4+ly4HpfXy50Q/0dxSJcSH8O5R
	 Z2TZpv37z0Y4Y1TxU486cqQYTnhYyxhkC243/131xrzKcKgRdkCFGK/uaQrC44zd8J
	 ZlaA71zuESCIX/WbK9LpyEn7Ta10OTOqn5nzw9AB3bCcHtLt9rru0sS9ZO0g+9fWSm
	 q7lrYYTjciUuKSALeccMr80uRHmfrj5tSdRawWjSTzfqCwj/l1WMgkjcNgwfak4WHK
	 dZriKHuwxRhwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEA9C83F1A
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175315019357.10189.18206824295839119368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c5f06f30d9567ce66fb80becfc6761a8e4c3e6a1084d0c442c900b26a274f91
Date: Tue, 22 Jul 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753150193
