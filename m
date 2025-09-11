Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24C70262808
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757573994; cv=none; b=IErZGtrKge+0N3vIjmoWjZNwkFSXTNphnaskD3A5W6UJBATEjPc9fz3l1b+1zBTSHmR/J3p2yR5hI6AW4YTzoIOo5YSa3pBGhFMQPTinYOOM0uUMXwCbqGo1NA3SSgSzY3fnPcFLx4uSPbYdrOQfYQpX4LNuOKOpUg4zngxKj30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757573994; c=relaxed/simple;
	bh=nlpXAzk0S8qL1mNAR8ELGmOyIA4c5bi5v6GH9r+C27g=;
	h=To:Subject:From:Message-Id:Date; b=DS9VRDTYLhakuwVj8vMf9jO/bO2K+zP9lj4HQsnFk1qTGv+RBICw09m8dOcmVcpPZLBz+uZIb7/D5//HCKSgeYgModQeCAzuG8gFqXhHudoisoYX/LyfA0cgxIgakg8LYOxXuiw9P2UZj7+BwQhnxeKTYcPetcAsWGfeqvsPFfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UxKvGjob; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UxKvGjob"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F23C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757573993;
	bh=nlpXAzk0S8qL1mNAR8ELGmOyIA4c5bi5v6GH9r+C27g=;
	h=To:Subject:From:Date:From;
	b=UxKvGjob+B0Fa3LnfFhYvCA5PAPgY+tCu3MdQTS63aG1WmL6PAsSxnODXDPw6zLlH
	 wB1tPmOLl/XuXLzMoTHi2yOgj7ueO/dkMxFQNbyRGG0/v+FxDiYVRmVSv7rPoHfVk2
	 YEFWta4aA1W6i3AQkBUlFqXRbOTZCYrkWEQFwh8qNCNc/nQdJnNvQxhPJr+RGQHQq0
	 01r1KQtHbjn0tLZLY8351u2FIeOSi5fWOqoXvRwVKLVUAZzeyymbhdFCwNvvtZEgsO
	 Zl0EdW9IVZlF3vqZrqw+Gurlg5pPmXvwTPhhNB0SQXof8Q/bh4rvZJvxvfoU++HjIO
	 jjq2QteHtFLKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E77BCA1016
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175757399357.20810.15432047788450180761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45d29eae5464f9e9f351cc568b072655bb23b5b872cfe849a2f13c7763eaa76d
Date: Thu, 11 Sep 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757573993
