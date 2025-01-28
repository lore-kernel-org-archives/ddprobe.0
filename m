Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 402BA15D5C4
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738094754; cv=none; b=FEU28qc8Rl5XDxHRomIjoq3uZrs+1m6/TZtXTwbo7Y0y6hqoYdQ7TwbFk8pzDViD3+Fodu5yqcoH9gVfJEuxg2/7Jj81Gw/3tF2d+cMJ3nE7dcPTMv5ydFNwXLMxPsz0gWPKSbzjVDjBqkDmXvJcDl8USqyaBRe4piqs0UqXgB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738094754; c=relaxed/simple;
	bh=i7WJU+s3s+f9lD92t+xBRzIXN126WWkASNajigvghjo=;
	h=To:Subject:From:Message-Id:Date; b=I/0/nV21wmtdnfRVbXHy865dXWpOYjPQoPwWwse95vbroll0B1rL1JyfdYr5++qdV4KcCe9Q5zmbta6x9zDzqMyPuya2+i4/nzW48RwkJL5ZndGyDUwpssppypQmEIlTs3oF/4anzuZ8QuhXG4IaDGCJMCU9cnmzrfxo0MephAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GlVryQJE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GlVryQJE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF320C4CED3
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738094753;
	bh=i7WJU+s3s+f9lD92t+xBRzIXN126WWkASNajigvghjo=;
	h=To:Subject:From:Date:From;
	b=GlVryQJETDrqjPtWuRxTrzvuMvJyvsqkuqS4VvKcjbNi2oO/pDF8IUq4sDZNFgywN
	 TZn/GoEzzZ7Gh9ZErIVLNKxwoporLdfd31gbW2VA98IVBcDVj8Go6f4+GOcLyHm4hw
	 c7qhrGYEW/rT+5S0EcskUBwE6R4TMFXAhgJwwf3Efy2ZkENrWwXoXUe39WRTx2PbTL
	 duSjV9d5TbxRHohtZ2igTJzi8+u4Hi8sV7MNEzLfI+kKp79Z7GYTsapEAvzJv1tOCi
	 4jtGm9dkK6C/7YtYmnQjDd1AvYaG8BPpsElY5EJvvX2JxrIdyjfjzM2p0uAvvXkDfE
	 8htsI9VRoyrUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93403C02190
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173809475359.21605.14897012548866543960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a65be77057ef22e0acfb6ad63b517259ea6f448781f674020c15b3b3a0488d6d
Date: Tue, 28 Jan 2025 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738094753
