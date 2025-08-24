Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 344C014AD2D
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756060194; cv=none; b=usRDls48j/mDAumqHKFqsEx2chxUBGUKFAPRIwqi+i83vEhl+LCAJcUrAZSgfFlaPHheaCzuG0f8ydv5UgaLoj3JUCAPnq3bkmzyX2BeIV8AawMkqQafc9qA/7HfdpG+pvy+/pxMJhs36GkLMwMDgcV7C3beSdgC1Lrp5JL5HCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756060194; c=relaxed/simple;
	bh=3RmYl1XTXw7MLg6RjBuuXh8TAHbYFmt5mqG8dJn5OEQ=;
	h=To:Subject:From:Message-Id:Date; b=am7H9uSR4i/RgsCNjvLHS8nB1cCU/TCYnGFgxC4H0/B3YwT8LDtSQkhg1yWgDDqGzxoS7zREMfulvkN3Egd3YrgOXX3QyOlMSyUedL81r00Jf0JGESHrfeYlIT8By6Pq91DErLaiFq9OzLvzNVrtkm0ASs9M1rOsgvkMf4junZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DOYHWrY3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DOYHWrY3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A167FC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756060193;
	bh=3RmYl1XTXw7MLg6RjBuuXh8TAHbYFmt5mqG8dJn5OEQ=;
	h=To:Subject:From:Date:From;
	b=DOYHWrY3E33DYUwI4ZfMQtTa/17QcUc19mT1slP8/5iDD1xXsWYW9PLRIw3oA+vli
	 0Au5tNQ6kVoHai5Gfz5LTlU1/6bfTmri3VUmhH2TgCnVzN4TIwza1iG8Pm17WRvpeA
	 Peom5hUDud94Pb12Ml7tyY7RrEwat1YDkTveU7fUBUxWtqVr3Vh62uMGRD0FIVQ0Rq
	 LDcIYQsS7nZhxNyNmjNUYzL1Pry3nRwvRnYnZpPHgH03rpAtmjn3nZ1VjMidONS/+c
	 goNFnRxRda57/zKDNXmA3xB2d2EAhFQAStL97IP33eBUT0GFuNKmi9O2B4DStDP2RP
	 O4/neAqSI77Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC2DCA0EEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175606019357.6817.13822213592350375416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c809e891b80841ec2b6df68ce26ce2ba5a7798f9083556ac446de2f5df8b49af
Date: Sun, 24 Aug 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756060193
