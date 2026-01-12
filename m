Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BF3514BF92
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 12:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768221834; cv=none; b=goQRCF90E5HZC8GKD0FwTJs8qMy1Be7tK0m3JKaSiQb4nP92ETsY3+xUyxate8dWZdcp0QmxAAUyPg2/akjIJft2JDrn5IP+pa02M7/jR979xSniLZhuwETyod8mPe8ZBFl1WkG6GOfpB8BEz9LLUAma2PyHY4mfqZF2U4BpMGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768221834; c=relaxed/simple;
	bh=koe9qFwLZT37X6SVGmZ3ebJlG22vx5ZqRlODs8wiS20=;
	h=To:Subject:From:Message-Id:Date; b=kkHwEwFt4xro4s+XwTdo8L8xlDaJqTJew9Z/gEegDcZmzyZbbjLhuula8+JVmYWVy7akBcpZmAYcbByO1kDN2CyWxT/J0tRks24ZLQ4zwA62m2uDy3/9bTPL/3DnwtyIuYPbD4GA9ClH8ytWWyNoXINsK2CcnfQgGirqRT1zubg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dz4i6DVJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dz4i6DVJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E38DC16AAE
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 12:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768221833;
	bh=koe9qFwLZT37X6SVGmZ3ebJlG22vx5ZqRlODs8wiS20=;
	h=To:Subject:From:Date:From;
	b=dz4i6DVJppzmEVQcLkaultYIACSKi0SRDsyk+WJM9f7ICbCtj6tkC5CwEolGwXk4h
	 VhAHKcaqOYRYn7yRQkHuHAcBwfgV4RuUq3SDP71jqNuV+lPZIOaY33HQ5+UnDLD9vi
	 9ctgy+Ok/DwAJdWvNmWdLFaWbhXknqCqedrhS9F4CRV/kF3jyWVRVzVTU4Y1heGpFU
	 k2c7rSoz9UWYQ0I1dNiSC0idHEHXRzNvfq2s0BE+wawqvg/WvXetW2uL5nNTgKpAtd
	 LTeMq1BaeqdS70uv8SD3lBAgmQhvO6Nk45JjE1fpuiEzKBKojIYtwOyGekiuFAA6f4
	 dzIYohHjIZ6qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1ACC9EC82
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 12:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176822183357.3387.17197544589307003810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a9e0c923bfda835e262566854f1afa30e01eaae71c3f44ff6ec14da7aa6b96a
Date: Mon, 12 Jan 2026 12:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768221833
