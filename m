Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25782318157
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 11:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765367574; cv=none; b=H3GmM00mfVQk1NfJqESQvoMpcWNdr08hE1C8vo/KL6y2Jcl9RWdyHbMtEJZKIiuwKRx2U4xE8tH+X2glKEPDS84f6aILedEDrcU9oAHK8JMdjy7h87xcSRFpWZL/KO6DKGDjf8bCUvb0LnRJZ1BL0b48NwZk0dhCLLwhCI/B9ZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765367574; c=relaxed/simple;
	bh=H060wdZpZ70X6BA1zEYwZi00L9QuSpwmsuR8wZROQdM=;
	h=To:Subject:From:Message-Id:Date; b=hp/Tr6ETlZ+q5T2cDEz0BfjwUODQ5EQ6V8XsdObMGHnTvMGBGiUk1nnjEyLKp0qkSsCuAzVG4QV2lI/bTDeIi6Z2VBWe/Lz5wpQEquDae1P0ixh4ogBPJ0fyoJ4bhVlwiexdFpASGo7svfgm9kqAq3Xi/Dm1/f04du5Q6cGu0lU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hN0QjK8/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hN0QjK8/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA673C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 11:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765367573;
	bh=H060wdZpZ70X6BA1zEYwZi00L9QuSpwmsuR8wZROQdM=;
	h=To:Subject:From:Date:From;
	b=hN0QjK8/lhj9pydpNOWx61xIVRHMtNbuqKT4bEfcx9f6ktC0yI8353Usn7RQ3HeRx
	 FWB4DfPnsQFf/2w3oo/qpEHTYR9fCSGVle5ziSv1tcrTJxM4vpUao3lYqW/u5GBGtp
	 c4T0h/2XRsZtfhw5cfQx87cdlPawFhDxqEnZvkSODA/Hfi+hLgDK6SiZUKWoAYTLia
	 HWO+so+JxlyVw0v4tsh28MmsxO2Ep3XHN6Qn8mRNV75CpemHPsQNXaAEj/u6aCegLH
	 p+9/ki8RxqIUaoz+mjEEdaq81/+ac4lJLC9v69TNqNvWA/u1RNC9lzE4FjN+MzSy2F
	 gpJT8ZNkksUVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96588D3C52C
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 11:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176536757359.16752.11553231703909431115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f7a761ba0508eee05948ef8214a13c2ed8c33e121019061270a41bb6f0e37d4
Date: Wed, 10 Dec 2025 11:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765367573
