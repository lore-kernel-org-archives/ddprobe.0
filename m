Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43A0D3BB30
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 07:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718006243; cv=none; b=faI+JgV2kPmk41xIfjAWJ8TPL7iE2XQgbRPxtCQDELkry6aKCnBhhWm6X7jW+bXArBHeih4myKaHPlKXFJpz7LMiWXtcxdWOp7U9Mlfm9gBLyxaYKQykDCXC8D95rRpbwWm8/FImtq+magEvf6T39WLjulvsbz5vdJwL/h3RjCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718006243; c=relaxed/simple;
	bh=ttJkKmN0yaBQYQ7AP8Tl1i8M84Zm+Y+5qYcyMSxw7Mk=;
	h=To:Subject:From:Message-Id:Date; b=fcXaqAXWazYondriZwliQUaF+jyMUedYvql/MCt9UozQF4zeRogYnmtGe6KTqT4d3OT/OKnun6aLBfRxVAAPbmFdcXkBGpxnHGzyTZXtDUMBGqzUWVzoXPYCX5oU2AaDjUniVjetOt87bfzyTXHeUqPPYv1puBqNTwJwP2BcyiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ojh4SJdh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ojh4SJdh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D58E4C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 07:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718006242;
	bh=ttJkKmN0yaBQYQ7AP8Tl1i8M84Zm+Y+5qYcyMSxw7Mk=;
	h=To:Subject:From:Date:From;
	b=Ojh4SJdhhMIHRFP6Mhjq8VNouVOAbRVBzy1AywIRGu+FzVQ+dKR5YEM88DkqqfXbN
	 U5r/Bv4bbfCTGyYId2SVmx3P3706UE24t+fr5zn+D3ewiiiEDsB6eIU31YZCPFqFvO
	 bR40iNu8jWj0Tn9k4pO9KmgcaxPq+EjQ4DB2FNC0VP61nbF4uWnWB9rJu8nJINj48q
	 0t6u9YiPQJ7BUZsM+/gQw+77f1PPKOUZ5/19820rdxxGma3ykHEStD12vG/Lkp3jhu
	 vzW3k0Wce9yT1NWzWaZun69oSIwUX2/080UojYd51j+xPMpLyF3OylXAoWRuhneHny
	 9jAQ/YhHEZogA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C59A7C27C5F
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 07:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171800624280.14671.8964704111384644638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c84630b0b0860469af70024862a4b0eef4de6d2c35c7849f183997267601842
Date: Mon, 10 Jun 2024 07:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718006242
