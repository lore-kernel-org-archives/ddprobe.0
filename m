Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 436AF1E990E
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749976194; cv=none; b=dasD8eT5AZQobSclst+6pAHPAGCXpHPjvJt4fy9AWAZWmV77jnlvpOq/AqGOG9xVXU3U0xjtS9UWqZO4NfJyBjDby2EYliRMJrHzNZHMrltvh/JhQQsEIMFqFTdfW9Fkng6f1ivm/hf8kW0S36FBBpQ9uztLkACa5qXymH0K95k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749976194; c=relaxed/simple;
	bh=oVvZ7dbeyqUfuAiojfHg8nm53weRCp2MCj5zS4/Y8G8=;
	h=To:Subject:From:Message-Id:Date; b=kVBg7jf+0oJhLyGaKO44MNdm5pm8YwrW00V80Fg2sqEKjcd5PYyRcYF9LIEHiRHjXgrVSO9rcuJYO7KeZNB5hgmAqvmreTjBPh+Dsgv5+AwS7Do4qkbRLMi60NU3Iju7c2m4KbQ0JYcfr4nlu2oxn7FF8VP1ZLWe/bEahLfioq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=usHgskvL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="usHgskvL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9681C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749976193;
	bh=oVvZ7dbeyqUfuAiojfHg8nm53weRCp2MCj5zS4/Y8G8=;
	h=To:Subject:From:Date:From;
	b=usHgskvL2YZ4D8PMOj17UFws4d5dglnGcTdQ91gQvFAh+gdVeWOZwLDtXBIVWtLDf
	 UBjypwtjw7KtjeWnz85gL1Jy4A5ini78nRyvlr5RvpeQGJB2RAyo7bdcN7HLN7guKJ
	 h+ngrFnCEth7bZ86nYsoz1rKePbX95di/fkEsaYMatFmnf08+MemUFQ3RdLDMJBG2B
	 YQY2cH1gSiXrsuOMdRdYllrrdwKCo2u1TfEpyJ1ErJyeywm4jQ+fvTJssZ8d0REruF
	 AgAByJeGNSqm6YJNbMbV6YtJYO2zhKWTtEynlxQvw1ksnFsUJSR50rxeeGj+D2qp6F
	 xR0Iqr73+mY3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9177FC61CE8
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174997619358.23732.15329938878868662908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76eac28f99b25aac452c0f605255e78999a9164d6304bbd3714a14579a5458cf
Date: Sun, 15 Jun 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749976193
