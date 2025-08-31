Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2130F1D5178
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756637394; cv=none; b=cqy5Y9t/QyZQ3ZNH/+F6/+5+bVrh17C1rIDqtZ1zOaUXrPaaTJhUz9Pk7oEFiIdgFYjdlN/hs+NuVXEgjI+/8rFLAT8AST8lqVf4m2/dYj5k0XSbW1oC6bqfbVhfSuSfXJY63mnIqGBmO6cac+D57Xmt7EKVxPh2Mpa1JsyUOGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756637394; c=relaxed/simple;
	bh=CqRIge6sjlfESKBeF5gkOqsLf6X+F3W/2vnoPWYGFTE=;
	h=To:Subject:From:Message-Id:Date; b=qSMPf+Iq1UVANR5pszNC/RpnAzZ/gqDoPu8ZGgYEv3aUii559+gIfglqUbZ2yX9cWDCm5pBI0amyMHe5GFtX4UO+ncJ8kX+7jQtU4U5aqB/oXg6z+a18H9XUd4JsG0DS83F005gCaivF1Aw0zPZmYf8tBelpd/Le9Ubv1gn0XoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VOrNcOJj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VOrNcOJj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2607C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756637393;
	bh=CqRIge6sjlfESKBeF5gkOqsLf6X+F3W/2vnoPWYGFTE=;
	h=To:Subject:From:Date:From;
	b=VOrNcOJjHQlB1hmr1cmbUSm1RXUISH4sLcEn0hVeuhZJvvXGZuMhMMmIie/QOU7Qd
	 INKuloh3RLbulOH/uqJ/PC+tepicg7vYMUECKMKOwrFV6vDaoLrO83RQNWIe7egao4
	 OZ6VaIMUO06zzb107d8VoYpzJ0CeBf71lbxY2pJnRI8Bv8fwWsvAD1x9YNTn2XFzJ3
	 HxPZ+BhqM1bIH6dQKQVqa2ygDibGPF4YPHozglWuwBxvMqE/gXGqq88+nWuzPQD1Fl
	 26eH0/k+d5VZ23+6vIT36kjtwdy64R7B2qxnihG4oBtQpB3F/5ioqlJCYJqAeWvnUb
	 yU8osOCLBZkzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913AECA0EFF
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175663739357.32143.9627504302345180248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c75ac411ad8a0df6a47ac60dda7dcf6196aeea04a0c5917c9dc7bab3e089b178
Date: Sun, 31 Aug 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756637393
