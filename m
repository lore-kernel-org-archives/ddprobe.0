Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65A4EE573
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 23:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738539954; cv=none; b=YPgYCuCEFQpSZL9vEAGrWq92TJMRb6qW9Qw/1KpNnCdYh+whE9ZxY/vjKUNbmhvYX663qY7T5FqYE6TsEv538+ydaDrUQIUavuGByBw255vr/hm+Z6BPLGiqu+45zYZKMTXgZXUAOWNCXdItObeZ2Wl8ICrgTHf0NMEaQqemw+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738539954; c=relaxed/simple;
	bh=d3RzrZxH8J2qYHJP5LwYB4oUhtNPT2NTW13XROfaSyM=;
	h=To:Subject:From:Message-Id:Date; b=DFBS0MJ1Eli+h9K31BqPnvLhDtKUNBRn4Mfqp4bkCqod4S4v5Ek6u9YRf9PcXhsqg2QK6pxgZgn89+JEG6N3OusDgFBkwGLQURPvgJqzVfYGaNP5eVWEhMEUXKrWsO9ILIfyefp4xNA/B85UPcs6IRUjvi2cqRrmRaUNxZ5hi3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b30j5BD+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b30j5BD+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C90C1C4CED1
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738539953;
	bh=d3RzrZxH8J2qYHJP5LwYB4oUhtNPT2NTW13XROfaSyM=;
	h=To:Subject:From:Date:From;
	b=b30j5BD+AmFdxLnFEXPAobg34V+aau4IhLTUDet5khHAR7x7N2r/VB0izzpc90PE7
	 VMrPZ0nYjk8/egCl6vp5JotcWZaNGuY7mGqEUiV6SiFt7kKQlr8CIAuFegG16uTDh/
	 6gfvHB9syM8l/05izjFTK7QCJp3LQQPtRN7cgOtwBT7/pV6HdMp0Ov/9CXTTYjstFw
	 izst1Ts0RCiXkItI9lXhJywguF+ysuaYZqAkOtg/RzBgcflWtJBiUl6rNWEEIyV7fl
	 mXAUtaFYME+4jMPWFEnl2b9sOOXGjlicf9zADduoJhvHHm3/lX6Oud7i4Cd3qh5BHh
	 N6sFnAvHz7bpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1306C0218F
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173853995367.24254.13881254012755544445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d049e2455a1e9726c4c8b8d89624e2539246cb2870ac9cbc69eae3874d5063d4
Date: Sun, 02 Feb 2025 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738539953
