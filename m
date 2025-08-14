Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1880723B0
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755133794; cv=none; b=twnih3LlZgShb4if86dbC7S0ZSJ2nZMFaYh36cNGSOQq15KQAwPP9Qwk7E6wN+vBe1P0yfWcbvqaM8frw+/ZyZie8d4bUWWXZK+k6LS/UO6BJBGvRMt8MUqOGdEGibqqEUnY+Wj+3zMarOyg+EVOXyl49SVtvMN8kHbk4uuNdCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755133794; c=relaxed/simple;
	bh=P9td1936yvzrGwZF7K0JzIJ5sstP617AlqkVkPOk1g4=;
	h=To:Subject:From:Message-Id:Date; b=YIiB+hpyeqjHVIiguickuFgNsJDxh/pZ1JeW1SvYx5dMlJcziGu5tQYlaIGxFuHURXUje4AULzKgSSn0rVEWOnn/XAfOvoWiLKCW9VFucpps9K0y7KIiuO1AIkjuGi8d/H57GQPOozsTsRB+sgi96MvOwWgJ0Oa34VxAOeJjRIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oLGUOUwF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oLGUOUwF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F01C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755133793;
	bh=P9td1936yvzrGwZF7K0JzIJ5sstP617AlqkVkPOk1g4=;
	h=To:Subject:From:Date:From;
	b=oLGUOUwFWgMW18iP72A+GXQVh8ZxurPSTAwlCqy+M34XgHZ8npGKK5ojmj+WqgnYK
	 1F9oWBBSFsKMyTCl2RXdML+jrGzYtU49SBHyfc/E6b20DBBvrNp4KYhKiIM9m5FSHa
	 1hUylhsN+64XeU5Nj64zL6kDke1HDDvueSKhjYWfNRR5eii9oMSub4vF8o26B8Q4Wl
	 XLZ2oba2yIeoV5bBkRvkZB6VrA2biqY0cI5JyzRJ59H1ZegnUpJmtVVk3cIuc/BSa+
	 YEJnuXpSpakuoOOK9ObdGD+SsZEGoA27W6JvveYoSrRn/zQJTrEhiDbGPbeULyYMBD
	 TJ32yT3UcFOag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AAECA0EE0
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175513379358.10283.2760099482824665310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59d3d0aca1786500fa818dd325826cafd747ec7c43d61cab68e342e16501f7c9
Date: Thu, 14 Aug 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755133793
