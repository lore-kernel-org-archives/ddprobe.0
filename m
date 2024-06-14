Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A0B81922C2
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 09:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718359103; cv=none; b=k0COHezwGI1Wy+Z2zEHFTMMIBD9+L31kgJwbg1v0ioTLKsOdhuEAnATvvQL4zwhNqQpaWYT/8qEfOCuCE5Uk72GyEEqzV5m/fySrgBwLralHjOS4PMAlrM7/gEbcX3tEPUXA25DB/Pb6LrNZooInjbBo+KsG/02sFRrKNm1L/vU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718359103; c=relaxed/simple;
	bh=wqax1Br8N9IyHX1vnHGHLtrlGe9+ZKxd9pdEH7fJ6Bo=;
	h=To:Subject:From:Message-Id:Date; b=gmF+5bSzxXowXLUxRWW5rbMX5VJv+DLRSQQHSe3Xta8ItHMUpZiQeYsAQYyyXTZLuNYQn4fbv15MYdqRWNjP83l25m0y9lxz9dmsbPQHbf55nqdtr/f3PsB6fp90bitRDq89QbvZGZa0Z9bI9zXaZZcWMLw/kRmEWogY1P4f87I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ItAYirds; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ItAYirds"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1BA1C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 09:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718359102;
	bh=wqax1Br8N9IyHX1vnHGHLtrlGe9+ZKxd9pdEH7fJ6Bo=;
	h=To:Subject:From:Date:From;
	b=ItAYirds5f+VmEyygdPSSUukyAssm9jsGjiLIvmKXHb9flvbQMewNJGQ+R1ReofUI
	 JuVIEr7DRo9t4Fr84DnkL7KM7A3+VAZ4mFhpBjzbJ8zddHiYsvL3pcxZ55BxnzIFBJ
	 W+K5+g5JHYxE6Oa036tP4+CEqc1EtGRrcxTKi6dFde3bBX8qRUqiuz60X1bdRbHLw2
	 m7CX40AfV7s9j+aEKF2cKEsSfeI/LegK2ETEyMdUmbuUTPnKkwyeZvYJ9wRWSYyoII
	 rhvfWby508t1SO1/2CU1KLLZYRi6718LPramUOCdONCCD+4wBlWR+1E0iE3088IEK7
	 iAqL6HXKhR7xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C57F8C27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 09:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171835910277.12051.17050205747100379597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b28a6d374bd98a871f6f916d3ec0e97f4bbae1d108fc31e67aa6c7d258961c7
Date: Fri, 14 Jun 2024 09:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718359102
