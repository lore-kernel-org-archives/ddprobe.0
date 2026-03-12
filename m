Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CC0935A38C
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 14:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773325494; cv=none; b=PB4p7EpmYQiMoFqMWjEZ8LDNrHCNZPQwl/N0nwRQrtMCeIzxn/zqpqP612GgvSn2WU6DJLpstlUi7NcbrF5FbVLzM4eBewyAH5Fdmsm+lPQpJM5ifP/mbdWSpvGGD7ZtdLMKFbUmzk9DgpUP5TQWmYcRyzzp06xXfiy33Bps9QY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773325494; c=relaxed/simple;
	bh=jiskeJd04V4AAfp9J4AK2wV4hRPE5xeCz+cTc18JhtY=;
	h=To:Subject:From:Message-Id:Date; b=J9fZN/DA1psJh5nPNABGvUu7cOxfe2DU84NwxuXWimF1hDOnCvj2XPP3LyGm0qCt4FqJM3/3ZpAtNAVHP1qPHGMZxUBwzMFLLTJS8tq3iRYs/WEhcJrYHn9X7PubICS7yYMuG48LxSJk+W41OdrgGFZ1VI06uk8NnTcisekRJQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k8l86w8v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k8l86w8v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADBE5C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 14:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773325493;
	bh=jiskeJd04V4AAfp9J4AK2wV4hRPE5xeCz+cTc18JhtY=;
	h=To:Subject:From:Date:From;
	b=k8l86w8vU5td0XlsQ4gHjcOkMX4Ra1oTBklD5L1plWNlQr9RgV/AqCiL4+MhcyBOx
	 iGwtPagEoc7hInC5d1294X4chkdu9jpjOKRWneq2EHDwMzVsZuFh1PEKNwSYRSfQXP
	 em2otDuWf0ehGDlnkXeqVceyL8NPywsvlvM7MX6YHm93Q3AwB759ZXuTsNXfCrA+TM
	 6xXdSP1bWpDiUIfqeTQotZOcu5dzjopfUdd9io+x9PRWIn8aNEBbLsPtjnMnpkgtPO
	 TtVojo60DOcRQ1kWENLrqS9AeGgf5rcjDONEjD+liupc6CXLNnt899+EGrPQVqbzfy
	 UBD+qf7TkCNDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DDB2106703C
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 14:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177332549363.22177.2309985035882765670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2c97522b42854e6e06d4fc6bc1f16b25f48a4073620559eb48aecbcad605c0f
Date: Thu, 12 Mar 2026 14:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773325493
