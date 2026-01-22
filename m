Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B70D3783C4
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 22:53:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769122436; cv=none; b=JilDf6VTsV0atWejQPnCtu9NWAHwj31VAeo/vpqtRnlaAuE4iyGIj2wkSiDitlbqwgbjzFnhhHp643n+ohIbY8nn2SVpYOYVj7xlToIArjAo99ea/e3noMA2LGA5s84RibKLn9OsB4CgdjPdRdGP4nEf3F03R+oI6eAdOGYIJQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769122436; c=relaxed/simple;
	bh=laB1h7SlOMg2TkTNABq4tCq3KNvRgHi1egzn+CJJITc=;
	h=To:Subject:From:Message-Id:Date; b=ZjDTNy9SyvkG5IkJ/T7+tw6Dl2cdZvDuErOOqbE+Zy8KQVSlBXW8jVxcv14yilrAPmRZiNA+nP+u8LSAM0XkrUCcIeT44a9zv0SmbsuJtEuDv44RELEv3HpUtcMjLSVeM2tc2s+HTgFvYDQb6NENqJQk//giTpi16uArBmdEMN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SwnqoVOM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SwnqoVOM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E3EC116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 22:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769122433;
	bh=laB1h7SlOMg2TkTNABq4tCq3KNvRgHi1egzn+CJJITc=;
	h=To:Subject:From:Date:From;
	b=SwnqoVOMFB9vfluKyUFK/dNlc4uWukY7l7Ww46ue7E+QE5WLrQDffT6yYDt7bQg4X
	 CWj6nblKPfRL/L9yv5VAl1GOJQ46imIot8p5DZkTDcQV5T3kPa5XjmS01ZQJ7NG/Lq
	 NsiH6cBvbi0f7vJbHG01GH1mz7EFWv/K4jaOvxc2ZLiQ0/wDBnfH8A5TyiapqZ4gDb
	 iWSR+Vfe3rI0gmHj8s99f25RuRaYX2KiQ/A8F1HtwSoT34RSdY4DTO9lnA+ac24U19
	 v1fmZM6JoH3KawVYV985ILmuhXAEeGqPe8LbWy6MiWzbN+KtPWLNmeKVS4I/4bXXka
	 t93Bob/Zavh+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91664D6CFAB
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 22:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176912243358.2145.11958249165406389270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6536fb63a75179a6d0aecc16321e1b9ae4c51129cb5ddb6b4036ba07653730de
Date: Thu, 22 Jan 2026 22:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769122433
