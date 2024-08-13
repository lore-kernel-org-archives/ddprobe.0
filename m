Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BF4E187341
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723556754; cv=none; b=UhP+7syxP1A0kup/cku0tFtweRGlha8pLZOj7ZGR0UchPZJYmzrup/3Z+TLAHdESOm2N6wnFdq39JKExdufZniu5O/i33oCM3knlcrQL98wNy7ev+qBM3V0w0e3zC31AXbJrrbzQwLV8AkXW3/ifWw/PGFzZXvnnnkAvQqgwQi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723556754; c=relaxed/simple;
	bh=15Mn09DPO5w6+GLBrK4JRKNprr0RjW+/JR1FPwNNiI0=;
	h=To:Subject:From:Message-Id:Date; b=CcJgTy+ZxgBVWJN1meK4b13q2ijWWRVhYNfQ9m0jP0Fx6sX6r4mCNKVu/ENB/w7tIOFWCQBw7J8HKvhM09WNc1RvIxwctLFJPhy9o+PoXbxY2Q9nFJMy2tFPtQyO1NVHobHLnNj3ROQ7Fw3rVRS2UD2ltLOUqE9mOAsvxAcJW8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lHr7ZR1k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lHr7ZR1k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A768DC4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723556753;
	bh=15Mn09DPO5w6+GLBrK4JRKNprr0RjW+/JR1FPwNNiI0=;
	h=To:Subject:From:Date:From;
	b=lHr7ZR1kf0GQ/PEViJkCLo1x1AxH6yAu7WghwyKsHwQ6CpEUaCKNwVAyGksORsNPW
	 ljdiWU42yT0Q4K+7Z+3B67ELKsC/rXfvIZxFDSW0ajtkJlQcDvyyhH3nEpGkqRRmSe
	 yOSAsVyLOVesnGLKADxoR1WYGpLL1o/1ZeglMqwB5+u1WZNHaY8Z3o67gJUT+Bgp2v
	 RFaIj13L56y9vcXtQga14LNY64WP16GEqS9FDJhRrb69z8dB958wUX0jQQMKfL7dAJ
	 5ZGigrYpBXtEziKgxZVvqjjVftSYLDz9CdQml4EkVfTN6VDM8x3KZdQSjQ6qdee7W3
	 RvLdVqz6DX7ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95791C52D7B
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172355675360.29268.10388182773685278159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3eed50020acb64823941dfa397143196563eaa72eeb8c4e3a0a1bf9c188453a7
Date: Tue, 13 Aug 2024 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723556753
