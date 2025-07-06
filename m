Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2294A219E0
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751829594; cv=none; b=lWHux0jMZiVQxdCyd7Jou3fpU+k+LRhDZ13pM+UfZzQBySXLm1OnNXDptgwjYLq1qc6QSqaV7GePbjGLt5fO8JONVZpgcM891LJZjiQ17/MRcwll7NW1IUR5FVcbtsAdSDQmRO5U6p1Lgec2Pxw/TAJmeAGgScWpr/0YPxL3EQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751829594; c=relaxed/simple;
	bh=u1HrSPHko5OwkttntSbNth38z3+G36XHuaxW0oq98iI=;
	h=To:Subject:From:Message-Id:Date; b=StqSEjtWuZAWd+Ax7nmH59WMFL5l/3K0YBn7AqiEyu0VXyuMvn3B3hPsIeeqyhFwT9QlqKopJy+APUh0E48ZehB/CbwaCfSnuLBHodVAw7YeSTSdi39eHc7CeQK3z+Iu+/NwUbCAUMRahPX3iOcnGEGTlgeNckL3NOdnmpOmRYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ks/pJIWr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ks/pJIWr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A07C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751829593;
	bh=u1HrSPHko5OwkttntSbNth38z3+G36XHuaxW0oq98iI=;
	h=To:Subject:From:Date:From;
	b=Ks/pJIWrpE/XKkHzdxPyBhOmUb3qKIDsQYmZIGi5NmFtd+JU3KtiRmN/doePlPBwD
	 juIq3Wy6qK8fWXSrFVcO4Bhcrlr8srHUywsIddOHpKY4eHkLE57BMgBSB8yfpRijLm
	 F4sf+kg/GFOqWjua4g/XPLPaQK4SramUqIubxZ5ACzDMjoyIIDqvriXFRe3xpbK3Ss
	 yhOUNpYJCcHeNFissrAr/KeqBVqugJHrhp3bHdzuSnP/bjXmrx1dVlqxUX6PPTcN5J
	 FAembK5nWNHoMtEgzT5Ii6CYrEwHjBCWG+D93NjF3pvERqHoYA5U+Yb/2Y+nw5f4kM
	 ycY52UaKG9zbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBF9C83F03
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175182959358.24185.2247991711508719695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7bd297c6351f9c95a4ffd5e87e5e12482f6236cf7f21c4b5e1330d118014acd
Date: Sun, 06 Jul 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751829593
