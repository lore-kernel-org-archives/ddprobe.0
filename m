Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CE252848B1
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759433395; cv=none; b=PCZFKQLEiA0i+V3qUZNni78s4kxAbfyayw/UaHYA7LHtjTJSJuZwDJuPGafk5tKTBJrW7nZ11QgPX4eXgLheNKTjINmvSpgyFer3TyCQ2d7t2uJgr4uvLnZfsR64+S3voVPrY+Qlj/NqbdWRLKrefOobqWVj6OKlEFuftVHg0Do=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759433395; c=relaxed/simple;
	bh=1Bd1DZ6AF2UgAyddSDqYh9VerVX+SnBezCwUV4mNxt8=;
	h=To:Subject:From:Message-Id:Date; b=MWhkC4zk73ZilYR1vWRjbD6hghy0MkK7RTI8yLgFhe32SfRjBKdxOoWYXrEiv17tYojswD9mAlXP8BoZEJdE9Va4i6qxnHlIdQcQFp3um8hNlsi+IwZwCMoRCKCSB8w0sKDmUYE2vGVV7dn9Hsf0zyQhcOspH9DULABadQ50kuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mwfUy5n9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mwfUy5n9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1604C4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759433393;
	bh=1Bd1DZ6AF2UgAyddSDqYh9VerVX+SnBezCwUV4mNxt8=;
	h=To:Subject:From:Date:From;
	b=mwfUy5n9MxchZS/3DDDde1tQRlNmqL9V4+780oSocW6bN7FVo8bhFomVTaouAIiDi
	 LcX5BVRpgqf4GNSrcApXprH4yzQTrVUr6nsyTgjR4/xJz8P8hrZaFTmpBU/2JgYOEG
	 DF6VSasrteBSbCj8yGJvDp8kwNAltKZOUWdcZzgj2/c8QZUINL+pi2IUpJfSqTJjgc
	 pJlO3Ha552ncZDy7yctZg72Movo1fkeTUfRovyV6T3e0RYLLY7AkXf03lH+HD+xxfO
	 8R+w44J71dMhmYL2EGirtnT8hE+WXccS5XB9gMyYjS+27JTud9UJEGrY30SlIMFzui
	 9uR2awAKxz32g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F81ACAC5B8
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175943339357.28504.3315090740239601948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6a5cddb650c82a0e4cc8ad72eec0e4639f7784fa82efa46d9f84d754883b133
Date: Thu, 02 Oct 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759433393
