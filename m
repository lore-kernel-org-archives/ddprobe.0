Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4083221D594
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 16:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740588534; cv=none; b=OfpOpn5ts0aQCvEZRb9I0VExx87rQ5t2cflhgATsevsrmZWEbQHON1a9nTsXDbrDu1jrjQS4llTotygKQ5chKvFbZ1BwbhnAeuQOiyaQtGe/R7/GMus/MZkmtgZk2kuD7Qlw7T8jPsoHxJxntMnkMW5EwXDbUzxAlx8ZlwUb6H0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740588534; c=relaxed/simple;
	bh=irgx99GznJJQ6G0sxkIcUzCkMubHQyj/IX2nsT2giOM=;
	h=To:Subject:From:Message-Id:Date; b=cLkLHgXv4kUKuS2zRtvLIJqEYelJtFvfNCuYhMiool7Y2KTOxmVGfauINUfqbrLonTFr9IynFdRExVbUO4u2g7UB770VvDPXSJD4QJbpWgo816aT6pxPN6Y8m7PXzvPIm8JkOejd5BYHQ8TraoQiYN+FviqJtwL1Wi9ygbTeJ2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GYgmkK/6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GYgmkK/6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54F5C4CED6
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 16:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740588533;
	bh=irgx99GznJJQ6G0sxkIcUzCkMubHQyj/IX2nsT2giOM=;
	h=To:Subject:From:Date:From;
	b=GYgmkK/6ApVsbcfnrdz1ynB/6AMjQe658QivkNXBoZCLGkLJK86ynG44LZ27ly/1S
	 KlNkOl2pHNl1uDUZ112sV5G+JLjKYUvOjzEw5CfB1XUnG8L1Q9U1BhnOJ8YwNrSmzM
	 AOG8etoL44m3CIG/Hq8GgqPIzilbKM4W19Q50WaSS50imQEJvKAeY97u82aBBoXcXo
	 LvNXgFHvE54gS2b6a9Y6xvyoo22fLY4YfbPsHQdMawhLIU/qrkV957A+Jea7/4OAml
	 czLNuReDqmFjtQzrBntPmnt/7o8D070kE0YHH6vi6sYKF0h0HMT+XmxsbLe9wSLJgq
	 qK18v52kV83lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92932C18E7C
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 16:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174058853358.23936.7177397757141789200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 392fac83058d4c3ba4bb094a222124cb6b4fb4dd9b9b93f2521dc101c2341b8b
Date: Wed, 26 Feb 2025 16:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740588533
