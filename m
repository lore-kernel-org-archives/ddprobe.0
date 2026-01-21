Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CC271DF97C
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 19:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769025234; cv=none; b=pfsTScs4R3Sy45u+ktSnsQArIfqUL1+Oh3YCDs7egBEP/VhQ7LxgQBRDSvvP3YJ/bBcMRP9kSulP6B9gBa8ZKzhFYZvO5TN8s630j1C7AXgO2iwBpBK8V8WpO1CASvdm/4TBQ1yWL55r8xmUifIeHxeqygpRYUMNDx3Mr83mdBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769025234; c=relaxed/simple;
	bh=zeojR+PUkbzrYV+YKpNtTn42g0fVPUcPullIKcc2oyk=;
	h=To:Subject:From:Message-Id:Date; b=anMnang8QKCXr+Zw/cndEFetN2CHu8wb+ieodOw3bi8bo+83lhM2xKlZ2l0S9IBt6h3xvtMXWOKgtMTSdOmRtNDSOydEVgGgLduGG0CNJ28zp1fddil+xDaN1/y6r8rt9MHFta/U6VuE9mjO55MukhsAb9HJqODzYArfxkgVjsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LhqLTnTp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LhqLTnTp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05F1C19422
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 19:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769025233;
	bh=zeojR+PUkbzrYV+YKpNtTn42g0fVPUcPullIKcc2oyk=;
	h=To:Subject:From:Date:From;
	b=LhqLTnTp8M5RSnPcVcVVflwXd4MG739eDJ4dnXrKZP2XC0GXrhHn70ydYCu+xzTKC
	 /q9GafoloEUtsp2hyfZhhPiDiwt/aqUQLQpzy3cT3DSegZ4oTKdrOaDC5XK4P2Hd33
	 7y7FNYGoyz+yh3/32c4o/y145Dl8Un7Dgmj0mKpdtohe8Cz8mm3ZhkMsbPgfzNYi+c
	 Ah4YUTKS2bvsg9n+TwGgH/mvCKp0QR7p72QpwnKBs2qLNyi1prNC85+vhgH6739Lwc
	 pq3BTNoB0JEqVj8ZaDTMt5XLJU8hGLHk3cfX/8esYNE7QZfLYbbBzkwKBmwzRbjUZ9
	 pUItxQ9vTtByQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911A7C44536
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 19:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176902523358.17931.18323871000150813720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b1c3e8e5616f5adb919dfb6575f9d5d6faae8c9dcde5ec31a77c5c3be1eac45
Date: Wed, 21 Jan 2026 19:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769025233
