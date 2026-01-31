Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2371E21A444
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 06:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769841834; cv=none; b=Fu1JeEARUNWzOk5punSoILNQ0B4Ztqu75cefiIGKrYei9NfsbBmRPvQe4LhZb3ATmNWLtxH1TVOE1NJz1YDo7Q1YxLBcUHCGCePk8+kPV8hGPAzzGGNN4f7uCivb6BIa7tc31W/6qMRkwL18loDcLx7s6NXeT3oFpF8YZrSjt6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769841834; c=relaxed/simple;
	bh=P/vkARjJ/3jKbtjkKp8HB+ZcT+3NfAYjJUrgXvjByfQ=;
	h=To:Subject:From:Message-Id:Date; b=l5GKQGKVkgCMNvaaDOE+St3pOZ02UIRX06C8MerrblZC6EIYmfoQduVbxo60kgZWvUkaXDZbPDEm0Anq+SI9KhTLjPk0kFr3g3oONnEadGQPzvJ1DeAOIOZ3xyDe68fkoIPYrc+KwsiXv9gEWr2XY2J6/PJ+bNQmzKKq5treIeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cWFmw+Nm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cWFmw+Nm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A660CC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 06:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769841833;
	bh=P/vkARjJ/3jKbtjkKp8HB+ZcT+3NfAYjJUrgXvjByfQ=;
	h=To:Subject:From:Date:From;
	b=cWFmw+NmJ1CT7R15wChT/9z4lGhNpkMSzntIQyxGZF/yqM7/c6m0KwTQ3B4Wrc9GB
	 lPmGPJlbSobXvtG5u3J6goCU/VnJITMRrNmKH1sIs+ZK0z4p/BtQmjN7K9t8JvJ0yZ
	 EL2BREhPIZs5jC6/69f99+r+fDMa+SCcXiV7snZBMkvLbpNEmaBrjyQ62XpnSbd4b5
	 Iqg6NS6ysvdjQka9ZP8dWg5BpEhNnNp92a3OkRtMB8JdPhHwA8cWmOPIvNwSo4lEyj
	 tufuFNH6czSGTTtjIVERQvdth+xhWlJfab+oxVuCf7aKcmOY/7loUB/m7fXLfU5V7W
	 RmujUinF3fXmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953FED79742
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 06:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176984183358.25959.15792070275356907800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d15e62c6ad49272eeebe3e113b018faf2505d1c0e4c950ed0118324931b24f2
Date: Sat, 31 Jan 2026 06:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769841833
