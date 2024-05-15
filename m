Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AAACF9CB
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 01:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715736143; cv=none; b=PIG63DN3mMnRtGug+eQaLvJEZR0FrIgAd/QtU7siFud7vxyllSGGOIWISSIsyU5P6NI/3zOw4aT/bPUWAjqhXcrOnlexFYwyO7t2/rcDe+0OHkwD6tlJN88HvCISUti+mhCNSS6pTLBnqmU/8RfukzJteQmipIQewAA4U5UjFbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715736143; c=relaxed/simple;
	bh=YKNijWDUHa7/rV1jhv4KaP0QluA/VbjOWJqGtshAajQ=;
	h=To:Subject:From:Message-Id:Date; b=gc57AuqdsYrdMFDT2SLK3TeH4ygX+bl/OZb7NcnFYG7LbECXjpQG0pPrhB5IUOG2xKYPbFORsj4A1yYWJibSBZhtShuk0bwon2vbKrEWwKHa1SrQkqVJN71MSkch3FD5Mhfp5jIzazU1XGCxjzXs18Ltzn+FK55wcr1KoniEaZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SxwjIfh7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SxwjIfh7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04C2AC2BD10
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 01:22:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715736143;
	bh=YKNijWDUHa7/rV1jhv4KaP0QluA/VbjOWJqGtshAajQ=;
	h=To:Subject:From:Date:From;
	b=SxwjIfh79O4yHYFnfnlxEPQq1xY23en0WfT1ozchb4h2vNoJ2ayYAQNb3RjXlp5EU
	 DvrGMVEao/kmtOeLha+U51eEeAWxES2AonMwMZI28lsSX9sxudSLByiBu42cFY4xAx
	 laQGfiYemo6a9/vzVXBjJ1b74BjiQQtCPUQBPiIj3yPdUkiB9eJt7YG1bisMouzXUz
	 qAGztWagDD2Tu3FgIkfLhl44qMs6CoMuETa7f/sD0kvizxMYWKEXiK1QUyLCJwKWa0
	 AQ9xGj/GOpZmO/o/J/eDRplI27ev+SMCE2Lfhs06IwclCEfSeDvysY+gHN7rC2Iw72
	 Xq37RxmEH98Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E526FC25B78
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 01:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171573614290.911.17461818310415930916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9604d323565d410169da41ec20dc3ea9b9169329d1b3e79aebd30ad1c1fd79c
Date: Wed, 15 May 2024 01:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715736142
