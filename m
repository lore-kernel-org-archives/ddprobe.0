Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0935926F288
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 05:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768454034; cv=none; b=OPfNarFdg4KcjN3KdFOwffF0W0TgMvIyBVGqqz1PUOn8fHzdtHvAI2ekujbIXel+fup7gUSC/6eOnLgGMs7vGnN8D0aEKw+c0ygIjke8yIYAV1EZHVSdXKkqcR0zqn3sY95RTA8Ye6A6UAAMMy2oomknE7bMNVjAeKKlUUNkkbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768454034; c=relaxed/simple;
	bh=PPI7OYTe8lulNzEKCrAMu9v6vjAanuheAyomrFRJzLs=;
	h=To:Subject:From:Message-Id:Date; b=g6qbqW6OR32cSSdkD1xEtKfzA3z70RJQfsWJxr8r33TNN3bHwdml4bPnLQrHiGzxS7F0j/vi2XSUxdy49IqAUzwcoN+tS05S3VAgFoir1FtVIt7lQYPOGVeHNXJQ0olsnP972N7uxNt3XqWQvqpU0sR7UpJ2pTtZrpHZipRg+lI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=il0uRlGw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="il0uRlGw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A519CC116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 05:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768454033;
	bh=PPI7OYTe8lulNzEKCrAMu9v6vjAanuheAyomrFRJzLs=;
	h=To:Subject:From:Date:From;
	b=il0uRlGwjx5fJmQu74upBMOtSKzeWcSQgwKbtXM4FvNLX0LYuVE5Ncg88zzy0AuL/
	 iycvq2Jg8OkyqRMTTTf1/Z18zPRm7rY1q/S+RjJsAaAjfBLk1X3NbwuxXqAGdRCJVY
	 haR8XKbsCOeBm9trm7hqyuSsTu1YDcr0TGvOLqXOd4UygFrH9KS6h+u7X9JPRnWhvo
	 ypFUPc2gpW8gyGYHOX1xZNVg5iKInkyMgt9/TYXxD/SSNTz8fUfxDMUiOiqXR42DxO
	 x7HzFWO11gr7iQOBgxoBNg0mTsCWYJWTj0rvdrG7JI0T7dtRwrNclWYaW5eTuXVski
	 CHQVOJyJ2YPsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917DFD3CCB1
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 05:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176845403357.26322.10239964148835933629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a56b7b9e4f7b92ae6a77646162f4f6e9417b9d32d5eb8294d94a0162bbbf6209
Date: Thu, 15 Jan 2026 05:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768454033
