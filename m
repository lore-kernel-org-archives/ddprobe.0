Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17B45194C98
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 09:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771667694; cv=none; b=nFv/8Iw0mkw6mm4C4FbJYpX63fRASq1BbKURvwq7Ucp8XPnBKLYbrqd+GyYxltMN0j36TdSjuX+K0LF6O6ArnIVa6K1IHh63QN1C+l/v1ezQbZfztO8Xa+0T1BUTmAhv60ldgeiITs0Hq2WzXOjJTdA041OFRajH8fNnJvAZPxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771667694; c=relaxed/simple;
	bh=xpb0STjQaIkfIRpavSXW0myjGbI3CllzTAqLdLeUe1Q=;
	h=To:Subject:From:Message-Id:Date; b=V5Nr7i8pthZhY81Ywd4Dz2oTYIn4qqzi3BGgQhH/fZbg7csQIGLX+9LqFQSK73g0KEc3zccABtmE9rw83jqOJ/YWPRBujwESLes7ALOPh/JhDbOjbrRJUgV5tT9YTdAonMEPKlwFowv6Ujpwrl0DiCUYIouaBF6SZ3oXdiwB6Bw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jX2LUVYj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jX2LUVYj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF6A7C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 09:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771667693;
	bh=xpb0STjQaIkfIRpavSXW0myjGbI3CllzTAqLdLeUe1Q=;
	h=To:Subject:From:Date:From;
	b=jX2LUVYjzQeAX97oQzN0JFGuBT2W4LsvQNTO5meXoA3d2+pWo+fjY/FbNLR6HIO1S
	 x7W6yyowgT5msvrDYTIQG+WLczZJAYo4kgDlhOxfanMX0jUJ0M1DvFjhZ8zbmP1Tdd
	 sbIH6rO6UliO/5Ru3s8vkv5aozfD7/xg7GJuG/2WcO1XROHtkVYllei+W8kT4cz7/O
	 eQMhsJZpZecoGx8RJV5zEziC2US+GaWqATgGAHNXf+d5eSBs+XF11BG/Qf81f6SgCC
	 rv9Ix0qzIGoogd4FZohTqQcGGR6qVl8lKoGyTVvppjnx5MD1XGfeCeWIT/vbatDvPQ
	 B/7Y23pMd1/ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E3CFC61DE1
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 09:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177166769360.9657.12959264639012733251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e604a1e1ff6710b7012a862201a10b86fd06dfaeab4593c3143c3079870461f
Date: Sat, 21 Feb 2026 09:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771667693
