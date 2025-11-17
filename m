Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 125E2269D18
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 12:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763382114; cv=none; b=UmUfbvnrt72YZrtOwA4K7dkU7RLiQFnFjVqAhA8xlP019p0HygRZXedIE8kfwWjAVDvxpWEQ/BWoyhfFSWYhVTbPOxXv3CxNO26A7Mifmzh0m8wu47VaS5lyvs5gAhkTXWsILb8w35VzWmkhZ8/TJZau+YJ/l1BPjWtzFdx6qAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763382114; c=relaxed/simple;
	bh=nwBKXs+Ck05gNtGdI5ruxA2K4V7t4izMiSb31cC3gZE=;
	h=To:Subject:From:Message-Id:Date; b=mpLrHcI2LYccGoDOb5609arBeXAxL8em+Ymk5txMDnRS3pI3RJtmaHjb9iOgyYbDxTswtm74l9rkLeKGP8N/I33arZBm5TM9il958eXLHW6pumeiG1DKySAaE9VHGocarRfhdanbEhJr7DARr/nLqM1axCTq4kJAvW1V/setD04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T+d6RgVZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T+d6RgVZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A3AC116B1
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 12:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763382113;
	bh=nwBKXs+Ck05gNtGdI5ruxA2K4V7t4izMiSb31cC3gZE=;
	h=To:Subject:From:Date:From;
	b=T+d6RgVZkAkpKNNizInm40Thv2OueNwtmvbPamijmkad0OH65vThw8BQJdUCuNk5u
	 jFcyf8U37Sa8UP0MdOQHLOSKIlp5zMRLkgPYh0c7yP/lLH01/LlFUbjKZnlr6ut6uu
	 RmBQmTR8FarBrGkp0tiXngIkSpvWIjG+rYlp7ercjuRwD0V37M+yGTHh2EQ9x0Iz6o
	 9QqlIERus9rNK6rDO9RXoL4eX5wf/B2mg//RHesu7mymwy0jDTI+Jf7oF/g7UDMq/3
	 HVaV0/DVfl1OpWs+cuEowB3/JIN+X1QK4YzuAsqq3gahmqlx3I6Rx4IwIZ5APTmEVn
	 4upDN3LcKSRIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BD2CEBF61
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 12:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176338211359.5691.11733601652642885123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0e879005643dfc9768b3d84143da78152284d888e7491bbdd5ddbd54c6e1555
Date: Mon, 17 Nov 2025 12:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763382113
