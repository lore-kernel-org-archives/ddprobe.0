Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B0FA2FABE2
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756899595; cv=none; b=QQ89qPEsce+A3bfBvODlhSWxqVhJjqd/LLTGr667F+HMp/iu5hOC1V0+VTk91jFsGFVUv75JJwbEF+4RExjqPpjbYp6Roock/FcKZuqHDaqKahnYvhF0/N0GwH3Os1jlt3mIFO7QevQFl7qgC9d6wLAu3pKGykXntte0hm8O73Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756899595; c=relaxed/simple;
	bh=8/xmcemVxpWJFbLmhKGuNuas6AA559lMuhgniiZKd2A=;
	h=To:Subject:From:Message-Id:Date; b=WPGKPlj696YmWfTsk3AMOSxenuKqDwRLEq4MXX1GzNyimGa5WVThX9SwpPkG1BsSQSJtQ7p21R8lzzRZFBpYp9Zrbr+VJdkFW5I6zxLKJCsSTd01s7otm+drrGZaqdovFJVEdwoGnvZX0AwVJPgvFzXGbAJh1WeEl5Ihssq8B3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mLaSTkyW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mLaSTkyW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B2FC4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756899593;
	bh=8/xmcemVxpWJFbLmhKGuNuas6AA559lMuhgniiZKd2A=;
	h=To:Subject:From:Date:From;
	b=mLaSTkyWRgNBy0gMtsi2xALX8oMiOq+LkZr5JG0qj8OqGKPLEebDGP2sE9UjIrKxs
	 fErMTg28liWABWNpF08cs3hx1DTTiQfn3cF1brms589zg2vbzfXMKlBeqsSnUlKiE7
	 O1vDITevOAylQ+XjkL2Oqw0119Tr0hDY3mbnpqQCjXIli2lvtsn5XzYrnQKKtpQvUr
	 VoR+lUOao2NZQ5GJDU224w0cikZOkk3ZU0+yTwQX1UbRJijCuYaop7aU7Nw1TJPtCE
	 6PHCS4lNjyB60MLFnHbsnfF0rnchkYAYYlrCzxTJozK5voR8y6bwPhgAv496EM+o3g
	 R1Nle6RiyFF/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E87BCA1009
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175689959357.31075.14795242983106834000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 304b62c44544c9d5a22174497d54328ff61f67ddad8076d74e9770be17a53101
Date: Wed, 03 Sep 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756899593
