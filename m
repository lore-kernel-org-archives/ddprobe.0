Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D642459CF
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 00:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777942654; cv=none; b=TOLrmmcphddOrSUo67ljpGvHK6JzknKKVyW01+LG4HhBVkYt8AeaVaynx/H42B3UuOVhrdo27GzjH+obBdQoP44ZRztn3OXtYcfaF2Z32z4osOMF1EFqwN0CZ1/vPfhjN/VDRgimnalN5/uGrtPvM9IEzZHLvgTdY7XUAb5jWoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777942654; c=relaxed/simple;
	bh=Updh+G+2bdrG41NYLX5zJU2sI7GqeEeRRYbaS/e+S8g=;
	h=To:Subject:From:Message-Id:Date; b=ILuOWK3pHV7JHr0jGM8XUhMQTw2cXIdAtwdl2gAb5SG6sAUv3b8gG6U5klEZFgFS/1zOxW237H/0mqNkV5cGVtqVrtLgegQ6pqzBG80CmYlz1hv+X+wAh4pUBN2H/WtArElm0ivZ/f8W7+2387fPpbqt98k5YKZVYNccNthkm5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FhfcSB3v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FhfcSB3v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE78CC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 00:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777942653;
	bh=Updh+G+2bdrG41NYLX5zJU2sI7GqeEeRRYbaS/e+S8g=;
	h=To:Subject:From:Date:From;
	b=FhfcSB3v+90uDYTreIx+AI7eySX9MHChQe5wZNeMG9KglZZMJsQ93FI9oZxSMfh7d
	 KpL003TGXiFMtLW5A5L88ZgVAZIw2NN62Lxpt1wtK5ItXBIv/dHvHsACSouy5sN3RP
	 Ptn01elff2b3jlaS7AzxZSebIP4udGjk5z++KBphSuwGKPxlNIVxUpwAwbVgO/dbiu
	 EkwQVWxsMlrSfoRn4mAkswW5phUzBKAqMQiNAtdBeB/XLXKIhuxZvuCxjqLEI66CD7
	 FnrsnzGhJ3yZPnYwVVHyXZs76keDi5NN49NvcIaWKPQ7BJFXC8BEDSZXDHPzJHH0zB
	 LL/z9eO9PbjjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFCA3FF885A
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 00:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177794265368.6698.11876059588339174497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93096975bcad096cc39a6b69be5e74af395a3754e65c34d1d7aa442dbfe2eacb
Date: Tue, 05 May 2026 00:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777942653
