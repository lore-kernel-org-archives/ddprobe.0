Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 297C98BF0
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727979354; cv=none; b=IGFMDK1XVPzXJO787pacXecT2AHgbEdY9qMSHNTexErhPvY2Ko01JQdWGZppHkKrQ1Dc4WHwvA1uI3h9513L9avvwT9ljaFIrudi4iICXorLeOdrFk4fZ77D8MzQCo84UEQvtHaF03AYbBnScUWcsWNCJWw+sefVYDIVk6pGw68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727979354; c=relaxed/simple;
	bh=mJ55S7pX8hpfgGpH1LLng9Q5fZysRL9ZZPC6IhVEHQg=;
	h=To:Subject:From:Message-Id:Date; b=F/lOHaFU/igSbG6G/wodSkUfKu3wb8jwDbqVd3Y1vgdL0o5yt9WCkGL6PY29Ns7qtdtxLl0s9NwafvzO8evEtVnac4eHO9RkGHMyOqL61vQNRn6eZoukjnJewGb9pohJfphcsXklmbVBu4UZj0mjf/qFV33UmCiCzTIzPUIMgd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CEccWOZE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CEccWOZE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABB38C4CEC5
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727979353;
	bh=mJ55S7pX8hpfgGpH1LLng9Q5fZysRL9ZZPC6IhVEHQg=;
	h=To:Subject:From:Date:From;
	b=CEccWOZE1LJdRstH7J+LFlYhnkrX9eO8vxKKXPSof3cuSzjuka4qAfh6YplGJYe4L
	 D0IS4C4q9hHXWQpOeibpMVFKCiI3kqo5VksqYY54lsHd2ThEZJSojHy9ap/Tl862hm
	 x9wrxmV2qMk5d3o++rGnr3HSjlhcrYM6+tMs4cWsew1NvYQ3bfWIrOkwQiy124BVta
	 3k36UY/7tH/MdRsySfp4dkHuj46Ac5s8WuWdT26+Y1WOA1cAU48Ta7i93DKCKADCk0
	 Qumu7np6q/YGcjslfsOKOhp99RBvRT+9tDcLn83jIMHZQnOarQfKeXNVIbqHQXi7Dn
	 vVagZu4iaTgdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953EBCF34BD
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172797935359.13836.2870139324149669596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 286df8d4c25ef5f76eba86d3b3a6174dc19ccfea65cebd38833ec22527b78fc0
Date: Thu, 03 Oct 2024 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727979353
