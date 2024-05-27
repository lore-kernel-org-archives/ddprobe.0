Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1883915DBB7
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 12:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716812663; cv=none; b=OXi9LTfV9KVZ7tJAvQrYIC0mUb4C3wOrLJB5mmLTxWFzUyTFLXQPUjbinL9t+gLyiuY+/+UmHFNiVcyloGAvKWoPWrtMSBYeWtWdg2wvNtIX7nd/X8tCsLkEyG0f+00cTbVs1o1GRu3y4gHaFw31mmtA4h6IiU32RFtRIvRmqXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716812663; c=relaxed/simple;
	bh=i9+If4OsSoQOiwA7A3/q4S5dZDE1Yx6BGINf23AI6yg=;
	h=To:Subject:From:Message-Id:Date; b=Fz93CK8GSuCg62QcqpqWnyKnEKfd/cSNJbcnMECmqiF0XQNmj6rifppboPQWfso+cMf5qquoH7mUW1BJ2pK5GpByVCct6Ghchw5AVVQJEqlX/6/GtdguCvv8YhBhfHhQ2beBCw521asnSD8juD0h6A//RyclocBGsX1P4DJq1fI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tD639lBh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tD639lBh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6F1BC32781
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 12:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716812662;
	bh=i9+If4OsSoQOiwA7A3/q4S5dZDE1Yx6BGINf23AI6yg=;
	h=To:Subject:From:Date:From;
	b=tD639lBhb1zkIe/1GTsxXOs8KURVdJE5RMLM7lWDX6QJNXBSSfSvmajoTqixBVDul
	 abZb3pj7EDlsFgNpUEE5/IskvBrkZZiyFy6UAl0OBFtaSQ9XVi1uKitx/iAnjpm0O8
	 qwjB8etslUZpmSjQyJKsAKEJmJ5C3XN9rNFg8RTX+OS3dU3b3ytwIlVxlNy79uJ8wM
	 2XPE6i2Da5URM8Rr54UtD47ao6RR/fnu0DTuPhIIPMDH8X4Y3b1ycjTYCJP4/JMlIH
	 m6vDsU6+GgZu3URLt7hewObpruKRtyReYQoMro+i9KikmFwmqrjt0CtYP6VGATZFHX
	 8OE9mkNVX1BuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C473BC25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 12:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171681266279.10117.15910064521477604829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef5591499ed258ddeb304c81533defcd36ce075a0323e86994f93e995da06a16
Date: Mon, 27 May 2024 12:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716812662
