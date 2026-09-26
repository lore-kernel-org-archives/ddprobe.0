Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 544A2442FB9
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790430634; cv=none; b=RZjm6ro1fRmZ+52hRyZ+W+cwuM4Vas1vuqeVJhOCMtIejPfFoSCjxnBWzOIP3KLqGmMLFrakoVbNrDmJ3oa2eNNGr5XJtJ37dGMIPKV4T7jkjGnaN5K+2n13Ic/UdmjZ4W47KBkCdQDyAHcnOJIlGwGVr0WhARvDqrzKibHxYBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790430634; c=relaxed/simple;
	bh=iblpX7cp6ays/kqLkec73U94i7DvleCt1HdTqZPa0dI=;
	h=To:Subject:From:Message-Id:Date; b=mcaME1MdX4UTn0ESwHInX31GEO6ovCtk9m72Heg7DDxaPbgr2ULNPDIypPeFDDMSkdvcccBXKyYnJprrSq/IsBY/kmEZVa60jnvClX2J8EyopBqSkU9taUl+hjS2O01GGrCwKSVLuYcKQwKTYz5+R3htgkLMNcKcaJ9kvBv5Ai0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HkJ8Nio6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HkJ8Nio6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6C69C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790430633;
	bh=iblpX7cp6ays/kqLkec73U94i7DvleCt1HdTqZPa0dI=;
	h=To:Subject:From:Date:From;
	b=HkJ8Nio6dtaIWhpRcFzVowLSa7c+mzEqRGrD6+y+hxb8dKGjgMyo/EjFOf3H46BeK
	 O8j7Nx/QehDowcjWyrvrRft8REIe1usP+ON5PUR+DJxzLrw2uejAMNxHl4ExDyKjaX
	 0P9oSLK032XLgGlM0FZXgw6QqBvmwjdKehxTWxROTVs6Sb+x1MthbjPR4HbdkO2yOQ
	 me+9HVL+sq1PgdGSFkOYwQJhoeSl3NXgFrd0c77MI2gQ1dYbromcFUNdDR5arZSXTa
	 GpOoyKEW36jFe5yr+6XIdeZLZziz70vOEfNIWW+xu008J5V76QG2PPcnpOc6aFBaiH
	 f8lGKFHpevKrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B68FFC98332
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179043063368.5437.12201380392450773733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f69bca64a966c94d9a405d389d1d2811763cf05e58539482ab4db8959e035e6
Date: Sat, 26 Sep 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790430633
