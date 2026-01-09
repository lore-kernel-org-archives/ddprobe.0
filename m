Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA4352ECE86
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 22:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767996233; cv=none; b=qyBXw6azFjfT9pAtUdMBgIijMdtEwiqve++Oq64ryywIQP8m8uK2ANqnvKhaxNhUOpe0YM/CKDbqGt0+sti76L9qt9gtVQnaJO7YcdDOeI9CYkaCuFavz9J/WZMDPaLDQZ9VxsZWuPg/FugeSmkx/2OnI4IunQXNFjGs+uq/Lxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767996233; c=relaxed/simple;
	bh=hFBaB+Jo5HZQ370OoWAMaIlr0oaawyN30nIj8p7pNsM=;
	h=To:Subject:From:Message-Id:Date; b=polQitzdBl41L5+/YShTVndGTwWvUGwbgxHgV2GVhRmB3oueRQ5/Q4pQCOgZTUKqibAOe0DoPJBzsY5Ro6vdVZyNYAFBjVtbVD7OnMhQuBXiBMQZxy0QkGDBx+4C6KRbfZyz7eU0TtmaheYNV7Q3G9qJWQBC/QrTA8y60Gd7qiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mQ2qebfh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mQ2qebfh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16B3C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 22:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767996233;
	bh=hFBaB+Jo5HZQ370OoWAMaIlr0oaawyN30nIj8p7pNsM=;
	h=To:Subject:From:Date:From;
	b=mQ2qebfhIQESzZPx4JqZUxrZuNXEMQ45IwLulMkVEwfZi6IYZH0EO6qQ7KN5vNyTQ
	 4GvqnytJ2hz6H8/IleiHRWQpSoI49MzF9WZWM1N9o/prvMzU681aOPUa3gcb5xLPjs
	 qWO2EBLPGAWEg3HO9CBBGmJD+UQDeSD0KtBRFiNoi2MgueG7s0HZAOzFLSaBDK9dPZ
	 Ts/STglSa+Yp6tJ2KQIxiXHO2UjROKRAnCV7GjUxnD5h8dqAlFd1qERgx5JqG9ROyb
	 4z+MUoEHQlYNak7F6NsxFSYNTnXFP/NAbdaz8BRp9CyEht1aSODsJ9KdLJDLnvmZ4p
	 pFTuq1Yh0e/kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90470D1A63D
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 22:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176799623358.27144.9322664641105578808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 095c74478dac1fc6a5450258b385cc63f9685e2f7ddb172e86417764b1b73f77
Date: Fri, 09 Jan 2026 22:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767996233
