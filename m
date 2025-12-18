Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19BC22FF148
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 10:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766055234; cv=none; b=jOLQrOgpfnHvO7kO3+JLYxIw/50pS/Ab6FVXK45zMfxq9Q9LCu25NsUY4Fsyilgm2Caj6lTEqXfZKIJ4IdoP+OUva292OX2jQ2wP352VMaW93LriIh0vTUsIBb/A8enpy0lq1qKCWNk4giNFcr947UIeDKhcS/9LKz9c7CZmjIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766055234; c=relaxed/simple;
	bh=FdyV4GjXJC9nOMSSRPZzvPM2vC0uq1+wJiBbThf/Dvw=;
	h=To:Subject:From:Message-Id:Date; b=RchPn+IRiq7Kr3kjZrWNsTDElUKsR5HGVn24Kp3z8MTz9uBHmKZANAi6dXTtycS1exA7yTbxZo+WTLhCRDTLhD1qJiLdpYK0+417ZDnCsd2aUi7f0OMYhE6AH5Kw5O9OmnxPJgMZN4KKyMKgsHSMPWI8VOnRfDJLagCCodI3nlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dnuINW6H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dnuINW6H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC956C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 10:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766055233;
	bh=FdyV4GjXJC9nOMSSRPZzvPM2vC0uq1+wJiBbThf/Dvw=;
	h=To:Subject:From:Date:From;
	b=dnuINW6HHQPvO9k7fDSr80FjRpk9Cn6QNDZLsBiH0/XuRj0Kj4YlvCPmubrBfe7W/
	 PRpZ3CZLPBzg9KiSuUmYVxAWKLKvLirl5LeGFqwvz3R3mC8BVYsK5l+t0FP+CCK2k+
	 Zstrw3cUcJRPw//iTyqKV3P0+K/gmQt8EirFNZg1hUoLGBY52Kaw7VWmMV3ujdm3a0
	 CfBRTF9/RCFWovBlUt7Q7tYqQjP8mbrMjdu8Nq2opZslHodFSnkBq4TSIm0TWIJeZT
	 6jp6rxsWoLnMUPG5pR0x/AzxXSE6p21nhcdaxP/aBfvCJO6GOnIaNRI9hTW413PCEV
	 UiLttbjDqNABA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 980A9D6ACE4
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 10:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176605523358.24557.1443772259039140210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb2c6d06efe199b888d6551b205e8af3fd352e1f63a1a5ca1eacaf1349139fcd
Date: Thu, 18 Dec 2025 10:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766055233
