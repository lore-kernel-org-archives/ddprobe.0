Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27DBD283695
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755127794; cv=none; b=FlOI0ktNdBvnaoMdCppSdW8Oc4uA+9783sjPaBaQjDnbi2WgP1oD+xcJXp1JIlJKQIVagKU2DOmaMfuBdNmtXVINLAcdEbqmQCgwBH0jKZ8oJ5PIckPHShc7j+YurWCuaMeLgNDLUi8J6WWmbetdxHABLd/joOXCwhuJYcTVLDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755127794; c=relaxed/simple;
	bh=0xa6qvtO38o4FeMBc/lBC9NyqC0GxlSeg94wmca6Q6o=;
	h=To:Subject:From:Message-Id:Date; b=F8i3e6zsATZIh3ExWMpXKkBIDFnYG/5FOIdofyQAEkeXL/MGCKSQIlljxZRKoej2kcABzATUMJfKIvW83Ndj7Zcj216XFGAE5nZIsAmtCHzv6vgNFuCTsftOx6MJtNdqhCU2dvWTPyal3oUZzQ3TX6HcRxUCK5QbV8ctDx90FA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GBmy6wjv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GBmy6wjv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCAFC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755127793;
	bh=0xa6qvtO38o4FeMBc/lBC9NyqC0GxlSeg94wmca6Q6o=;
	h=To:Subject:From:Date:From;
	b=GBmy6wjvML+rDfGzpepBPARvNqLiUdrZitwPqdQnT87ocdwzf2YIHJ+5gYY+H7os9
	 n4UXsHvhOu6C1KzUAVgL3bvhxYWv925DtVOTTelTe/bSbTIsaYC9Rcc8zb97JHCwU0
	 yNLiXdxjYrHi0LncQ0ZJb2WkQqUAMPpLskW2uDVB3b2ppey8SYWX/ckb+F9e/M7EUN
	 c6JfUcwE+TiOQYw1oK2ZOOfJJSh3yJf9khUPvjYWFEO02LesvSDhmKk65ShQpXSsXM
	 7KXRyB2a/RsJGLDfMw8ETs6+s77YQVkEoNjKRgp5lb5v+ZusRbmsQKcM2YhEBBuTZg
	 tpk9GM1XX719A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCA0C87FCF
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175512779358.31386.15216358158717157725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1f0e075e137834ba5cb8e775d2cc80d5237c93062a9362e8753c89f09382b1c
Date: Wed, 13 Aug 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755127793
