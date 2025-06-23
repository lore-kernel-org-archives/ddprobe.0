Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37DB329CB2D
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750709994; cv=none; b=Ecb2fZz+mdz3bgclWSmZT+cGxug2Lu/BOZ8HIIAJA+6Gu5I5CP6RjM0SPZxko40dspRlmekzshIeuhcKBSyzbzScNnIAPL6YR1peiIIISZpSYjbPU5E4QEYVHCVSjlqSH0m9iCdBzU6y7UOtOr0equUF/LdnnKK96yafNsDEW4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750709994; c=relaxed/simple;
	bh=eFyK0b3Fk8TpGre2FCTHbR9NClKd4x9T13967KvUYME=;
	h=To:Subject:From:Message-Id:Date; b=HbgjumKpbpvG7n5jjtkU1IvyTrQPZE8q1atf+DK2X1Wkp0RXyz+ap0zA4rdw3/MgcuVg2H5ffw/FOmYIutXesjP8seZIrYUgzoIn43M4RM7I/d6B5zLZH0zERiPJYTxawPL15g296vup2TX4uf70xl1fB9YG0xyY0nD+YnjaS48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oIf9Fm4U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oIf9Fm4U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0440C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750709993;
	bh=eFyK0b3Fk8TpGre2FCTHbR9NClKd4x9T13967KvUYME=;
	h=To:Subject:From:Date:From;
	b=oIf9Fm4UfKF/rIUfnhM1VrHhPLp/21h/p7a4MTUC8ghulaBxQnUDnXGvk7MpeoqcQ
	 S+0wboUmTRQXENxUeS5qV7nxyqSo+1+6E9H0Yic0YAVRQAQt0D7MJrwiQLynLN8j3L
	 NDaZBQfEc8j+XXzi8ERbwmJpjDAsxvG7Z8pLTjDuZewvtvA6FW4m4fn7ZUd4vuuubJ
	 bN6FFSMU7qcrApCgRojHYaGc6y84aw1I/+w9o++QJW+11W70qCTR9YGqy2Umm0f2Tk
	 wgSjbTxErWuKtfjT9z79YOYdmMxEGR3prZefvXmBbU0GC6DUOTdIRNF+NOATmfAqe2
	 2qNH/tnuSmH4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F142C7115B
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175070999357.3308.8182580813925711280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f953d00e4d8112da135f29b2d4b49cdbe3897f7b490a66244936b354627941c4
Date: Mon, 23 Jun 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750709993
