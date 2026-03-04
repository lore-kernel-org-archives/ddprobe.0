Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CB253659F6
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 16:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772641494; cv=none; b=qFAoIXblTQUtPD48nLVNP4wVq55mHk7JnM6urHpGXiAl5Qpl0vBrzrD6mok+5oKKkWL+fagL7SaBZNyKwQz0vcZDlI22eePpBtKf7IaF0Dv6wv39oYbCl3qUX9sdbZVxlmjBog+Ehhm2Jyc5zeheu14SMHJtOeFI4qpBdKQ9xKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772641494; c=relaxed/simple;
	bh=jqnkofZLPH1Xy56SiEdyRIj3adUKL+d5CdOKy4iNhsU=;
	h=To:Subject:From:Message-Id:Date; b=Y6qKcin0yivkcl7s7uRELzePOQ2Pm58a1Ec/XmH8WaS/+a6Ponk52/8uoYQCzD14MiIwKIROHHEKksOXFEqzyOH8PzDZJueRvcTQ+IWyTvtSkvBda6b8byEUm614lmgVaJRVOYZ0ovWcdUTReI2QxoSWwj9BxDvY3QtGIgBsPyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lt57ozsX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lt57ozsX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 03A1CC19423
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 16:24:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772641494;
	bh=jqnkofZLPH1Xy56SiEdyRIj3adUKL+d5CdOKy4iNhsU=;
	h=To:Subject:From:Date:From;
	b=Lt57ozsXB2p9Z2j124qG8MJSkeIwJNXuUxR02KFba7T33y9ML1+YTfndv2Qz7eu49
	 X16S9AGbW0INiqb8t1i3wHr891FOxN50Wx68PwLx5rJZSjpSanS4vuSMcZVuBVwVdn
	 mYiitMwU3uOafUbRjZ6mHf1yPN9f3lX1IYXIJ8PbU05UErPHf02D2NGVHLe4OVD0Xq
	 8BkOZEb+/kHJ5mzGBmGMWpMFwIpNx+VXp6qrp/VavSTrtIuqYQc3Q9O6G12L/b9krg
	 nDwgRkI0ZHAqVVUjpVwoQdJrboeHTFJJEF+6CA24hMD5I3TjkJVawVpFcyJuGGrduz
	 +jv6Uc3yxIjgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DCD1CEF9002
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 16:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177264149385.23931.9672409222337502744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 704fa68d8dbb53f950b2bf2a75640a01ecc15fe67271f94ce2f68e1cbd91a325
Date: Wed, 04 Mar 2026 16:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772641493
