Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41605131726
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 16:09:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713283763; cv=none; b=rnchjw1k03yHXLloTuTf8MuuBZzK0Aw5C9ZcfyJrzHqWO4NkIgUXsAb7+xZXIIN/ZNpUwFNqaeRRtUfx4orHtljIlrkU9NBItaaJW2E1l6jNCxvHDMRl5ToEJGcPIn/5uEgkNYz9a/nzr3UDMz6xY1o7wFf/8IWp/bukLiBJBB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713283763; c=relaxed/simple;
	bh=iacyI1lh4Vu1D5LEugUlxzeRJVfx6pAe7MAV73O8KjE=;
	h=To:Subject:From:Message-Id:Date; b=Lk6Q921PTO+ZAzSCHrVQsBE+tRJbBv4V+VxYDvYRQiDB6iFPXcGnz9WQmTMA/uDCHqLg//Hohr6mL5utfCyIe4VIpw2FM+eHnTv+FDRqmCo84DwHEMXvla88j1U8p7g6aASvBQVlBVN5VWIoT9PYHDeleiYIgSJ3jqsCSjKnUy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GDq4XzD6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GDq4XzD6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4092C113CE
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 16:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713283762;
	bh=iacyI1lh4Vu1D5LEugUlxzeRJVfx6pAe7MAV73O8KjE=;
	h=To:Subject:From:Date:From;
	b=GDq4XzD6KOe57TLNWTa4hOo1utpe2duo2/UzkeNvEhVYDDhEwul0jGYPnAHjQ8sPT
	 JlxuRb1EHUyPRU9Naa2EqLioyqJY9kd9JMBpNbApPFXGku9zUn3Ge507UVih5uC0Wj
	 0tK1GFmY5+eEApgas9zo398KP1l227fWe0MwQJWDPgqtYYyWgNKnJX+qoI7JBKrCuF
	 JNQUvSKIw8Eo02C39qPJ6KX6art+Hlty4pHQ9u+6oy4MZcA5GlzgYkHS6+ixqcUTif
	 zjjDA3IH2g8RQoOUbGKSFh8rQBeHGbYeDBOEa5jVzNfzu+U9p3Aqb7WI241H5a3XcY
	 v+RI+51E78YBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2D43C04FF6
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 16:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171328376278.3539.2717170820519400065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f1e96d9c8cf9dee11d67b0d0a92994df76c6f818fce801b172c9bc4d17dc960
Date: Tue, 16 Apr 2024 16:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713283762
