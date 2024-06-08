Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61AB4176AA9
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 05:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717823243; cv=none; b=DhgCTAR+OeioBdbuYwpoShFHIn35hOmsGNLm2u7FzM9VY4GDhZPfy3Cgxh6TuymJM2me+euxpOtpVVvjIRYZHcmgJF9xRagV+tGFgV46gPhLueZdq0hi3PN9Wgr75zFSAprqwOMBr2cBXWz5CFOkxWt1XL6fChk+IvnAxxhNvIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717823243; c=relaxed/simple;
	bh=129RNfB0UHLcOEWMX1qSLO+xKc38t9wcz8AzM4qRnw8=;
	h=To:Subject:From:Message-Id:Date; b=fJkAhfArEVH4dMb6CXDYntDZS7azFwA+ZskAq6tHw3r6lbyU9xUmxRqBEHBt0q9BQXu30pruf8+tTn6MFU/H1Z0jKVLEphOberyGaPKN1rYJNAcZas6/wHMH1S/oR/nwwSnAXHE4p2Qz9ixeSHN08itzPCzlQhmdnJVrGgFoDD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vef9XHac; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vef9XHac"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5471C4AF0A
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 05:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717823242;
	bh=129RNfB0UHLcOEWMX1qSLO+xKc38t9wcz8AzM4qRnw8=;
	h=To:Subject:From:Date:From;
	b=Vef9XHacn7qpg5/coAgPPTN2Y0sK2m0luaFh6C6LlAxfjsQJHtPG3ATIEhsPrBB9F
	 42Gg2C7IdG6OyWngN1toVpjvvBnggXUkzmMGGb5reTNvBR61UXlv5YVrDdze0oqTWM
	 X0SpvOezgKn+9VVYpVx4jMuhkXNDmTyvQIv8JolOi6Cw7KHF/M7V6J9DV5puVA1n8p
	 HDvnrC9P1h0w2rGvmH4ex2zOzq1PDe4jOFkAhnP8DgaAWCZe41uQbabrJIi2LDu/d7
	 jRxg38SzW9Xy0cRBm2h8xvBQL2wCVlZhImfS95+14+8rdp9SwKgTR8l+iz6IqoXiat
	 wSAob5Ui6HErA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5F2CC25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 05:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171782324278.24079.11400268065489130573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73f2eb715a8c2a02ac4829d300d9e0c0182eec101bd08a3c65b6e1ff6073b013
Date: Sat, 08 Jun 2024 05:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717823242
