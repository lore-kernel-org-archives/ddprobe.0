Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C6CA15667D
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761352794; cv=none; b=IjHNC4iMRgs4eW61ivEmsRdx9+8lpd5At+yaLARhRqxusSxn9+sLqABce5NayjTV/0lj0x5Fjwna7bgSkVoslWtZH0HNkEM9LBuBRHaOaUN9XcMfemXSIUou+pRusbpJl761mthDqMkV5+rzQfOXEWvWiEnUgLyyd8qyMJHjjtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761352794; c=relaxed/simple;
	bh=DybdewRfODS4nfWXzYLeTDtq7RcHvIqkQb47InoyhF0=;
	h=To:Subject:From:Message-Id:Date; b=MnvLoCOOP8J2M+fVIzZY0h+52e92RRsKb4PXpwqmq/Rx3SPDCRTAspPtl+q3r5KCQ/Vgjx6r1hs+b2ZfOiPduQc8V1ZGnhUWY6jx40hwXjIchiPStNR6GhvFd2lLt7MQP9zqH+a+7skwqn4qvrfUUEMLWJtgadcK9BlUIR9fu+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XJSRhN3u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XJSRhN3u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72EAC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761352793;
	bh=DybdewRfODS4nfWXzYLeTDtq7RcHvIqkQb47InoyhF0=;
	h=To:Subject:From:Date:From;
	b=XJSRhN3uMl1ZAeEpWJJiznQQb7S/WVPTzmX4pwrGqWfYFMWuDoo9HATlodSdhV1Bf
	 l7wRJEkLJpp50WaleHbMLUpY/aMvrswujIPWLxFCBHE6QAiRc9FXRFmuqiU08Hg7yz
	 qVzFt2zYFhTdpK6U7hR4sBKvY30q3ne7LfQ3yW5c6drZn+DaFdO+rdY2P/iMN6wWEs
	 zYbIk+mYzdDeZqew/NWk7TGAMn4Ne+q+sgLWv/kMfmtGnnMnZCgZY8b/614Ylcd90H
	 mcblrMjsY1OFK0qiBOa3KkLWrTermP506DF5WqBGq1weOgPPk1hdJ8tozr1jAXIafP
	 KXfZb3f61NHPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92809CCF9E0
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176135279358.7685.5416774825798387326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c63a4e23ef298da6fb45f3e19c065572ac4a0c98cec6bfd0bdeb03c9fe7df16d
Date: Sat, 25 Oct 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761352793
