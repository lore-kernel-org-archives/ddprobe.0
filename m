Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A7C647F52
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 23:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706831297; cv=none; b=W2k7itF18Dcgxguy7Dqv4VpJEPzypI4OT3nbKQvEHhXgd6AM/HLkCOCGuaX+seaRtZo41gFMW/6vvu0fzbADEQAKVSF25bQnJtmEPXtg6BRBqoFmXYCNjcHsbhKP0jypr/WfYj3KdI8PU4P+gFQvfaao9Aj+Ca/Ks9H5yn21jr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706831297; c=relaxed/simple;
	bh=FUcMLNJa9CE8+bpinryDqcJ0HAYy0FqqrhUlQzaaCGQ=;
	h=To:Subject:From:Message-Id:Date; b=KXm+RswKwG/HTPbriBA9yF++/tfTU7ns031Y30YI72jNC/M9d+cVbf2S3eZ9LcHWJsMYKatDzSA+Chb3EsRXIpFEZuDVqcZsfVSqea5Okx9rzkI6NBMroZLKUmWSmxzW0Pd7QD+H4pK6LG7x5nlGTj/vejnDURaJmjcX4dMjh/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OkO4KViN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OkO4KViN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D066C43390
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 23:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706831296;
	bh=FUcMLNJa9CE8+bpinryDqcJ0HAYy0FqqrhUlQzaaCGQ=;
	h=To:Subject:From:Date:From;
	b=OkO4KViNoCEqw6wwZ1A7fqngzeG6lQUP8uBsbmhX3dtlr8kA7E6goP+Pi97lm5yvz
	 jpSA0i9WlB/On2IwJN2uQ/8cEw96SkZAfU6EjZl2PSMUj2/yowC27Eh6V4LrBkl5U6
	 fSYiZug2eVhxU0M2wC6NofKB4+vjyMcMQZ2BUThhTjzFvWKbpMyVUpJQiREJol0eyS
	 +lKscdE4m8m3qff8FrAC5WKuV+UwvxefWtdqy0alX8K107D8klkQmOXPcP/cXSb659
	 Yld9fQ/QV0kyPO+vKPhvQUkyXUqtTkdWmVGF7VJaap/ZF0MUS9+vSFfVskZoYpACCc
	 Gdf8XQCpQV3lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 684B4C48286
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 23:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170683129639.7882.9422477192862431852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08b6fc6a6595178bb644adfbe29121c6b90af3d0bf95ee637bd8b34c862696b8
Date: Thu, 01 Feb 2024 23:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706831296
