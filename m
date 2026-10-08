Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 464051B4F0A
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791441634; cv=none; b=ck/u2BTv4J0i1Oez0E+W62i9aGgidJouBHAKWYXgBoWp1ifMggH2/CDRqA8hm6xYKBCLadXSydqF/ABYWcXjROV8uwwAKntrahUKqh1UVlpS3nxtNjgxBUNJZUHT5rt5HNaTGu5FmGSPLr6GOj51I7ilElHafOKshojfRVHmo8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791441634; c=relaxed/simple;
	bh=2KgWOz2pqFGYg+9T0V63qFBx6dWox7EoYFs7/PjRNzc=;
	h=To:Subject:From:Message-Id:Date; b=CLT5QIY2Zave2w2GUDqyDbkCNSrMtIJ3N1lDX6+s3MGFoezYdvXfKmi9SOFKmVC/EGucAPNaUFOfSNS8w+hVltd6XEQaMgxA9AcoGviVjJF6Z+yRDyB50R3ArR114hzXHGtno/abYKELFQI6JpCe2RCuo8T7KwretI+tHv5+2ko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XHK1vq1y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XHK1vq1y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D292FC2BCF5
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791441633;
	bh=2KgWOz2pqFGYg+9T0V63qFBx6dWox7EoYFs7/PjRNzc=;
	h=To:Subject:From:Date:From;
	b=XHK1vq1yAe01NwW/XmROvTqQ4sLN6tXLG7JGEj7VAe09Uy5iHtAolVxVj0KEWa0sn
	 LbjfCd7LxnH0s849GvJZfQxkaeRKBzsa3lyBOU35peFosZOXbEnRkvK9JimsnVgsjI
	 9ioas6SQn8SHxR3k0IzI6CGEnPZ2hbcBp3rATwdbpoFoxXb5YCsJ0XF3STq6w6rGul
	 QQbCpQNwbLSeZv3+VO0iFAJkg5zGRBVk2k7BhxhVpnlB0Z3A04GRJBdOWgc7Vhr/P9
	 L97okg0Cft+UfnFI5lWTs3oKgwa6dux+WlYbB9cGUY7o3Ev6XO+aCfLtIAZ2T5uww+
	 yOjLqY75kOwQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACBA4CA600B
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179144163369.30985.5110524206250162353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b3298d06cd75ce3e78dfbbfe92dbc39f52cbb696e016c4349a69d11451af88e
Date: Thu, 08 Oct 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791441633
