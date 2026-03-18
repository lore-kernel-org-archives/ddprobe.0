Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AE6436605B
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 22:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773872094; cv=none; b=EVBhv9UJCjV5wejjYGgP7tRt2/HNRTNyrP7IQ4MKEom2dpIyzede1aJ5gT2Lb6StfDLRSkj7OFavxs3AGnMVmEvXyT6ILq2SpBCZ+KnKXT4ZmksGWGxwNnH4Oc36h1K7Zh0FB0+MBQqNPOhJO4EJ2Lt5eVy2tl6mgpQgOvRqd0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773872094; c=relaxed/simple;
	bh=BeCCaZFH5VPlqk+N/1Zv7QmzzCZkPkvPrfpn6d5QeZ4=;
	h=To:Subject:From:Message-Id:Date; b=Fx9YsIkGIvgjH2zqGMvE8xyZxhYQefEU6yXFZ9i96O6UeJ+gv69Uccn4K2XL+gtmAYPGcHKXLzGUkM5dBbepokD4wacD0ylK0+9+CLXZ/l7lDxbf/JFgzeXR7UPSR5z1QpNVwVuGfstpA6ql45SMpdaYtmVj2mEXWZMrwurVjd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AxlXgpfP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AxlXgpfP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B49B1C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 22:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773872093;
	bh=BeCCaZFH5VPlqk+N/1Zv7QmzzCZkPkvPrfpn6d5QeZ4=;
	h=To:Subject:From:Date:From;
	b=AxlXgpfPaWUEyS9hwXbv/NN1z1ac0T6vwQ1jKTiWwU/ya+dWu3Xlhb/T4niaapuEK
	 FT4CDG4xFLlbJNJFYLFCZnwxBt0Arvlb3/YExAsgA48ncX/YW2QN1MgImXEhPc4seD
	 3jCNh0mAEKz0XuGvFefC0sZBQVe5b0v02THQXodm/ckffFV/d33ThkM/G7t3iHy4kU
	 K9sx5+lNXuU2Nctx+WESeZn8g4qrylLva0RkQ6IPgMdSdfbVLZl8JCuq+ZDtPrz+g8
	 rrMJkULJBiG3FL/JQwfPx/GTAPiApeDOPoK+O+Gy3tTvdYQNldzaKPjUGn7P23jRq6
	 ezVIBnJcTPW4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A16C61088E42
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 22:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177387209365.24285.2620984202037702544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49119d050347a7e9f0ebd3cc6b888d03772688d9f0e83c0243f08a1319fd29ef
Date: Wed, 18 Mar 2026 22:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773872093
