Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E2661ABED9
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753087794; cv=none; b=N8GaxhV8xgdLBrje1sCuWCoRfq8UUmMeahLnodwDPmCPzGtEzfkeoo9N6UhfJGlAVWNL3oNRrpaYehvQwXn5YUhnd6cpgi/nBJP7nbcbo4ZNha+F6+Rdkp2so3VE7zal8EK8CoESGDbtPniCz4DhHTx+emXuLdw3Zu72F5z8caE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753087794; c=relaxed/simple;
	bh=ZwS1Af2PhaPrelkUM2BO6Z8TWKB8TKhfnzQf8Whvmf4=;
	h=To:Subject:From:Message-Id:Date; b=svv7dybWSoxWyQwDfhDwpJadkcT7ABCsyH4k6pKeVpHiOy+SImtZ/eLY2SY7LuK0xbD2aCWVI2H28ZMRL6VFdxnkuauhAQv3dpG5tADSRjNRCBejW6x2GSyYPKFqTz7MkJ5tpWX2xUa+TVQ1MWHch4JTdQSe54qsRAwz2a9FGUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SEQqBZZ8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SEQqBZZ8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A120BC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753087793;
	bh=ZwS1Af2PhaPrelkUM2BO6Z8TWKB8TKhfnzQf8Whvmf4=;
	h=To:Subject:From:Date:From;
	b=SEQqBZZ8QA1mzyydPBdpTdGDUgZ2TWJhAGrnHfIRBLJ1KRkLXS7DRfklESFkQti1v
	 ihZAO3XhEzQqi51CC18KaoZhP7a1+OpqnrfjBjVr7VVGXoSdlcd5k0VoZIA23+UMFO
	 t/mFo+7TJ1ZVboyQPMsxe37bSnKnYcE7FfHYqWCmzbAUQQs9M7J7O0PzVtOITeTmkP
	 bCqjsmww+WCq7ygPbLODw2dAxCT3atApeAhUgs15oUUw1Fog/ux7AWDP88aHcGvFq6
	 nwpc6ojRNXPyDUMOsOrP0tpxZfQfbmhbU+fWJQVug8kH6oa+Boe21a6pwlF7HxY8Bt
	 QTVVvzUrMFjhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9A4C87FC5
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175308779357.29277.11576346984211816095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e95dc77b3033ef5dd16a644b52d728c1fd61c13d4c5924136204af13b56f1a1b
Date: Mon, 21 Jul 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753087793
