Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BC7E1519B4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 00:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777768054; cv=none; b=fN2o4RO4ZE0KAjkEE6Todl1+AHcIiJt2FKBtOsRqQuSbcu80jdYLfoU22zf1GKqXcmf2f6NbC6AWoCJgqab1qvFnMDN+c2oYfvJWV3TlFyMl7QUQFWkUSQlgBJh76dNGjbF6hGty+Lng+CN6mbjtpkdOpE3dqfZQ/yEQvkmJlJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777768054; c=relaxed/simple;
	bh=TQh0fy/I8cOnRMSJvP7DAUyXEm5izfUqgAYB/0Dxtro=;
	h=To:Subject:From:Message-Id:Date; b=c1HNQt1Ed5xuLrJZiY96jdADdDrEpHj8/LIf7XDX2t5LnLfURNz+h50QeN1hIMCwAuRRpQq3QBqDcvrnM29JtpUYoMljN9+KquBHbgtHTwCI1s4+nF7+1evLiF+k5kF+IYNomunodHEkMheTYCKksj53M/A+L7zqwoo3q+J/16s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=snSSyvQ8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="snSSyvQ8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD7E5C19425
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 00:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777768053;
	bh=TQh0fy/I8cOnRMSJvP7DAUyXEm5izfUqgAYB/0Dxtro=;
	h=To:Subject:From:Date:From;
	b=snSSyvQ8NqAmYAjcAznb3LALsKiJcYjxcMVAN3MOl7x0jwJPpxRAeAZZjffbfUrOf
	 MajjCxRT6OmK0/k6pzhFqmhCF1h88GzQ95nWuDAOHvfa+b7P734MsyqXJYUyBLRQKA
	 Sqsuqy1UoBUhVxcclENe7jIUXG+F1aIFo/fQ7zLp8CO5mv6YX6VpNUej3HXnmFKQAi
	 RTzGXjg7OZtlTKo3pcoqOkoXCiFGDK9JqpDdodFqkHYilu52kPsD5POwGVRYvV/mwk
	 /1qAZtcAqKSmKDy33o5sqsCwIVvfE7vdOuUE/bZodRCcDS/IXt3q8Cp6FwEYzJECz4
	 YGYB3YFtRsaSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF908CD13DA
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 00:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177776805368.5402.6917415090806916203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56691f8fbe45a4de0d0c817f796de1a8f35147ee67309af070fca0e64eddf41a
Date: Sun, 03 May 2026 00:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777768053
