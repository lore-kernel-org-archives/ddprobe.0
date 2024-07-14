Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FDB5FBEF
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 06:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720938023; cv=none; b=X058nxJbBaMSJtzntCmOL8NucsZ/aTl2UaPI4I+1SmCWDJCKnd5YkBMHywwc5otclP2FspQd7XBwJc+kiIgtBJlTplWHbxxoiR443mbw2xkHnYpA255wFgplIxiwpBgrqek7nEid5Ce3zOzROzg6a6yWSqF96LGgncKB4l38slI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720938023; c=relaxed/simple;
	bh=xdk1xLJ383hC+YoLFJuuPmLjPQIqWJmNyRfP6Z9ToOU=;
	h=To:Subject:From:Message-Id:Date; b=mW9L8bASTIFWKTzZwzyEb4lU4farYcbulUd08kqVS+9pbIce9SPSBk+wAydQMdf8o64ir7+WU0lQe96vJdyIlHCqEjZx11YUlCqxLi978eqv0gdZHQhHt1BYymEoK4PO0cwfGPc6W9PD1NJo9DO0Y1t+oydIDpq4+974mqzlARk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OdwqZNZb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OdwqZNZb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D44E1C116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 06:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720938022;
	bh=xdk1xLJ383hC+YoLFJuuPmLjPQIqWJmNyRfP6Z9ToOU=;
	h=To:Subject:From:Date:From;
	b=OdwqZNZbSlSQgQ/QVl9OCe3UX0XvL/eqN7p+0EaGtDX8ji5tbszVJUCkV6rmKXtcv
	 E+meRelhzxboMN3S1vVuVjPfKxv618w5dQfmrTCZHFg4rrhhenR/7ejyRx2xewLNs7
	 qnkmXl9plbqQ+b5V44msewZhAR6BkVj5vV+nHm27XMhJXdkSutTR7HroAu5wkOGR6c
	 8L7RZW90ed306GMQ0TSRDNzsAzMITXoATqVHVjKNQ51CgYhvao2BJEu7MnQrn6vXA+
	 77xr0C/KGf03ekdHWsmShoCda+j4+QT7kQn6VhhsbrX0FsJv+ALwi397G44kSnsmne
	 UWTba3ru4bH9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1E5EC3DA42
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 06:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172093802275.29113.13133389390945201322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ac1523e5af486129eaefa8a2ae3b37788e552f48fd591ab81a23387fa210772
Date: Sun, 14 Jul 2024 06:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720938022
