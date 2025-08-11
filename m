Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AEAEE555
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754923794; cv=none; b=uQ5jgqubZsQAIFn0tizqBD/fbGQ3ZuAoHqbttxhA3Ciwf0ba4NXJL/PJ7EK/QbeK+jmILDWhDWDDOg8TZktAObjBaLNsiItWqwtPytjZ3j/hGNrnT98EsGfg0rkZwSN4sPZGjmhHgddcPa0zNP/uZXx9NMQ1pWXwJ50WCHSGM98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754923794; c=relaxed/simple;
	bh=v6nCDgdu0j+34TT1wXxNIRJu3lHSY0q8PCOMLqGPIU8=;
	h=To:Subject:From:Message-Id:Date; b=CfOUv3yY+iwsK7I0zVFwriByds7uOoZ0NCIs5EJT9yAj504rbDK8NE4t8MOvL75lG4V+PNveH8n9OoRMFk2VPnNvOLaljp0BlRZMQQIDymM6s0hrMh92mXnA/DhMhH909Ey49o4fj0WDNGqzmV6ZhOveVTQFrwALuGjctsnZ/Sw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mS8QnSWD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mS8QnSWD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EFDEC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754923793;
	bh=v6nCDgdu0j+34TT1wXxNIRJu3lHSY0q8PCOMLqGPIU8=;
	h=To:Subject:From:Date:From;
	b=mS8QnSWDdbv9uinQaAPRFrlLVvbmFGOklmmkfsjeqUzd7yAJwWuWTCemqc91mP4N6
	 aJcz7wA697YX9a1l4rdW4pWTbtjQdIOBUk0ytDuaw58gxkvVrckXY6UpDErn8XGw10
	 p+jYQsk5QfHFUGVjsBoSgBxOwy0usLrnyVQ0XiyzTylujM88mUhWawzWr9jmWbqLJp
	 PCfO3CPzrOyEBuB3KXZGz/zvG4X+r+qdPJ54hW1PbIUdCVMa2hexItUysC0IWjytwP
	 LfLBbeSBxFX5PwiAyqcTShyr7wyIJk5ZkXc1R5CFxF7O4nWDZO7GFTfy0Jhd1QdKzo
	 W3QXybCXOQwzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4A9C87FDB
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175492379357.22872.15241955944517820074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27e4f6addbaf13c3734e508c4590aa1dddeac12436d376ce6e778702b5e52c37
Date: Mon, 11 Aug 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754923793
