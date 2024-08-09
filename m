Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3771D34CE5
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723225554; cv=none; b=S6mxdj5aT2B1hR8v28dPPOMVtyN3FnvWJFgEpORf1BPl409dyzEsXF3wJ8I/zV4gNO2vDAyS83f30ecIQrcd5kM37DsUHvBT8OzfDV6BT0CztOq9LCHNEnQQE0lJQCon8ETJxZeWGaoMYsL2dpW6dR64Pv/tOFr5eGuSm90GyDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723225554; c=relaxed/simple;
	bh=QoQ8gW3sKKUfOZVV6+5rZ0kLAhmefyxxiScRedh/x6U=;
	h=To:Subject:From:Message-Id:Date; b=pBmVl9Sq3fLTfPqt5drDbk8k0dqY6RTXYrMcF7ZneXvJxsapl86P/oxpvHAUZv5C00eERk+C9/+1DgXgpsGohLcWPMm9K0wUtytm5il6nxEK1ogQlbnE0C7kqXR/6LECz77hM9I/9Ic/F8Jg8QfALujV3l0WZeXi+QrFlbrRvL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H9hnSukv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H9hnSukv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B38B4C32782
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723225553;
	bh=QoQ8gW3sKKUfOZVV6+5rZ0kLAhmefyxxiScRedh/x6U=;
	h=To:Subject:From:Date:From;
	b=H9hnSukvZfIqc9hUcC4mcEO+NHoNq0fwtPOtxs7yMpjdOQPFq0uyKQyI4CFx+DhKT
	 vXPe8HhepBEeTXZ/NzQoolMsFfobjhQCAclots07cFe6pxKGWfRlaQ6TVYkv0bqefz
	 m/kx5BjgES7jpKixpg2LmB20FZJ4eCMEVUQuqj0PB2WqL/M5mG+WY93R36bskELrj4
	 pXNKrd15eKVWPEMzvRXfdCyNIYUOBv8pdJ/9O4iS2WNJIjX/n+TNYZSC4Nfl3dkGt/
	 X9mwpBy8B/iLu7udQFB1BxMedr5kjMlk7slKFMRdnHqjuSfa/ZWbzI69jV8l63BAuE
	 x5TOIfd/ZtFbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EF43C3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172322555363.15636.1460758971950740959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a55e6d3d8572cb6df1578c9c3e6128ff51b5fc6e63f7f57185ec3f8086fa022
Date: Fri, 09 Aug 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723225553
