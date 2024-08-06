Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295FC4685
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722949554; cv=none; b=CwSh4kqHA5ncAO4wcXalRutImzoR01dWuYhDh3dQRPjDQjqvmkuSYpnJDjJ32PyQ3XZ1O7u0nMHkAR16/cszzZC87XVwtzv4XutqHF5whykvE6BwIxI8F6Jl6/YpjzuzyoRMYbnJMa1I623+b4RMQwPjPe0GIpGwqYc8/4jmcIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722949554; c=relaxed/simple;
	bh=yAu3jfKVbFZYDhHg774M8hSTVzL1bBrFRln+3ca+JjA=;
	h=To:Subject:From:Message-Id:Date; b=e/Igy88c0HU+KZ9rJk/eATetZbLgWmnjCgDeKdCNOHZHb7s6Vyagjv8nXGaFxpz3Hr7W9EGthsp6SVncDKfLxHFR5Dlvl/OCAbONZyGUptZx220IlESCwvIEuVFp/JkvFrq/HceOBeXBC4xfjIdWy9wSlsJ0BXfC+Xx/z3b9Mtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S/tKJC4C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S/tKJC4C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79A4C4AF09
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722949553;
	bh=yAu3jfKVbFZYDhHg774M8hSTVzL1bBrFRln+3ca+JjA=;
	h=To:Subject:From:Date:From;
	b=S/tKJC4Cu923mDwr6SuEWu+k7a64rtXWOkt6z/Km12b3pLE0wQ0J6ETTvCjIlbM3o
	 tTk2yHV7JBdCXzZOvIfOqa5qemWTuCnbeDRy9Pi3tjrqUmrocEJRW7VjqFH8ImfvCi
	 1FTs2ixYDsarJzR7b3+vw8AeZJdWWKtRUcqZuJMeNzrg+JQPG5MCg9NDci+2vACT9z
	 h9sGAADKkMpNwpS1epspvUGIt0TjuH1c4Lkdpg1Uuw5QrMr2WAZ66owtTEjPXCyiFm
	 oPhoRkzg+UJf7dudq2k/VxJGgrwVz1qYspcFi9tkXpb+h8ljpokYT6cL40HYe7WkbG
	 1zblaoETE2vBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97BB0C49EA1
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172294955361.2132.6693647026222444633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df922c6ac952344a3a17be67f099f9838a9c55a3b88175962ad0e1bf1aacb41c
Date: Tue, 06 Aug 2024 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722949553
