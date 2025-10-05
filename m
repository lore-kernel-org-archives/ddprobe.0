Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C3FB23B61B
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759657194; cv=none; b=XCWc9rcbE8yrkw+p2fN7JYBBnji4av0OHNPgCwIswoDc+narkUwz8k2Q6nmaEoGoZ3I3eLw8dPKMjE98EVPS52lHx44zkPHVP/3Gj7V0NRg1U7wE+Far6w1OqrY2yJunJb/lhcb1QFQeuRH337YLRV2vJ4Yo3rQ5engXy5gFGBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759657194; c=relaxed/simple;
	bh=hOqP9GxL5kRTpvmVJ0ArlHy0yU8vC4Mj3Y6L8EEiJqA=;
	h=To:Subject:From:Message-Id:Date; b=T4CCHNokpl4B1BDHPShhclla1ZJ6KFXu+Ua5k7TITfZB/v97D5PVsr9h/aPoXHIkwPyL1yqelslaWbkB8ZdSa64xTHUbDaiWvauEFezlooDsA+WfvLq3+CGWVQl53UCME+X2ThVcn91Mr3kn+QosiN8HE/EkjDZDIW2fT309EIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YoB9mY2Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YoB9mY2Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B12C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759657193;
	bh=hOqP9GxL5kRTpvmVJ0ArlHy0yU8vC4Mj3Y6L8EEiJqA=;
	h=To:Subject:From:Date:From;
	b=YoB9mY2ZLB8mRtfzVMtHUuDSHytq+QIKKRT23RR1ss9l8wBmfl+DkPnvQCuAB1NIu
	 1FenYGuVsp1UlSyY668ZGe/17Z/h3tFNWIAS9MzBp25VxYooyMx0C/Ic/LOrlTUpRH
	 /fk7RC9ZLDOzwjNSBDGM2GAFic87h5QqB9pwD1p/W0ykvFrbfIGUYAG596FvnBwz5P
	 Ek443kXKqDAERJJDEZ09sbmIOUPddc7gJZlL/9gXCmt4W8HuzgJPx5UJTL7sxi9Ij4
	 gj2avigxsqDjndJXazaf6PsgHu1U04sdh+uVebEAyDHcYWOtwU97BgVbGAmYoErdr+
	 RuYoIwMZq0LFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F8FCAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175965719357.373.7266947759479563998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c842d3cf982ab993d24e7b0cccf02534db9a6df5304d1857df5771607a8b5c3d
Date: Sun, 05 Oct 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759657193
