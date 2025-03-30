Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B3F41DE3A6
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743369594; cv=none; b=kLY0nxtsm9ag2CbHQpTLJxKwFZcR1cjttuFgdp4hNPWZwXcJ4eVD8CIUs+6hUuSDAi3iopO99e0tKPnUreBeJ8XqAdbFuqRriZo+OHfYs80hDSZjCvdkTNfR79ZJ5GD15eYK8ERdIg3bVGDCKjlhIwi8GsOzwEl7KWFAwq1+HZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743369594; c=relaxed/simple;
	bh=NKcxb4mAVOtHMhxICWg/j1p6665hwsE+9g++kkHy9C4=;
	h=To:Subject:From:Message-Id:Date; b=E0JsoC8+Mv0KQOQLNBJqCormFdGNkldYf0G7Iby6ctVnPOH3tegykTFf2SujRBo6f8MRCtia3LXj27bwdV9bAqyJ6vxZzND8ukfzA4LJSYACjILUG8j6U6LzzWbh7ue4qQg43srk9YZwG3jl0LavnDpa+zd9VprR3A5443RlpUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y6SF64ae; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y6SF64ae"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B85C0C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743369593;
	bh=NKcxb4mAVOtHMhxICWg/j1p6665hwsE+9g++kkHy9C4=;
	h=To:Subject:From:Date:From;
	b=Y6SF64ae1b/cf/qgclZmO43GkBvVgsHJI8fOgDuc1cEH7VXC8bThOS8PfU5JX3Agd
	 ScTE1FIVcYSmWn0pxRckwWbj4OWBuzDYPE6T+bs9d8R8zl+e1y8Kozcy67o6Wy6K71
	 PsI3Lz2u07XDKczXiKsSaufL8s1qpfPhrYzvVfI55IoQPMcbH1T5aXNdWWqs8J2M/I
	 Hu3fVqJfLj2UnceSJCq4dy1UPR24KllPfmN4P8aNduRUK4FocZ6LsWTqvitr6EfZgn
	 hcpYzMolC/b/VpcRk9VRwBapD1UNItEn5VbMN/MqIvawnRRJN2VWCEOrwPQTLPGbEV
	 +I/UKQ2KPL69Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FE8C36011
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174336959359.23498.15313808359438393384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 955ed3aba778c76b872b63dfc1a767d24149235b1f5b812087c26dbbdaf4108e
Date: Sun, 30 Mar 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743369593
