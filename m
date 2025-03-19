Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A7ED1E1E0C
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742381394; cv=none; b=CWdfKhO+AlGtU7gh/pY4iempBsbObIC2gySUKV+U+M6Hmh/7yBUT+O+hewQ/vrVxUPFTpjW0zLFWGJrJzYFff82ItypK9BG8s/3lgwL+DoxOu7rCuSA3RVBxiupEzAFliWvxjewWQ8SxtRdTD9hXSp8DbatYkBzauJYB1WEFjpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742381394; c=relaxed/simple;
	bh=ZZrg9c5WfHwfOpmSnnuuqe+5uysDsUKcNK4EE8Ez4tc=;
	h=To:Subject:From:Message-Id:Date; b=Laxah6rg3g0dv0hM7w6dAajIYASyjT5jwNYV1j4+vI1vfglHZBbrCS5bswAWOMqFjKrG6MjUWSz4tAYbLKwnhY623GXG0UF5AEHO+/g05Eonx1TXQlLmLwPWOXd/dIAE8VH6eTooAWxP8ocTjvia+kV0pfJr71GRvtBKP1NkmsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R5VSiDrL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R5VSiDrL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D23FDC4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742381393;
	bh=ZZrg9c5WfHwfOpmSnnuuqe+5uysDsUKcNK4EE8Ez4tc=;
	h=To:Subject:From:Date:From;
	b=R5VSiDrLSi17880sWj/p+RYe7/UnAi6CXVdfXCSACMMoK1bok4jlyMJHXIFydLJOx
	 X6ZesWL4SN3zAxmo0p3jLcKzh7RqOOnRtUE9xPGZ82D1Pi5/nZ9MoGTL5Kh6A/V6fT
	 mzqvXQphIzQIHkTz/AmdP7AcXjRvv8kTxEcGt7D9wJUwpaaPBsfZrkacN8y8IK4gPT
	 61YHqijj+CxbkqL7ON/PhnrFiUyJUGYHGaltmNT7UT8Pb4QH4Xoitk6nbnKjgOJpbU
	 C66frRwP49WA2o9VC8N2W7lu+egqVabdjrwziPCdpF/2m6n6OnGR2Zfk2Q1ghh3xl9
	 L/xiyyCx11eMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5F96C35FFF
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174238139365.13030.13433425337850770364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9b820afab3623c1bfbb3b6645aaf36c22630519e227961cfae07db6e2db0fb2
Date: Wed, 19 Mar 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742381393
