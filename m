Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 099EC38D401
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 07:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780902274; cv=none; b=kvVfhhX09K1xlSv/LkSIK3+guCEDd/ZeCOqUBDByRCPAbl3A6nzjt8WZWKqnYZAub5AuMRtXbDcvsGRvWgndaEA44PXw4cy0jKJ+KrqAOLAGHXbOZ7qy128Y/6IFGk4rnFudJZpDH7cIwkH71oDw+E7/xu2uWB0h7pwqWHIh69Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780902274; c=relaxed/simple;
	bh=PlKBnXmMg4l1OojzTRYCFGI6tiKPzUg+IpEqbs/S7lw=;
	h=To:Subject:From:Message-Id:Date; b=PgP4x0+r4YqwErCpkkqzXj3IdZBMfVNmattVglJPc6kPIXjxu6mC8yqKfHzB2DjO92WCHTFANnAj3qx3snbIYKYUn6ObkZTaIL2Ypv09D1jVNsqGK7C/dH0g0rU7poJMTfm0iZWAjyyH8sxk/V4RSKbnp6RLGTaWbjgfd6Dd5xg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EnCdYzby; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EnCdYzby"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5223C2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 07:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780902273;
	bh=PlKBnXmMg4l1OojzTRYCFGI6tiKPzUg+IpEqbs/S7lw=;
	h=To:Subject:From:Date:From;
	b=EnCdYzbyo68bs8uBTcPowKyByG+SJcKGQnqBloKMqlyXrZWsf2Jdwhwzr5FfpsDi4
	 EXp7EQ9gsNfvHvIiaAXBPglJz8WpLYJAyKGyYjkbC7b/z8BfcJ4uO3dYuTqEcpRH3d
	 1F1BQecLLrYItCRXNTfiOd09Cxmg3ZIhOq4SnQtMbtjqGVkuXQNWjsjB2Ttn3oobcK
	 VGnUl7Q89ofWYN9Z2IfCUZ4kaxSegPYLzKJYoHEJwdlnHehok3uoes2Z2TcZjrLnhb
	 rMBAzgbPzzNnIqpnb2/qE+4GxTtvj27mUZiScNhX8zPKkdWs1ufpOb4vaO6Bi/3osH
	 1DLtwmhsPrddA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E42CD8C9D
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 07:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178090227368.2010.2674412675591021480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47f7e30a66522f082740360e054a1bd1bf5da597fde92a65509d2b5074222b54
Date: Mon, 08 Jun 2026 07:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780902273
