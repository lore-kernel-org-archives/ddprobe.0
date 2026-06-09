Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AC88311C36
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 14:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781013934; cv=none; b=tUEBIJPJqIPTs6cMaVS4lXvyJCBO8JNBtIWSbPxOeWYBXc6YVIgivTEGQjSbwZgLB5aBJDnDjKHShNhEHoD08/wJOek2WkCUGe9AXNSzcfYonLS8PwZf4KHO7SCRYhUcN+sOIyJHhjOCa0XNe8E8hA7XSc2ULRZJ3ZxuUtgJ4K0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781013934; c=relaxed/simple;
	bh=TPskS3sBlW24BM7mA+nqw1MkPn2uMYvaDSp1NqOGkoA=;
	h=To:Subject:From:Message-Id:Date; b=tt0drVFcBwzikPLrRl1zV0IumB3GuTegKHC68M4VXagBY4JtIsQxf+941yBC36ivY+dsGc7xXiLl/tVE9gmM5HzluuDK7v8jxApG7fPxFRpisNUCSGEZnoIgWKayoM0UUqyGYxZIXWla2MRgBv6G1us5mFd5ahT+6KV1OcVlXGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M8zZoAYv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M8zZoAYv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA9C1C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 14:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781013933;
	bh=TPskS3sBlW24BM7mA+nqw1MkPn2uMYvaDSp1NqOGkoA=;
	h=To:Subject:From:Date:From;
	b=M8zZoAYvLDKqqoJV9LThYzaNQPUWh1akX1scs+BjLJNqF/7tWBcDuFcK8TSYrO+fy
	 /Z90LOfTpIzzyuALIVxw15PX2dEwcAiUi+rcFj6sY1J+riGfa2unPyu5+jzZbLfFE3
	 X3xy26en6E6RCDvHxnc+IkunuaYfzFKvinMOf3bAvpnuZwsqBWJC9C1tPHr5t42YGh
	 +N2NE9QLJQykXnLg77NTlydolgJBk1uNaXluYlvnZFRwd9py3yDk5rQ16REQwy/teq
	 V9ZGs4IGY8XNcrhyIN7jy9rRgSTMakG8BubMAXTk+/GqhLTSdh/qkgf4DVd3GwG4wO
	 1rLmSwOhNUErg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB350CD8CA4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 14:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178101393369.16303.569969760829637433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f397402d49b3c9ebd721bcf635089cd603d298abe99be3fba193983fce8047d1
Date: Tue, 09 Jun 2026 14:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781013933
