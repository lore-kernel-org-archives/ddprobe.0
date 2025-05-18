Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 323216A8D2
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747569594; cv=none; b=UsTLAv26KZvrBKTpfoNIQ9MsTr15lMbZWLCppuZrf1rQ3NkjgDNdV4E3QS5hJUGXtLGY6k8QjdeRedMZfG0NzuszHKb4l7bO+XYSxMgjZU05ixzdEwWfYaKmRCgA5KyfTghGC1iz4o5Vtxp5DdXd1vcmyJE2jaCluN+kAYucJFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747569594; c=relaxed/simple;
	bh=ntrUoXPmcy9pxLD1y7iUWC+nGxVz871ab/qGXT28JZI=;
	h=To:Subject:From:Message-Id:Date; b=PI3SR9EQwKNROndjp/ATDD2bNkXcn5x9+g/S1Gtng0Xh4EIAGDdOaFLFS2WaDVrF247bEdVT+VPypumPU6zyLKR1kWkQBOw+kWdGC7vl15ZFV74yeyHSRMnct4obDiiXTFvImWegz7GYbhPbgOs2vsrDeI40PJ/hZyqLAFzhj8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uxkkA1n/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uxkkA1n/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A389CC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747569593;
	bh=ntrUoXPmcy9pxLD1y7iUWC+nGxVz871ab/qGXT28JZI=;
	h=To:Subject:From:Date:From;
	b=uxkkA1n/pZD+JO/qNknJZOcAcC8NNpW/VBwoNQSVaSuI9Uzm+Quuna+HRj7QlihWw
	 kikc1CUixSTbOvOvdXGv5q9B99D11H0x24MM2vWJ71WsgAKswJ5bk8Sr7G9uf+Ss+u
	 sfN7TI+Gq7F7V5rVjIltzhgLxkLYBVf456XP5qPCLWzoZX/ERuxnkY/kVRXH1swXW9
	 nPqSUIa1B28Mcws80EZ2mqDS0QubA4aDP6kDvX53F9A1iyiFQZmByJCAt2j3rGk+sv
	 0F3il6HFyz8s3NRqku8VsyibkYhTGNvT12ee5P7VHcQG6DxSe2KtjF2+IplhX8wQYQ
	 GQbm6Rqi9tXqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F7CC3ABC9
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174756959359.29974.3454725176672476095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc66775f5d3fd9c00383d2030dd701f2cb636422e42f4cd5eeec0e45929ca30a
Date: Sun, 18 May 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747569593
