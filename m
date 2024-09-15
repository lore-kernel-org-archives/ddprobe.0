Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5F3E1C689C
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726416953; cv=none; b=tglLlYbWNv0v9RUmJ5sQp+a9s+SWNpAVuqsJQvN/UUxBCALcOcT/xXed3AMtK3QD9Fp3KaSf5Gd6ZPooviIWooP9VO/nnghfNji5pnEP4KpJQutdJ7qXTZoQ+8oBcM8ya/IyuZ8GdbuZDjSMb8sNZCDpK7mWr550b+9hDTKaDPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726416953; c=relaxed/simple;
	bh=jgL9kVNu3BogfQeOZ6FZ3dLAHm6X7GhCQ90oPeHLQeA=;
	h=To:Subject:From:Message-Id:Date; b=EWJdh+4/s6Ibghm1K1jNHT3rLLxugI5L118Q7e405/HSe82Jiba5BR51SH3INvqHidzZ52dJrqQhpFqXii6JHRPbVLdesmMk2DdFjZio0dE1kXoW/tLvu02DLv5ytybtaI8Ty5sINGTFcitlhe298MMbeI8EWg9+pjZzBX5anKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sClR8GvF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sClR8GvF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAE61C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726416953;
	bh=jgL9kVNu3BogfQeOZ6FZ3dLAHm6X7GhCQ90oPeHLQeA=;
	h=To:Subject:From:Date:From;
	b=sClR8GvFsIdQVJkHT33vsTc0XARHOiwjzuJkeX8d4IywjBxXVo0wh0MS+hno8JOfa
	 4ZUKU7D7GJK0WCl8oifY6RfQ1nBoW4YModl8Y+MxfgcOBExUWXuCCtlkjSfdkFRX4M
	 tmiTyzhRe5nfEY+kUYJdB9VOltXarvl2/0EnmDWwYsP41PppwLSKcmCM2jrqWhzIQy
	 vsL71RUaNmiaM486/nYfEeWwGDnGSaneOXvbB4fGA0upJUkidsoiISjeKJtH2R6Te+
	 44jdcjmbavNrS+y8YkdKg7FgIZ9ew8wBlaFyyQblZp+oj23v8lXwwjQbi5a31f/5KU
	 SMbXQ3iw0qZqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BE98C3ABA1
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172641695362.11071.9842292133001108018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f68d24dbc0e64ce04afd1cd13b95ee2e6e423a8ea5bca026eade0d2edbfaad91
Date: Sun, 15 Sep 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726416953
