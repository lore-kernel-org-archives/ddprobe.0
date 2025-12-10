Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 338C22FB622
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 20:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765398774; cv=none; b=SFEqOzZa6u2ko155DKIgpaHuFjouWv6kj5hQgaYIrUX09GhmdBSInO07UEc2IrYkat5ZWUXjnwP6zY5rhwRvbaDKq7TwfF1x12pBmrC0lFK4WFtnh1qD3VrkIJHH3GGGcuPdEyKojJ2qhf+rjDcCGepsqdYC63FhLd/k7neubcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765398774; c=relaxed/simple;
	bh=kABi6Z/2j4VP0svp+Qz/otGMRhB7FfhRpm2e1JbTPBk=;
	h=To:Subject:From:Message-Id:Date; b=mcrOcXP5aCy+0YmtvU1v7CuTRyHsF/C9vOT2/dTs6RvE8uYic6FQFjy9ywt0Tiuhl3MC5H7amiR1IS7Ie+lmEmBJBWq/BRk8gppvY31utSU+WIrqHGPIL4DbdvHw65p50JqI7xgjPpfkley1aTYQNFhGsRzTMFXRdeYljMSNIHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aEAxxFIv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aEAxxFIv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A621BC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 20:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765398773;
	bh=kABi6Z/2j4VP0svp+Qz/otGMRhB7FfhRpm2e1JbTPBk=;
	h=To:Subject:From:Date:From;
	b=aEAxxFIvfvPqm2+B8rHUDWYd7dErNK6iaZfIuy+ou5zF/xubamYutjuV4XC68Z496
	 ZC4zWRvoxmqqbBExgeCkqwX7OmtyKzZYtVvRJ4qBYJCmkNHp3qJF/QQSsq7ubeohgp
	 2/XwPfKLpCAmXxE8bIemKH/8t6QFWyvJFZBAqbR4dyyoBt4KCJmWXaPS1Q3DRSCoMw
	 T8NpLvf1pCNWE/cqbGJTi5T6JAa0GO3PcZmLm1t4Pi7wb9lbKdTLtyhAOYa+m4u2ye
	 GVi2ginWnA57OzoID3jaZiTY05Lg5k8zQHlSjS1VxOAdTZ3dX/VJ9WrsVZUadRuf+b
	 xjD1oCLB6rUQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938C8D3E77A
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 20:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176539877359.23106.13512675318627386919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe4f27d4c921cdf168ee283bf5e79e4cd86b1f3cbef034b4c67c86c12411642d
Date: Wed, 10 Dec 2025 20:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765398773
