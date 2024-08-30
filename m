Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B8BA16DED2
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725061554; cv=none; b=OcneF6JKv8J+nddRv+T+saMaLAP17UhgB6FYDEq+xYxUXyYXSXt/umyRxFcnFQ/JpyzBbAsst1oJpxGuIoh14E+fOuDK38tuWX1SyvyOgmaiGn1drCYx41omq6URpz9JfUf7/h82dPGMpQXeV+Tco6C/ZWEsrMt6v8CfPTNjN/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725061554; c=relaxed/simple;
	bh=S5ggEtAs3fYvx6KnYn/3YW7DvcseHcQmsX7gXgTdloY=;
	h=To:Subject:From:Message-Id:Date; b=JrUMK+EDID/9xKQwVO3x1GWLona3mJU93dqcjDOQDNfft1Qfvu8YSAFjWMtmIHER4+VQms4d7clxHbbGoTfvuoxDOPzFvqnK0vEKvsj+c6Dtn4sMh5DNYt+emXDhXU7sf1QqQD3oVW2zaVKgpWn/l0fTAGaFoUHABN7HGKeqAk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GDCDEi0w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GDCDEi0w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F78C4CEC2
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725061553;
	bh=S5ggEtAs3fYvx6KnYn/3YW7DvcseHcQmsX7gXgTdloY=;
	h=To:Subject:From:Date:From;
	b=GDCDEi0wwNabcNPmbyM7WHFsjtGdqNZ50AnZ5ruhnejjGDp+q4iwjV5md+LmFhai5
	 Q0bwjRu9XrTbs0s9Aif3AQ429rIBrqtfdNMB47TvCFGc2tP+xZA9EksDFVzApHPsk4
	 crWMd5MQ06oxuYRsnmxsunH/kCLuWWd8tqYO/cV4QWWFGauw12d/9eUWSRkKFUjkkn
	 R3oHct/HLkHqoSU435tajcAzIM76ZuycHfrJ57YVx20HFZU1cTz5gDCUMIQfeoe7GU
	 Ixsg/9VXiffTd1BZPVbd1ZVLd7ksN2Hfx9AwbvFwL2SwfSxHE7vFq4HaynIvhbiJ7b
	 cHWjaa2lBajfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B2BCA100A
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172506155360.16122.12733931184406165329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e22bb3cb83e7b754efea638234e8052f76edc24efd15949398588c4be6882b29
Date: Fri, 30 Aug 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725061553
