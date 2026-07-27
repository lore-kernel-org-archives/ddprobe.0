Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5655341379C
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785158434; cv=none; b=rUBJmj/JmLa5faC1fhyQGQ44DODMP1cnfa8EnsP99xNaSThU+CD2yb4Qvf79F2yFeFrjF8Ib5ue/JI6frNdmb0K7bF3GMbrKmxr1UlVfb5HVMffNKJI5yoce8Fcx1yMzLB+Y2y0CfrJdRDuHgNj1+DnIX3TGlDbtN1M12pqt8Ck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785158434; c=relaxed/simple;
	bh=u0sjYwXaJpzVlQY76TSznmJgM1kfXAwpSTIcUnRcfkU=;
	h=To:Subject:From:Message-Id:Date; b=HUz+feRF6gUJYjfXUUaeEvVhNyYR2xBSI3zaDRz7lkYV6mLTe81VPZF1zHHCHI9ZWeIGWbSS5tFSIa1M1w30dNoavK0ObXkqzWi0z2lW2LPtZ62M4f2tnL+5/nTVDkkJavzSxUJUXtW2mhwu8gNfIc5Xn7nMJkJVBwm/M/PMx7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Brm0rQo7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Brm0rQo7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC31AC2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785158433;
	bh=u0sjYwXaJpzVlQY76TSznmJgM1kfXAwpSTIcUnRcfkU=;
	h=To:Subject:From:Date:From;
	b=Brm0rQo7dl9jUtx+xunSI8eytXS8HI7s4uB5O0GvKo2vZuUujVa5ZOtZvTz/yWqUE
	 rjZg4wQ0oFd08z+k1P4KQb1rLZVvwWRA4nFDyENsCmJrYZ5NXtgLaQCBGjIxMnY61i
	 PTAk3x5yQVlmME4IdZU6lgfuGbr1pP4Y4Gwa0X4d8ud3oGeB0oYLxLoykR2LPw6Yda
	 uiTgCE7WGKQtKdMtnsnJWUimQtdTgl5kj/wjGZ5U5nrjRhzuHhPp1JBN996LQbSmk4
	 MFKE/jsJrD/bJLeP02khQ8pSjHPFif1uvKkbdYi3lh8M1USyFniUrJK1h88lBP2Yg9
	 ZOdj16iEzKexA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E57C531D0
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178515843368.1023.10885237307259863557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dc080ab84a38d219c952084e3f9de2586909b0ad537b6fdc952a312b0ef9a51
Date: Mon, 27 Jul 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785158433
