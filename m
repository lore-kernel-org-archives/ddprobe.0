Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 630C415E88
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 05:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716787463; cv=none; b=VXvO6F1eZMkBHV8T+7fXtefXRH9ER4nf33rqXVIgWt+YPkzJx1ao0bg2kgV/XJkpytrQ1vW/ydoW2lesIMOHawBrRaTDfKIjbozCE0LC0NQH/m1GevWv2kABliXqh4k7k324gd+UsTnn0MtR070YVnj/k10XP/ep5a5r5ajUTCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716787463; c=relaxed/simple;
	bh=q0O0VoDvNSG56+0msImuV2gWL6dDVaAvpuaWvFa8WYY=;
	h=To:Subject:From:Message-Id:Date; b=G26zN2TMaA2/8gXEnd2OUxA20HDAATbGdhRM4ZZbZdy05uCnDJPh4ux6rYGGykvp9GM7xSourwq6HIGCj7PlyhFLzszZZqWte0IbIaJ48qNbCZXXn15dr8DiI1i7CdKiJ0x20qYwJtZg4c/uzHEdm0ItlVtxF0beCR7A2ncFHCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KiP7g5TF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KiP7g5TF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1E78C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 05:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716787462;
	bh=q0O0VoDvNSG56+0msImuV2gWL6dDVaAvpuaWvFa8WYY=;
	h=To:Subject:From:Date:From;
	b=KiP7g5TFr5n7dDbCxOyt1wEcjM+gqC9Uok2h/CflzE6RHfjNlPlzYTagRLi4jym8f
	 BIcGy7hzMJP3JgHkfXQnWVSDRYSjfkrx6NbjaY9tijlF7w8TGLFJZ4inDwgsEzX1yt
	 TZip680azlmsWDKiRU2OVWNs74C6ETwTOpxQ15EZ139czfs/nNlYpCpCUyLhzX/Lvt
	 dhTewFYbFJcBdSTyQTZ68tw/KdYGiwNSB4kaEYGY/nbk/C14w3u52awT7D2JDRWZRG
	 A8HWobmUtRQp6gUznVuiPRY2PVv3WVZHBVBKkuq6TrvHNJzx/Zi2JV2HDje894LwxZ
	 SqQoVzsaGv8Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA1B0C25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 05:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171678746279.2497.6807149832136176728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d58432eff26ce61b0b8b63c2cb7090a3d36331a3c24b8b85d252b5128336b59
Date: Mon, 27 May 2024 05:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716787462
