Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32F1937160
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747714194; cv=none; b=Af77UiGEngJeJ7zcXHJg/eLhHdFmBiqIBNpk4uXlpaP31sATqE6IWwRXr+Sir7s3ycugHQhz4cUFAJ7/YBihpLVPQxNtGIA2k67OwITXCSkMmwHsK5f3QwwflJUriqYcs7DOQ9hNugse+N3I3GFsl0BcfJZjeLYOst48aALnuQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747714194; c=relaxed/simple;
	bh=fuXzym115zuyp/zn9yYg242GEiN/3CYecFMg/ca+Cbk=;
	h=To:Subject:From:Message-Id:Date; b=r4S9vqfRi6BDIFNBa/XP0fz805AThx/Vxgc84VYvFm0qjxUBmBgFnICP4NVfFPDxiNcdjAljGsQQPOd1GtdMBMNt5tpg33lkJ4nCSwqY59X+DwZAmFdQCBZtxLsdW9pmU4IhWm9mEgK8OB/FR39PSNNvcpUIpw94KvnVh3rRMKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GxSjVAAC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GxSjVAAC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26A0C4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747714193;
	bh=fuXzym115zuyp/zn9yYg242GEiN/3CYecFMg/ca+Cbk=;
	h=To:Subject:From:Date:From;
	b=GxSjVAACMPsXYVMNWETkWGq5cr8nuZFduITIeSt+J+Y1lbvk7gHPpUwJjBp8eD7rO
	 dlJ/U1g7l3PfN7TUpsFrQunABmFb0mO9QBvMQgkYxwDc4YYgM1G90AqfypP3aB58Rb
	 ziis5RTKdOgtcmwosI/kiA1xPiYhf5vkMdM9t2MZRr9OeTjOjwAPUtrrPzRpX13ToZ
	 iYEsxnHqvd6oBprwE2LrLAKZJVa6pF0o0jS728IV57mViK1/lsFzQNhxpaSlvsLUXb
	 vr/Rf/QosN3OXsr0Kiws1usmfXFJa8oVAPuM2VZKJ/lxeynYFDj5VZMoEEgJ0ixGUc
	 FQqPj2IHd5FSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E0F0C54754
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174771419357.14664.1746018583477652534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c2657c55482af0d92c41146247e4d2db66289f22771f3959c4d4c7341865163
Date: Tue, 20 May 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747714193
