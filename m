Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CF1638946B
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 19:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770666234; cv=none; b=IavruDL1flL498HG/jqRjeTk4Kia6kqArOrrsfzV2XPe9SyY+PwRyg2eGN+TYtuJPq5OzswhCiyD1s/+dpQWGHlabSG7RbI0RRGCu711wtmOL9aNORBeoLsT8Sdr99pcP7ivjAoLw8eGgJUN8bQmp0+9QrjwDFLl8HSrMNBWR98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770666234; c=relaxed/simple;
	bh=soSf6VjRL9L1MKbEwzWDLTkZaJI7stm8z/ZN7T73I6U=;
	h=To:Subject:From:Message-Id:Date; b=BxkzRGtEIT7/t/U5nyqd/IKJimVqVHUFbow43aE1LWVqYleoLZBVUJl8sgWf3KIY4o5OKgAwMOpYKPicQPuTJZ4LXnXNQWbfkFAaVgWgtt+pEYB9IxH6LXyDReqXeGJnJe4q6RhheFmktxcV9qYgg2BpF68u1h3JxPMQJdVHr8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AaRUeoH4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AaRUeoH4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2EE7C116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 19:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770666233;
	bh=soSf6VjRL9L1MKbEwzWDLTkZaJI7stm8z/ZN7T73I6U=;
	h=To:Subject:From:Date:From;
	b=AaRUeoH4mcLZUxPYRnH0uLG9PodiT7u/1vNnWbyeUS1XlUoFo/mjsbWP3srpVWQDg
	 I3hcJV3hvpoYQgJVV5s2LFD5lw/fqgI2Y4yHgFZjpr6Y1U7jlZZzDxYmUuqWbbFWzJ
	 +r3ASfYmpyaXwm3Ikbdr8w4gjqHlzTJfgiI1dxY/7w7i3ZNdv/ZV7zX+ughdNoFFA2
	 bplTGulxSw9UX2CyK0KXma43W4rvjp5YfWAfOCiG2/eGtqHMq2HnPnZd6inI/vVHHp
	 YS6oDHI3hHPX14z0pUgb8oZoLURQ4xjefjMXz9Lam5d+4FKTZOF59Q6WKV7+gPMnXe
	 XlpG516+20xAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB95E7E0D5
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 19:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177066623367.8132.16205262789745245469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 496a32f8f1d68163e966682c2545bda235ed3005a5a6808b5b8c87f7b9120f96
Date: Mon, 09 Feb 2026 19:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770666233
