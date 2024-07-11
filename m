Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C12712FF6E
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 22:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720736243; cv=none; b=s5GGC5Cj+WMSVOYIeIom+dgduWwDXbBnIrYsatACI6BF7DM2n8e1TzzTteUYgUUDxW/glUKu7YVHWFDigf/2C4gqEwsz4FPHDMwhAjPvp+V7/FvVHIo7ROKlgYk+IUnqA7LBlIFrMHYWXngSTq9ceevzZ3jtXhe2nTYRWRHfsTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720736243; c=relaxed/simple;
	bh=GRp8u2PGHTuHbCSm2VkDvvDaqYRM540ncEeD8uggJjg=;
	h=To:Subject:From:Message-Id:Date; b=kC+9YiQS0FvwG7aKgE/OtJEOlnLXiNQoIGFVgIohvzlff8Y8yYH0l/5w45DsjerxEfYYh9EO8nZL24Gw0KVP28evPsqVYLURzJ92F+QkUijDBFAajPyMa67vsFGmpeA46J4ekznbzwWgkeEStA0bJFqYW0QxXcsIEH510UIU+K0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VIx8Xr9w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VIx8Xr9w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDB6EC32782
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 22:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720736243;
	bh=GRp8u2PGHTuHbCSm2VkDvvDaqYRM540ncEeD8uggJjg=;
	h=To:Subject:From:Date:From;
	b=VIx8Xr9wBXN6TgH8VlfiC8ca315+BdwVJ1l8ibu93L4grW4qIa+niG1Ps04kkejCe
	 WQpkAecwhopYeoW815gNs9cOY1+PdgXnCw9DzpLbv0y8knoCOYYq2hFzoF/yzRh2fy
	 Xo0dcGFfq29/xZZ8F6woehEqs10FP0IDlSSQl4vbkPcTSinXrMQmFd1j6x2MNCBhJO
	 1Vc38GVcyQchwYvLyAF9Y9zVOOcx9TASuDBkKkqwpxGS6tlmQJ4oURmW1RKgzQtcta
	 J2R6n6zp3sedRQy3o+SOLMj3y/efcEKXOgE+ixT+3Z35Q9L9gW5ke7h30Ws10CYS+X
	 sBl0wYKdHGQlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D045EC3DA4A
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 22:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172073624280.5956.9268253628897364810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb9264e17c9252234be0b5f2f0c771d2b3f4346760869208ed53db2ea1203e7b
Date: Thu, 11 Jul 2024 22:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720736242
