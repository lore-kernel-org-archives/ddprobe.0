Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56453145A01
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 15:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717081463; cv=none; b=Lz6MNX6/zQfMUQWyoeQShje15Z8LD9UVOKHehTswMDQxbObay5PrC8LH7HeVMKSBYN/UuRqpCve1m4j+vi5Lac+Brjb+RT6WXAe2YgegFsKsqu6odYlpmRj2JVMV1zYdJQ+dhmt6Fjnjdya+l9mdzSiWIw37SX6cYjH3bzWJktA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717081463; c=relaxed/simple;
	bh=YcKTlUW3kSmHnY0WyX+XlD4Bc49vuEkQd1sWo3HgjBw=;
	h=To:Subject:From:Message-Id:Date; b=IOZNbAkYBdm3VwwkllokXyT4jMM865dXKoXdwGCHTNBU6i0LcEh2QuGfqmWJ/ZAPA5EqwEEJZU1m8j3us4mvIGngPnusyOjqlvznUUD6ijO4uScRC0ryW31c/GftGhiWmqYrjkcC9I7/KoKGdKkt+AjkEXStA+F1NZYqNzXdoKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bIT9Wbox; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bIT9Wbox"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF0B5C32782
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 15:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717081462;
	bh=YcKTlUW3kSmHnY0WyX+XlD4Bc49vuEkQd1sWo3HgjBw=;
	h=To:Subject:From:Date:From;
	b=bIT9Wbox7j2fWCFEvB59vbZBc5dQ6+mc5tXPglDhkWb56hwH5z+D9uzsBl7RwcYT7
	 6ZZDr0RjEISxYxIbpOYa+MA6vQHu+ln8shfm1TUhrsM6qyIROqKVrGq6CASWh95+Hz
	 GOm6/RS5DLuBxUp363QmKFEyL9gf9yp9zN0ePOFCTq+MWhRJnL7prty3zYzey1bW2m
	 uk0ugZ41A6C8NuwCwo0RuzOJNyrtXhg9vmzZpqk00U/wRe4q5PbhHtw1IngVyb5lx+
	 GJrI4dyduJNdiUH+ImVb70sM8evokt93FDg050rtWiiHrc/i5xsDN2I9ygzWjvKS/o
	 GDqazjVxr7+aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6BD8C25B74
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 15:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171708146280.23577.2419025079378292635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa626e84f502201439e86764a05cd7780e564dad49e0ddf9fd8406b92c1f3743
Date: Thu, 30 May 2024 15:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717081462
