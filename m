Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41664399018
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 21:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779916954; cv=none; b=at4A3b2qcoAqcCbJOT2si8rqfIvoPDRMthp8twNjpJ2mHuRKncpnEO1CqfEZpdHpe31/Qup0xdZDDtkrjGOHqgcdoLpo4MlJvS+6SwnZqcE2nkCAXhsmS0ET8FAsDYBv7LpF69xPodyE9jMmsepFIW+qtt3+ceBRtvNkVgcLBTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779916954; c=relaxed/simple;
	bh=tLzQ1Dzjlf8UIQSZ1/lX8gScPXC5/KM6BUV/VppNC1A=;
	h=To:Subject:From:Message-Id:Date; b=G3nzlnXy15F0Q+MB9UCYC+akbw5M21EuQ8Z7zO2yhaSvUYruReC48m3viqqheJr2AXYNueyJOmGARE27ASKoate5Q0cbxNN9gAbxbHJBhEiRHNKXNzmkRiOi9k5YWW0lLxPP2b/wi26o4n2AmzuhhO8PLPavVlBsbOYoqfKvVhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iYWZLVnU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iYWZLVnU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCBA6C19425
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 21:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779916953;
	bh=tLzQ1Dzjlf8UIQSZ1/lX8gScPXC5/KM6BUV/VppNC1A=;
	h=To:Subject:From:Date:From;
	b=iYWZLVnUgzQgnoOYfT9ZBov+7QW6QYToptGuYDtgF17pD8YWL05Xs6sEXfL40QT/Z
	 Qd9+BZpxWC1/HOMP6cgR3xE5jn5SeJ52pnBhpmUFRURB6/Uuw5yb394b80TTFakkwl
	 c0BaTzLTkBeuM/XmW+L6qp8NYuT2XMz1M1ZB1+7NA68th3i4icMTJEkEnXTsoUnaHH
	 ffueld+uc8jMx3oB7LlJMJmkGJs9X+c36ax1jF+x4ybcbEf7ezUsKTwMQT2gtxBWZH
	 tDTAKthhL07m48oefO0zwbpI7546YC0UTeXTbEZy33wXkon0ytCgeqNxZDIqslcJ++
	 Qz39bBkfz6Bew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0C4ECD4F54
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 21:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177991695371.31597.11263489016488372079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb944c3c7c4a395713b7607bae8486215c65950cf4722b706e4c4a45a81f3d09
Date: Wed, 27 May 2026 21:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779916953
