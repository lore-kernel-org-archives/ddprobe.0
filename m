Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F7212ED872
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 23:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771024494; cv=none; b=uD1QMLKuN/Gg2Ros31lCXXKDAQHy6SiRKRBaDVaAQ1FdQ2Lr5A6LjW217XttoSPzfUjhnDE6QE9ViC/iZnFSOu7I/Bub3LVjknXQE6lvdSxrdqzZBVsxeZ8MD/qdDEF9HY03nwVdXVAI2+sbF37FyxQIaPgXkZ991TBqvaEoYec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771024494; c=relaxed/simple;
	bh=c8ItDjnKOeEbll2T0JJUhfXpKsRSbd16dVjbdLDJTTk=;
	h=To:Subject:From:Message-Id:Date; b=LJEz0HS2yipZJzyzmArhR9jKBlcxENbMwbEPYtNiceh01eDbx9dAZWldTb7ASW4LTREYO16BSt4HokMqSf9PAu9dpYQ73N68nHvx5ZINHIOpcWZxOegg5X/qeLS9mZhWHeVO6wq0/mpDh97bRxqBp4RhNNuyUW00R7MWmX293Yw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CmmH5/ia; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CmmH5/ia"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACA0AC116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 23:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771024493;
	bh=c8ItDjnKOeEbll2T0JJUhfXpKsRSbd16dVjbdLDJTTk=;
	h=To:Subject:From:Date:From;
	b=CmmH5/iaq6OVXJBlktouHKfSlXDnE103BHnPzvj48nLvjIiiBKfkEwLWSyHdWrepY
	 uGtxHKY9grdVh67ptyjgmDwpKgUovezBhhr+pfd5vyYINJfwXhcAJb45puVvKabJfz
	 bvUvgmC6HRWnhRPbICkC5BZWC7r2ocq9Gd8g8IvNcbFGv1a27N5GDst/8pazu0HafA
	 mORjA5Cn9rv9gBUzdy9Jbgy9+rNHw4mXZ2yAUWDOQ/r9bO4P6exMsxBqQ0ipqjGQcn
	 VkQvE+pwkLujAvJyTaCqK4pQ8c834wUedmUODCZH2YDNaSgRkorLfKGh6I8DI2Z72W
	 jVkDCjC20a89w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94539EF99E7
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 23:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177102449359.18422.9732335367279333064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 240281800b30cb01205df84a50b6f9b6960da9f6df9c9b65da472925645d5c9c
Date: Fri, 13 Feb 2026 23:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771024493
