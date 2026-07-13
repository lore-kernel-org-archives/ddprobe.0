Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4332235E937
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 20:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783976314; cv=none; b=rPf5L+V3BDCZaoWKssVG90URph1yXGN/eeLzz5AOOgDytMqoodFb+mM9LJqqcuIXqM3sWGksVNUwDDGEhP3ncf1wwKd23QzKCrnwUTAMlJZsbLldzd3MiftwPW/MfmuLal8yA0yXn1zw1g3Yc08/uxfEipjea6LCSjqd91PMMd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783976314; c=relaxed/simple;
	bh=iExjbAeTSYU4KTFc5JfHNfAqNZJtQZcd2wYPJak0eak=;
	h=To:Subject:From:Message-Id:Date; b=q0OvaYRr2RZ0u/kQv5IR5Pj4wVIxGfK+fWdBUOQ3cxYhx9TpgsML/3C9TYwg6azAmkBeYJp+vZwTe9YGSkhUAJhpx7khJv/M/xWbmS8hEvNm2/985XX9aegOK7V70if66O4/ONkHMScuHX4Rd9GSZcQ9XcgqN98bTTFUsbq+A5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mmfcDjVQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mmfcDjVQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCB76C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 20:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783976313;
	bh=iExjbAeTSYU4KTFc5JfHNfAqNZJtQZcd2wYPJak0eak=;
	h=To:Subject:From:Date:From;
	b=mmfcDjVQcM5B+lJIXEfPq4rt42Q3uPL4MMEbRfC8Y4toT7hN1/NRrBF/3m/K86c8Y
	 +U/JBSOYx5JHfApEaZ0EnDhzFFHY+UtL+0/lIlHgo/gerBUAiq8Kwp5cxhR0KRhVba
	 gDCx+rA1OSJiwvjGHbZ7BOQqec/6itfDw+qE5vNKgAecbNH6oF8wg/XFEWG6dDWYt/
	 Kh5ofBoiyA/Zt0UiLPTadybT8iZ2P6zFQCUIkKKhZWsnf+gTNCXhylaESwE8wvEpRY
	 2jfiGbYTXndHp5bw8E6ddyDZne7klGSstCIUHUeCLzmEHycWIJJ6WOsnUeIPQr6hu2
	 ktgA97hEfgodA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD16BC43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 20:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178397631369.19606.17421565512832512858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5ff01b747789168affd16adaf554623580937d7a4c0f6c1a8db368060a4233b
Date: Mon, 13 Jul 2026 20:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783976313
