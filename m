Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D4F36D510
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 07:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764488574; cv=none; b=q0dqqmOJt7/KhkuXzM8zKEh4Pg+BUIq1YXhi2zBJom7nfea66+UvOS60GN4wcmal82osjdjwbdOnS8IDn1j4d2k2uomhiwwVoSY/E4clEVZzhECBszzd/j2YvVSUxgqR9XLS3C1DDU6ybEielrU84qEFn1Vfhqm0JtNN2msrx+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764488574; c=relaxed/simple;
	bh=k/VnU45BZonOFgZ0f4CN3j1qsehCkwy+TRy5YGgjMhk=;
	h=To:Subject:From:Message-Id:Date; b=T8ldxwDQeJhGHSHQo7t+XX4ofz21eWFJJUzwg1D1dWpQzi42pIS1FnHqXbpxBuBWV9JwO+G/gKNv487VDcFbX6DW/3gxvrNxUYEkO9h1Ga67uGvOyZm1tDodzaq4eTW9p4b/VLiUuGGKhxI8CqiEBRWu+rBYMVdGuFgI4sHCfI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b9BDeKn7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b9BDeKn7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9605C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 07:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764488573;
	bh=k/VnU45BZonOFgZ0f4CN3j1qsehCkwy+TRy5YGgjMhk=;
	h=To:Subject:From:Date:From;
	b=b9BDeKn7LUvwp/UkOajNsDLCh8PSwZnZkBnL0IKswhHsta/uASn4iNK5NwMaO18YE
	 syHbmrmyoJkBXRTpzM8latZuiy/3YCbs51l4mifNM554jZZV+osFvaTHS8FdHf8AJ9
	 lPQdY+KnAEmLK7X4HHdUa8nWusx2x8MAEIG8IrFdjmk4qK6khscfKTxFfNu/jv+J4H
	 A4yNSmt9YLFyGtvC1wjwEppj8Qi5EVXpNyLuwa4MVvLYilCIAtUH0uXHhv9daL+WwH
	 SRJ+YbudzFq0Qel0VfBagCbRhu8Nd8C5ghdQgSao96U8Q7NDHPvVvv0avtJIyQqhr9
	 4JfYgR9TB0jQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CFBD111A8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 07:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176448857358.10798.15182937404062018028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fb647bf1e8eb68c985b7d6166ca7768bc455cff3be5c95691f5058e16159e9a
Date: Sun, 30 Nov 2025 07:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764488573
