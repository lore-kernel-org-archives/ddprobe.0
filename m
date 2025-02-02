Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B4286FB9
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738459556; cv=none; b=BNI4+S26JPlpO0LB/kLMv8oTo7SL4xodbrrOZ+oI44q7qPI/Ti8T+h5VO6eIqh5xxfZzeFmNQzQuUgVeAPv7sI523DexXjS9p5GKBN2DHRxyVJdTfS1SHL+DzASRZ313Sx79znB5EK7x6LGP06ThjrtXyogETjLalcDWRQgZcfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738459556; c=relaxed/simple;
	bh=QNBsK8kjr3Mp8AbZ+dddeGIW3laxv2ctH13z2iH1eu8=;
	h=To:Subject:From:Message-Id:Date; b=AVMdv57Ha+ULkOf1m8J3HE0hqEP0Tq7UqZTa88EX9F3XS7hlFGHssiViklx0hDow3CQnEf4DMCQGF6FAK3Alvm7GIJKxFqUL/lySn1mhc2AElJGphtvhoZPmcrMYAMyN01X64rP0AX3WZaX/TID32UOIeS6b1jj7wLjZyL13hPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ibSJbTXb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ibSJbTXb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3694C4CED3
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738459553;
	bh=QNBsK8kjr3Mp8AbZ+dddeGIW3laxv2ctH13z2iH1eu8=;
	h=To:Subject:From:Date:From;
	b=ibSJbTXbgCfLPvl6i5YtrL8W8yJqgx2U11fbvnw9LCwXo+UTrI6ujgpEAVFYZAswE
	 9GqGoF4zsBVERTfwNWonCuZ/oSVO8sOerGUOPM3Lv7XXf4QNsGkwkqS2xB32CCyh0R
	 KUExWEId7v6OdA27cEJw9KfaNSzw8MeFJB1RB3Hh/HIryXSsaoTVYR0SjOKleOLh6q
	 fbTZ7e228Ec8DYEoG07yEIlTlqxyG9ozVYCrDlpks8pZTU3yR+NLCXz2ovFR7Yz4g2
	 +WPCry7yo03RZmqrGXLIT9CbfAz/f51S6NIjVf7dDmeLwEGySvzAcYTefHAZ1oa4s8
	 eTjLO0S1qvkuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB56C0218A
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173845955362.26391.7569579512031831731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e0ea56a117e0025c0c44f184a7640404a80264b14d4bc68a9488f7f58b61aaf
Date: Sun, 02 Feb 2025 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738459553
