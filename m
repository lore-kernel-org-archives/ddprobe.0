Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63BE8355F53
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788841234; cv=none; b=QtXz7bkYQavaJlGUWU5ZcZNSFLaYj5DhlbMahGAIFWeNarEvFHwgEtOLUI7nMJkzJMgLMH9IHyP1RmpEtdgEUC4Nqf4vHYc3zKY6Zs5HfWY1ftURiSToqStpeHjNohXKO2jKI8Vc0tB4koecL82PeM/6xtbcYMU4z9+dVvWdkJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788841234; c=relaxed/simple;
	bh=NzxOtpfkYHDEGHG7r15uDnwDIn6IQHkjfnOK8x/jMq0=;
	h=To:Subject:From:Message-Id:Date; b=QZk8FlDyd5KL1oQMXZyO7nYTg7WU8szgr1kzMgDWgAi0gZFtJ2sL+lFGcUBTg6RmpELrQkFLmQnao4nfUKJ895nErFxnKTyHgHw46W7zLcuQTwr/5lYtumXIR+bFmOYg2KQ3HJGaN1J43qid4NEu3HglpLXe4UXioxMbPc3HwE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IjXbQlQs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IjXbQlQs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0689C2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788841233;
	bh=NzxOtpfkYHDEGHG7r15uDnwDIn6IQHkjfnOK8x/jMq0=;
	h=To:Subject:From:Date:From;
	b=IjXbQlQs3PlwiX1ui0xXD+U6FEHeS7trEjEeti5jHkfIBv0Idv0IR/tdvx0uHumb2
	 lb6InWIuR0hou5n75GGzOJAQNLQ1XwOq+J03jwJvhq2Z8mBu+jPROpRMnwp7mEC8PV
	 9BVkbFFVZb33VDM4DF+En0q4mKKs7sDaezqkj0fm9lEwcjMg8t1Fb3H96Gw1cgP2FN
	 Hl40OnGc2HCAvofOM6lyzsxqfN4LxNG4DtYbgZlqGCb220MsZ1Mmt56NNzP4aX/yQQ
	 idGnLz5+IYkFQZJ0gzw15bxaQBRwsMZBTmhWpGvVld4jm7yTp5h1S+tqHmldf/2km+
	 LH5BNj8IuSjAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBF28C79F99
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178884123374.24481.2879526606380141068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f59550958b81e07a354a8e760897b9c2950b8a0a35a9a56f751e559a7179454
Date: Tue, 08 Sep 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788841233
