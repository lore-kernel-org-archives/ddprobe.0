Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFEE74A06
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745377193; cv=none; b=ZfmmFqHy3QmcYMRn+wwL4cnvkZcN7iS9UIsk+/XcyYtD9xyt5Jy0lgJJumA/vcw4ZAMSRmnJMBHJobIFyBv0oevr7Mi7Ul01NUhI96zL9ixFg6xh/dziA/SRNZ5dUsltTxZ8KacnrNtElLmRBvKVWUT9rr0hDhF8i/i6Dh1zEYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745377193; c=relaxed/simple;
	bh=HWuqDKnHgBI/idbfSGTJo3/yEHne9AcFg8eQFq66iI4=;
	h=To:Subject:From:Message-Id:Date; b=s4YpQYltREV8jd1ByXLQejXZqQB7AJORdVXY3HqdSYsO9WAyKeynQ05UuKsEaj/hLDHB5ZkHJulv4TUhJ1woIu214AJDdvEMwQVpoyCKmEshZYBhr2/JX42kNnUgYzjr1YMs2NyHWPCNSpbLCBZeMPXOpW4aeZhkHdpgtVXznnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nNmfwZjl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nNmfwZjl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6211C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745377193;
	bh=HWuqDKnHgBI/idbfSGTJo3/yEHne9AcFg8eQFq66iI4=;
	h=To:Subject:From:Date:From;
	b=nNmfwZjlSlKKeXH0ccrEszdKQYdnT7CQm95NKv5gZVOA+mNe8OgUKh6enFWsyqErS
	 gE9x6JrmPxySOn9gx7GvQHtmveINuv2zyXJU6BjJVCiNm7Oc/WvvTIF0Je7HJ9nKbO
	 4wQVXoKuJkF8J1OvwXhvo8ADM9dSC9PA81RihLxgPB7p8YAZMsosWHhJghu8mpEcCU
	 DtnU3b4JL8/6sNG1dPvtJgXUs0YdjNXmAjxjnivXBz6D9ggFuZJPc+rIL0QrH+mQLs
	 O+LaWtSTTqQp2TNWr6ZYj/yKtV2CHVfxJQAKtpLSe6rC/Uu4FsLWvVy4bIebAch5vq
	 PJDCQFz1BKaOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90923C369C2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174537719358.9065.13382582978406245978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6b39b8bfebe7864342a1b56a1b0d8139d89ed871e48ccc87688b481f6187b74
Date: Wed, 23 Apr 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745377193
