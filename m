Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F37A5282F0E
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 05:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774158294; cv=none; b=sR+6S3cJDm9soOFAkUQWLKVvcSCGnkk8BfnJn2ZFVidRKooeX3twMCrq+BUEe/9boHXLPefe9FzHivgJ44o8ObxDoo5HBSwCjZ1U26I0f3U5iT8F0rzFduG8LDurAuoQP6h3E6ZfJJwegGPxWfkS6KgrfkWpF2W1N4nkoMdufWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774158294; c=relaxed/simple;
	bh=v0dftYuBQ2HHmCJMvRoSMF3kzjni1Oxl97BqqjZxRVw=;
	h=To:Subject:From:Message-Id:Date; b=s/8CP6sQPMIIb4TSvcpjyfi7YY8+MK66TDPzpI93jFqHJ2W8CBZFy2gzAIXbeSJ9AZe0VCtiV7DovZKzgpfDjMp2j37Tbxj5UcyfWb0ebpvKePCuc2VnRj7uHk4OGS1MRMtif1n1zivEe7S3cc1xuAm112+VUC+5bkoEZPJTVH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uYyuG517; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uYyuG517"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25E8C19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 05:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774158293;
	bh=v0dftYuBQ2HHmCJMvRoSMF3kzjni1Oxl97BqqjZxRVw=;
	h=To:Subject:From:Date:From;
	b=uYyuG517pQLUUKAQ196sTILrPib+G/Z++lG3zriDfGKyI9e9yTIIWEmv52RWOkrxP
	 CPMnpPfaO9PLqirIyWME5IO/xp2gnJWzUy8Mr+r8seov9kwkhQMAqg/2KX0ZB82N+6
	 fSHxvVEUSexZ4JPXNvap0hyRQiCF+cHWqbbRTZ1RhcbmSBt47OYDbw2lSAxkOLJfdQ
	 H+YOfhpJ/55dIDhZEkzbiM5ep8h3kuS6cFzjmOz/7yQ1XFg16JxfFK/D9N6sutmbR8
	 fdWDDvovDH3VNVk9a1t1aEVXKHkgl02t3RpeNU2jPp8G7RTYPnsJ0vBqOUHyHy9sQX
	 NWpAXqiEyAUqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F56EFC72AA
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 05:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177415829357.12210.981263060056348611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9304eb4d86dd129900619b15cfd1818031768fc02c7a1f01991a2bef0501ee4a
Date: Sun, 22 Mar 2026 05:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774158293
