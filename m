Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10F6E360737
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 19:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769886234; cv=none; b=ucLgLKFeKExMPi1GS6tzbHz4olPazv4ayHkN2BDn2wsTgPqUPrdVlqxTYu2gqDXwwPuX79kg9WHTTCQAoz6KSPb/z4uZhkkQ5yA1qsfGNbNpMM41g3FlR+f4/C7DMdTEbZlFhTsT3U0oYOU7lnvD1//aAYNjdhn9GDo3STe8AWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769886234; c=relaxed/simple;
	bh=JGqJhrwpDp3MwkWp5LLnO63QaZKoh8uHy7KXeoxF6YY=;
	h=To:Subject:From:Message-Id:Date; b=FeNxp+nwhi036pLHLhqRzEkFQj8QjpbNjfDI4Ko+DTxpvZOncJ5VY8lM2dX/iGWqUwKw9KL9sYzJpbZoOo0XShGBEv425GRO87sIUFBGnIeO80P5TER96KofiseylJBhqkWLdYJfMXhdUtLzNlsOZmdSK87wdWymQTLJbM82wP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gNZj96YG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gNZj96YG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A506EC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 19:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769886233;
	bh=JGqJhrwpDp3MwkWp5LLnO63QaZKoh8uHy7KXeoxF6YY=;
	h=To:Subject:From:Date:From;
	b=gNZj96YGpTvN4Otqz6n/r4tfYWxVTgKU5/fr1lS+GGO0W3lUOhK6pD7c6M5xcZl33
	 YYbNpbTJOqtlP60pzevdKmvWxEWOmYHge7qkXvJefGEXV6W7BIOqKqQARxOimKlHHH
	 uClJr5tF1hiNaHHCyeVck/xki7kfhd7c/O/1nLjRHIZGvvQhkR9il1QeCUsHxF/WnP
	 W5eIW4I4C6O/tIzWm5yrmC575Mk1vYv16o+dgf5O/R5ItziUDFv4u1agvBjgw7JjcD
	 dV5SpRx5yw43FtvyURg+saKaG1Qj77e/KQb70G56HqjRA86hdEI4LLkoj42ExN3J9K
	 tlU04Us84mhIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 969BAD7976A
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 19:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176988623358.18772.7742852876070826919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf8b6129b519631f8e0957148d6b8917e3955e393c5097e5fdb4d83da67e550c
Date: Sat, 31 Jan 2026 19:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769886233
