Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3972B21420B
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 03:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771125294; cv=none; b=RhdLnh2mAi5bCmFOtmWNM84zq/t9Secj8rkZ3GTygzweDGZPHyK9e5h3OIeNdgM8Pgg3FA0JtiGKIOMKqXD2rdq8f/EjvSvNujpWK7OoJL5+eT4MhHZbGwlthwVCAo6p+QxgkkAihg6W5CXnN8y6LoR3locDLb6v9nJyjj5tLUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771125294; c=relaxed/simple;
	bh=c3fOuEFYLLkurIJa3J6TcI7mY6Y1MX6ph7o0iT+v9U8=;
	h=To:Subject:From:Message-Id:Date; b=ota7YYUlNybf15qDwEldcLnnNfvbhFdGMRxIg8nenR6JR8PG1bqWBCtQKWc1MY3n/80JzK9CP80/320KMs/lMQLDjdtzRGnVtSaH6IwDqjQ+a1TA13Z4vRUqIabTeItgIQZOVeLGYKaTjXH25laQqEGUqbP7MsRtses2o6JkNCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R5BreIpM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R5BreIpM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAA44C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 03:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771125293;
	bh=c3fOuEFYLLkurIJa3J6TcI7mY6Y1MX6ph7o0iT+v9U8=;
	h=To:Subject:From:Date:From;
	b=R5BreIpMk07YwPG9FY17n2Nf9Cd/UGfpPDgKG94HgtXkNi51OwAUaSQr8hKKwOfuA
	 Pzkz8Svy405AacRFVDm1i3hj2W9YQ/LiBCEZiFty58tyc4Rq1AlTyCl6Q55Ekvapfo
	 E4QjjrSZhjMZdwns8tO5dI4XiAr5TIKZ38+ewx6+GMRvHYop8qHkfAclrYlAOg8akZ
	 BsNgQfkU7jJbZpTalO6k6LJAX6bI/s/85Pdz425BUfJs8XZMq5tz9t9OPtPMI4b/6s
	 rp8kxddOuSEVkthFcaZYHlInVxb+vkNudyCeXzj7AOXqi9eOqopQFZMoztlWBRV9fs
	 47HIKr1SqZcOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4759EF5869
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 03:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177112529361.26276.17646900834736184833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b4791f029be9ef0b8e6c51b009748698ec95897267aec949f416f61ce9574c2
Date: Sun, 15 Feb 2026 03:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771125293
