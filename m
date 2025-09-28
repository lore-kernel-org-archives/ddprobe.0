Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17DC51C4A0A
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759051195; cv=none; b=KSS3Dd1LoULaUBWsMiXdSwAjiNrk2QBihgl92opYmv6T5/UUtB1Afr+yJPASpxzZUCG31PnVJJAVaP19J6GYJNcUjOiah6JW0wLVhHYiHFHx76bD8nmlV+Q7H36PZU8tnbDWLhnEwInfqDdNKqr1LGQtK6eVdrXVl1lAT8+32nM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759051195; c=relaxed/simple;
	bh=J7xdTmBt9VBi2x3ZBm+HbNE24n4iYpemyDbeEh2OkPs=;
	h=To:Subject:From:Message-Id:Date; b=R5IXscCcxX4X5A9L10iwnxbHPxSXld+RYDoeb5ERtUWMUxYAtkPGYljqskpVTnrDBuS0j0R8ccX9jDYNgAZpyijDkWC4+JcX6pOqZphRWItjA02EOiXJM9B7fqGBuqerkv6UpgwcTDDGnfwb+xvJrjwdop02xXvHslBabgJYvC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m2ZjYMCY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m2ZjYMCY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A597AC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759051193;
	bh=J7xdTmBt9VBi2x3ZBm+HbNE24n4iYpemyDbeEh2OkPs=;
	h=To:Subject:From:Date:From;
	b=m2ZjYMCYVqIGRtWfPc3pKjgjFeiqkfycDdMNS9KTPdPv7GRuD7pdbMDvNycFOd3MM
	 mgwlHfJ5bWvW+gfqdtTbuYRkmYc7FnNw1qdkGMh1VPuYZ0DmB7H3euFOB0FF4rF8Vz
	 BrTzjhoWtBo0n3oRKiW7dfr9jL+guRFn+eXs4wFmm2gmiF1dpRFXzwu221WpyVy1S5
	 Q5ObxkUmNANT+djb4Z+zGvgr+CVTJr1ZqxpwwPo0ymPFf7v82fSn3E4dhsbknty36H
	 jrMavu3Xq9lPJEXmT3UJ8ch/UQTJIMXbWFYftCfm4ENdOywP1/mylUbMH+mROahWnp
	 anQqnRfIYgXWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950F6CAC5BB
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175905119357.28322.2109297080700541229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99410615ecf6737b770fcabfd3769acaf1d3a4121002eef2a0f54ba63fec7cbf
Date: Sun, 28 Sep 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759051193
