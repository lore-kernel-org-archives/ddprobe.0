Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B02C1FD1
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 01:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707530297; cv=none; b=SxWqM3IYThlGvNAW7KVfuBcfCZLf60Df2wom4IQ9hTr/2KZDXWwOdUY0r67cZgMln0aZjK1LLoHpdtNXue8DMSbKt0GAfSTsmxt1qYnUHEGJMbmD4Dj880+Kt1puBGdI/SiPMRcLKIE7fuCsfKkuTsqiK1yTxBUY4UBb3NsvsWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707530297; c=relaxed/simple;
	bh=X26O4FSh0ugMceqCml4t9Zy3IFCd6rRTlX/pD1KVX9c=;
	h=To:Subject:From:Message-Id:Date; b=mp9u2ZrtH4LK60OCfqkVZaQzPuUxahnn5B6vHfml0THfDWqHtxBSHimV6BAGcB4UxRa+B8ts4MYE3ZMOxyo7uLLIm09ppqDW7+r4c9Q3V+r4i0JRUWRSnpSmc8O1QOVXA4MTtb84XHDZrb/otFnoG7iwU4bTVd6DSNdb9aVO2fQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jc9nTTKt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jc9nTTKt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AB5FC433C7
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 01:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707530296;
	bh=X26O4FSh0ugMceqCml4t9Zy3IFCd6rRTlX/pD1KVX9c=;
	h=To:Subject:From:Date:From;
	b=jc9nTTKtJD6Oem0233wxGk0KF8v+R8zrRaV+dzZNymy8hMet6Lx6cIoPuDtTWHSxg
	 f2MxgNS57RDPutyiIqy0tX7Vhp5/K84eXNihNj12NblDy9VxngkXmc0H19ntAC3elD
	 ZATi7uUfof9y82kXgIytQtP6F7tOpR59/KadXVviTt5EjscWAyY7EYS7SChznwipZl
	 tB6FUUuHAQtYmnC6gi+h2COmJFyjaQIxinJlwAwPjuGJhrQ3gsP0T9zn294bWcfgBd
	 uiQ/fIZN2QF+cs6E4jlwCNyvJsM09NIC4xu/63isxOl6F+GAJKveXUmT8eWtMJvmGB
	 FOhe9d0ONLtbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60C41C4829B
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 01:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170753029636.15337.6492765627904894787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86c52b2076f797ad158c859b65f61c1faa218e3a9021c492edd8d9b8070637d3
Date: Sat, 10 Feb 2024 01:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707530296
