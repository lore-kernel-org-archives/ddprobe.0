Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C9053A6B82
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791270034; cv=none; b=VAmOfBRHhWZs3vb23fzt6tAQDQi+T/TncydHp+SY+NfACEPRak8PXRPZEmgYL5Xa1HfRqqof6UDgk3Q23BwvKtdEGlDC8bR5gvyU4uINpefhh59r0pj5btoA96fhiIvNFZfaa7/6cWfrKjQEbJHtsePTu/qVBX7xYraSivs7Xws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791270034; c=relaxed/simple;
	bh=DZjF/DxxbUaHQ0+m6k6OrGuuluF8jVHA3LSqIsC6Y7I=;
	h=To:Subject:From:Message-Id:Date; b=aMm/RYqgAGDmR4wxbqEx4lbmSLRYjMVk33+4Y/HEzjYwCCv2qCkjy/JNIEJsA0eN6smPQR82pLfdCqMKA2/jiuHLmfKUIutC5sZ4zjLdxuITiFbst9XTQU+GMJCsxx78Ox7YF//oE9gYfPzm+GhZXQK7j6h7+azHskpQ56xLuOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FayTcqCZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FayTcqCZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D64E6C4AF13
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791270033;
	bh=DZjF/DxxbUaHQ0+m6k6OrGuuluF8jVHA3LSqIsC6Y7I=;
	h=To:Subject:From:Date:From;
	b=FayTcqCZZSG6xRODSpU5lj/VtycjH1m3aCE9VaaVjYvQjJnZY2ET5Mri0qkXCJj9x
	 Rn8pCkKQJk6lkDs0t4hrz6hT8WWidEJhlXWgHl8SiNCBTup+9ZkRuthD1pqxSFuFHe
	 J6nnGXBoJbsQEa11OKkrEjeNauoUTaRDbyDdgHkPY1ivQIADgcJJZ4g0MrXXJaXKt6
	 OvSimpHKGzmuAs1fcqdVoXvmaVFQzXjGiTvCucqn1xi36j0GFcPBofz3dw+FdDv3u3
	 LZPRgOU7mNnbgzVSXmB3ceFRQUihSlBeoTIG0uQ5wUTsFuzSLL28L2FH3EGx95sls5
	 mijcZqozoCcGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1388CA5FED
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179127003369.24656.335079973473450384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eeaa160ad92cf97cab733eebf6a60195d1ebbd24b67a00b8c98ea37cc100f005
Date: Tue, 06 Oct 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791270033
