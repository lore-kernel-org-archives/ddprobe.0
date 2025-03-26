Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 489C65028C
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743031194; cv=none; b=HN8WxooYru8GA+T9P4lNH453J/Y+Pzr9oh4iToL7TTLvJq3/ceRzfP72EP9NGGWplgw6oUjXjkdWXTslZjWkoKPvmvpEl4kZBY0TIaABEC8wBqxi1eObymPpPfjyVSQm9LcxGjOQsvDCbw7ng3oCcGpd2mGiiJre3+DTeqHJk4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743031194; c=relaxed/simple;
	bh=IDqXwbtn0MqyOK/CESFkNNcrz3+Pr8EXxlEpEfwn62Q=;
	h=To:Subject:From:Message-Id:Date; b=KYZs6LWqAtYLnUWzTEElWmZJwo0z40PXgaWgGJEjcBRYLB3KDshBHRbfD0hugPSEU4eATCLT4YTCmpg0buedknXEy5Swzfw0Co9pbKhtNa6IHXOXpr3eT4GxMKXnfWtx5tXNwYzd2AlDA2/qWmy0W75Rfvdmz75VOOVPnQ0Npk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IDlQmbml; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IDlQmbml"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC757C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743031193;
	bh=IDqXwbtn0MqyOK/CESFkNNcrz3+Pr8EXxlEpEfwn62Q=;
	h=To:Subject:From:Date:From;
	b=IDlQmbml8Bi/h6JaMsG4BjBEmZPxWH1zznxz9csiuojp2XaNZ8pNq0puvEp4CJ+9c
	 MLoQdtmlIEkzMF/kEHQ9s8dUHdOWZfb0K/CNjniGVldvrkeRs6d/dO4eHwFFtN0QYv
	 gJ+tH8TxRh5rUPgPSoOrgi2AijS4yDFTXa+f6pgnxUboqo1WWAUzyghhFjhqqL4vej
	 UaJj5pKbqTHLixcriUXe4OyA0fzhg5348aYSqT9C8HqAaJ16dr3pE0MMjU8aKb+1VK
	 vEohQy9sTbLAqiZM/mP7dZIKRhCZs5Iqk55A+vzXcIa1uTEV/p/03MjLcfbACjG9Ng
	 6oZouGIU8LIlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C07C36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174303119363.19908.14346771126271634622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15ebaf3249d43aa3727370266edc5501fa41b8abffc382378e6785ebbb01cc47
Date: Wed, 26 Mar 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743031193
