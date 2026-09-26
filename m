Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93569277CAD
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790448634; cv=none; b=qMFDMEbsEb3RpXgwjALThc1OTRULts+PrKKHgBZ7cdpU5YS8QhvNjzYmFocVqRbfKt4YIlfwSxL6Ev2SZnyTfD6Heg8D84MCjxRQoYRldZmqbfEE2BtsLG/qvLmIwOo8B0oGFyI5d2DJaDYz4soaFPx908nW1ZdwJg/45JSd5jU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790448634; c=relaxed/simple;
	bh=uGF7cEG7M9Ldw56XAXWqhC94Y3RaeEd+5F//RsMDfbg=;
	h=To:Subject:From:Message-Id:Date; b=KGFPE/Xy3SHM8fuUyUkthBzLTC2E9L73Ya/Un0sGWsQN0c6zD+GG4pjBwkGWu2X+qiLxexgHurfwWpr9dz2tGGgFV4Hca8vn/WDSRH6mmyKbp1gUuffiKyvMy1lBWqIEY9pQXMZ0zXZ8uhlGR4uhsAzoImPItjWjNgZSNH3DM1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G5iWLNyd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G5iWLNyd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3665C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790448633;
	bh=uGF7cEG7M9Ldw56XAXWqhC94Y3RaeEd+5F//RsMDfbg=;
	h=To:Subject:From:Date:From;
	b=G5iWLNydiZ8nk0UPSJwMZ1YUjmJZE0xNXjO446NIEqPnDz/VDCM57xh33npdISIlL
	 jHhbsEpfXUT0i9OtOm9UcrqG7xQmnFCu7bVpf9kEXSM85akJ3GrGJiBOzZvTpjXoYo
	 NYpcA3Jfzyucxw+0JXgsI4lC+Mlxtw/Co9XvdZAwAqFgwUwU6DWVe/5JLvoR/XEphL
	 PIyVVfxXL7QW276IrJcuiSbOKOw92IWlp22B6c64bSngNN2kEq+GZX9zUbM/5ghu//
	 Wf4DBmm/ZWTFWWw/U7E3JKO1Ey5nA9FAcEvH0DcQjyKeee0xkqtsi8wpHS9e/5gxNi
	 EfE5t01ucfTKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD4E8C9832A
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179044863368.4346.7970008291345331804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1eb196d62c79a00914328f9285be854e2289b4e9ec22d9fbdb6127f9b505f9a
Date: Sat, 26 Sep 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790448633
