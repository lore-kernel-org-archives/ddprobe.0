Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 551F21D54CF
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737740754; cv=none; b=hISXZbF8bAbcCdik3Qs0rIimndoTDjNoGimVhwvMGy4645zVDGroJGLiSi+eUurmH5YMeoZZQ0wQmGy2/qoqx4OC4RbXDMaMLbf3sAcu+wDCRiKbfttrLaYdqvxb4dDiQRYv80NVtB8iCEvrlChg05hjSZwKMdmJMVfzJWCXxJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737740754; c=relaxed/simple;
	bh=/VNqFK+CiqZPPnRlu/m0fvk+uTaenqeP9MFF5yrxM88=;
	h=To:Subject:From:Message-Id:Date; b=fvXrdWrraOdwLorzvMwMronq9CrdjXAonyxUYZux7LFf9PqHs3w76CiCHJMd7RAzbvXKWMM0eGWBZSv+xWbThwj8f16/wPX6IiWxghFzMvO88meI4pAwY1MIVbwDoTXA/R2f+KeOUnhzIYwPyKxSWgxNoLL+kwT4gXtVR5/le24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R2loe8L4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R2loe8L4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6723C4CED2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737740753;
	bh=/VNqFK+CiqZPPnRlu/m0fvk+uTaenqeP9MFF5yrxM88=;
	h=To:Subject:From:Date:From;
	b=R2loe8L4qPvLWiaYolIWPqOUkM0C2mqUmQMp8gpDDwK+0JYzF7II18NNBwQfB7xnG
	 ym1FWLVN1LllHVz5DagCCzk+9WTHyBgO1qpVgLZB5ZOKLpQPKHd7Cq4SdylBrT9jL8
	 RucgE8VJ/o09sekNgE56Oi/gKWsptCivGyGN5QIJ31+CosCiaYkVwFSSgDO2JqS6d6
	 t7HTwyoPSMD6G8McqZ4YhUVMGWeRTwepBiPUA6byXT0mGlGdp/h6KRn6Z9mHKuPjn7
	 jraahyjR7RI1xmhLLJdD7TLKNtAfUUa8hmvn9ZMIchut9XJZjeTNRPcYgvVeMTKeuB
	 pMnkg1VV9YTzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A0EC02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173774075360.6572.836234107727807697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e2b8513a76f700228703e016bc2feafaf5f93fb592d528e7eeca357e4419fe6
Date: Fri, 24 Jan 2025 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737740753
