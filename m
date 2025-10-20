Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A474F1EF09D
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 02:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760926194; cv=none; b=QNdmNdadz31bA4fmwCezRa3eZdxZThtJq1f+F4XMQ8j42nJ4U/fwcsww/fJE5zdiQC5VShHdoi2pAxlxoSqu6UhDjivvTuPgrxixLK3Jv1nwv9N+An7LKQDX65CwJI63EFl+Wqz6KmtAEt6KFbq6HptLsT4ESv+ydmaahAQaBTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760926194; c=relaxed/simple;
	bh=OwSVSrcZMwumxWjJSebixgYd132KeMBNqkNkT89B2E4=;
	h=To:Subject:From:Message-Id:Date; b=ArTH4cNpZakQ+oWZj6c5ep7njHOV/fVVv+OSW26+gHOaw8V9KVqRUCXJhzkbrZ9KhrfzPcT9zZP9i04eJXQum9vl/GomcLaqq2DbIuLca0mTQFYt1dBRFDwklOgsERjPfZS7n4/FCp2+pS7REiJ6QCdvo9vz2I+T59Srm31Ax0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q5W0I03C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q5W0I03C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2341C116C6
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760926193;
	bh=OwSVSrcZMwumxWjJSebixgYd132KeMBNqkNkT89B2E4=;
	h=To:Subject:From:Date:From;
	b=Q5W0I03CYThGzPSxD7q/uKAC22ETZP9VqNl0zxzij5Kqcd3QHa4w9wLwmvIawWKMK
	 045C+ReHKwnzeWVUnmKzbxZWHNMXuiKcYh+ven3ltKeU3OdPHUGRlb0UJGrmI/+eQz
	 6pTxF27eX3hTGCQ9kcsWbSB0jWFYc5hPwvcloEBxdSDY8Yd6ZIXv7tHhcTADk2chAZ
	 rgg00SaCKY5+Wgk/KwEP7oIo6akC7lqeAmeNaHHocI5aLs98M/3rIoIpw7y+7oArOO
	 H3t+lX8BVvYvZhl3lGRQSM2iL9kyH5Id5SAEO6ns4r/cPx0MivnHpLjIAcD2FvFQrH
	 Y83K5OLhwE9Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92723CCD184
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176092619358.12547.18136587883630510895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 202b3b567a850dcfcd0d46d2b44379d263fb217e66c46098f76137a70ac2be0f
Date: Mon, 20 Oct 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760926193
