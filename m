Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EC8E469832
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785934234; cv=none; b=l9ZWiolOB8FlzPF+YMjidJVR7eyd03OJWSscKQRYS6FG0R5/XBMzgd2gub9IAI8wKmH9BV+detIe8dOentYSV7t+Oj3HOyQ7iH15I1ZXCz/VC7Q8KT6BTaWipf88oG7Qu5akrmzcKCu8XngQ/P0Jzo8XfeImN6GRHVRVJd4SI/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785934234; c=relaxed/simple;
	bh=VR64u44/I+QuBizS2bkTKQpFJ4TeNEiZySplqRAWKn4=;
	h=To:Subject:From:Message-Id:Date; b=LfWPriWcexmIhAYYQLGnDNlXIG7Vh0tR+rao0uNG5ZxSUtSO2A/L+o5GM086hEQYs1TflhXx+MPBKaTj9okGJtvnwVjUdPEkBJB8Vg1UVEc1B4eCuQv+xi8L6PuJZG10z64XfaKZAfvjvPbjNjWXgNInFpyMUBTbe/4i3Lk2ym0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c2n5A05+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c2n5A05+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0479C19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785934233;
	bh=VR64u44/I+QuBizS2bkTKQpFJ4TeNEiZySplqRAWKn4=;
	h=To:Subject:From:Date:From;
	b=c2n5A05+0pnIJy5kZzlphtnpbAMfRyYPP7zm6vNEAjyZcqt2Uy1Jc8j+Mvr7ip7Id
	 smudK95fybUMlRGCalxocPdE4DSz4GR0kn3jAxmQ2mFgr/5couWUh/TTwjGpn+4nQY
	 ygr3yU/6+6Sp086Tnmm3+Hdl1J5BDh0QgYMfHmLDQmN4ldXHZsa8jmftnlWWhOMVCA
	 j0ZvCTwL+WwwqAmAeLb3RwwB0yfrU0V3Yq9fJxe4h4clt8ErkG+3L1578caQ69HLpr
	 Ws2r0e2YOxLeC/u9QXn55rfit3laikxnsmGBmpEnWcLqbCOYt3hS/RY1Q9g8c3lkG4
	 upAsQZ6DZdopg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA80C55ABA
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178593423369.2140.11454813403193920422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15857db32ea0c1c3b4f5ceef208f74bd7f2bc0f06689b856726ff93ab5727752
Date: Wed, 05 Aug 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785934233
