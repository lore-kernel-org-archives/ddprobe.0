Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 212831E104B
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728419154; cv=none; b=GO3sJdGdasbLZujt5dKUXnbIH9TNh8GVrf2xcON0SLRhylKHOarY77No7CyimGMruGOOG8GG48a208Fw53tyruXh+09H/cyQjMrFQeqHISZ/hI9dq9ga6AZmlWqLOBq8HJwKjtLF+FvhEUa8sKlJg0R1kVDrxQjDZh+XfBkFvGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728419154; c=relaxed/simple;
	bh=jh+6y4eO1RRm+56kYzIMd+p5opgqQK56TiNWsGEXIw8=;
	h=To:Subject:From:Message-Id:Date; b=N6TwkuX8CeU8oyAgpGnHsz38sszVTDYJXnPWx+NegycHVijLUq1oKm7KBsRlTN376RBDA4G71VQOesapasVOL21DzIG92QqtUivyJgNDRcJdvG/2KNGfTlqygtBAiBbgkeTJxUi+vUcgBNYNpqmRUuNRn8ZxDv8JtwmCxZqDYeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r/xslF3e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r/xslF3e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7464C4CEC7
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728419153;
	bh=jh+6y4eO1RRm+56kYzIMd+p5opgqQK56TiNWsGEXIw8=;
	h=To:Subject:From:Date:From;
	b=r/xslF3eaTAyCdO5HJKyC28TrgyN7xbIwSJpY/qFyleP+QPVKZXNDfDcBCCPPoNpB
	 aOpY30DyF/ArQEfBMEfEH2oxlgIO6G+yBQw+431fwmp8tGxitj0wKegpbzgP62Sm35
	 yIFphm4P7dMxoi3AqEg5yoRIMvJtsGgiRjcV/15rF2C9Mg4vb14PhwzNeH4rOvZaXh
	 rtGrp8ukdg52ikxIHWdUMQTbbBRKUydaEqYe85Fe+IoiaHkIwnUiJDH5IvmsyFmPpo
	 7Dlh+yCRGmPQwEP3Y5eN6g/nNCayrI9m3pj7iaJ9Miiq6a9Ft7wgYMSIJuf0Z4dZvT
	 foPQmp6Nu/isg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D4E9CEFC53
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172841915363.17710.10138450149130538693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0955103a38798ff164a07cf652d86f15a610034256d289c8cd97b639110b724d
Date: Tue, 08 Oct 2024 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728419153
