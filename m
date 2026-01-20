Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 481E4410D30
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 11:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768907034; cv=none; b=gmNVwx1Yb26O4gM3POWPM53/QGharNERaJMe+i07ISwzB/gnVZmDGXezCOJ9DHPXIZ/oT6xKWZZEYEImCTvH47Gzj86dPgdzB1HkdkdnFFp2ZnXjgKAMMhWRj0VN8+8ZNMs+vwxzHsY7bpA+zMSOgXrfxVU/WvhxaO77DWI5ZN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768907034; c=relaxed/simple;
	bh=SjTbjG8cwi3FCeqmYdIjjDVjPq0BkFfQtnqP8TJxaQw=;
	h=To:Subject:From:Message-Id:Date; b=fQbncmiPRE6VLfaGDGhU463K4p+CmYhVwap72FhiZT74OwqsusmJnlKPsnhtLZ8UYHBg60znO9Yz1VL3ag5zZJI6CeiqoG79zN16luswYjx2cGczf1SQmciMCZ9KU1IellOGAtjskOJn+IVtGO+M1CIC5bAIyOBrX9Co7LwkjSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FNkuduFq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FNkuduFq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABC13C19421
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 11:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768907033;
	bh=SjTbjG8cwi3FCeqmYdIjjDVjPq0BkFfQtnqP8TJxaQw=;
	h=To:Subject:From:Date:From;
	b=FNkuduFqJ7ezWyKcMzfxc792RU/p2lhADfJlogB+bvxlxQAnDGKOSNIwj3zJOn40Q
	 qIAdmmNfQQDN7OPDUBNCmZh1NegdlhI4svKhlEApj92HTeDvsm2XocDF3rhqp3/rWJ
	 qiRw7XpXI8wz6FGMo/IKCm5SP91QKtNaBACbMuXk05rb3mlDLugqeEl+uowmtMcL0f
	 82qG6c1alO+B/1ycrsjN/+MkAcqi5k6mOYP2Y57HYHiyFIsC3ZvFYS8SdkdznVwYAs
	 k5UGwwkvEt3VW+N4G3IeRz2YAnzSf8lxVe3tqqvCWSBFw1Dh/kdfzTlc+YuVqHl3kX
	 imkOZdJf4RVTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B0D2D2ED0F
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 11:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176890703362.2982.2840557026050105691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d18024281e029385bd469e6d545dd145e5d1b89d3ac405ce0cf9a8de08ba4c84
Date: Tue, 20 Jan 2026 11:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768907033
