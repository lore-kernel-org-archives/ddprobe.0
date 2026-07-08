Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2AFB37AA64
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 07:48:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783496915; cv=none; b=VVKKPhuokc20XKP9KFaSjYf4R9P1gi4PcoLbSF9SdMpxwxxTy46W4eShlSGbCIkq+tADzs2iGsEAPyrpjcnE6K9wMVKvZntt4nUde4k4oVFhDh1hkL0GUgkox5iZ8SMciaF9Sijs5KcZ0Zy8e2dSXF4K3qhj0QdxaMpBS44TJhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783496915; c=relaxed/simple;
	bh=KADEfYfEULr1iLxpPv1WNwDGY70+5A1vaSep/+5rCjQ=;
	h=To:Subject:From:Message-Id:Date; b=PLt0a/BwUkBWbGuwk1tXf9jAL6s9R5cJmYaN2THKK1matQpi9lMJVxIUyaFNJ8TAyXcDknkl9Xdefjo66WVNyo/hxUc5U75oLP/qlgjhgASmZy+HVh8aHubaxFVzMZmxjkHJ2aPmHnaZ8cnWCkMfCiDlDgKIGIYiHi6SRBfmZgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=plhIHdwp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="plhIHdwp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBE36C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 07:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783496913;
	bh=KADEfYfEULr1iLxpPv1WNwDGY70+5A1vaSep/+5rCjQ=;
	h=To:Subject:From:Date:From;
	b=plhIHdwpD/J7peCbQ/x5P1j/KXytPVjHqUEgb0GjeLn3c58ukyAu2CJMv8fb2q09N
	 UsUeMLiF/ZxTqbZPPykfT6MwpRPumHmVxZgu8d7bPyKLEpTQL8CVBcJnATDHHscQ9F
	 X8rkEC+0MJ3Rsp/degQVf96nJsH25tmgqvoGLZl4+lxpltzd4RWkFtLeKD2uldNX3A
	 v9uqTpQ5dh7TPY9BZw7kPelV3maijCPbo9qVKa4Utvhc1XAggqaQcAO229nLvEkROP
	 ybjdGgBZ82n6gR6/wJER74PT8SQtx32j049WMPDaU2jbnFd2vQiPNWw2+T+Kbx4uR+
	 Bn+dRzikN59RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA576C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 07:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178349691368.8799.6433028807272167705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8880ffb9a653ad2359faaeb81eff1c7cbd6ed32ad8c84f78726b06ab804c5b43
Date: Wed, 08 Jul 2026 07:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783496913
