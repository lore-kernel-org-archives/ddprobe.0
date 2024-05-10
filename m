Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47BC9175567
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 16:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715358143; cv=none; b=Nzqp+809yL6ILDcyh58pqPK44NedOa/Yve2zra4rmMO9MPZqrBFfCAr+v+/NKYYBHMcI1YCzl+0xlxSDiWt3n8cMqHu1FB6dUJsMQarzXYl0Y7sZ1YlncnkLOjMvlpMhAh3CREmNtnillcE+91dxKfQhFb8dBeth0l+NarGMd+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715358143; c=relaxed/simple;
	bh=7UuG55oK/xo5c8Sa+KgQFxayRQxByik03LksTNoGFlg=;
	h=To:Subject:From:Message-Id:Date; b=Gh++9gQWdBWaMI4bhzN4uINFxRJsm/BUbX7hXxoBYKpXW+4VLMzkHO2M5tBE3nekXlXXqR2Yp7wzH/8mC6ywomgAw7N52D7u8R9IfSE4yg/z43sbi76ZAz5fBQ/A7RAsK9ch8I9n9ZQBIY6yuurOnV+qBfgwpFqPyC55859T0dw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qd9Gi/Yu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qd9Gi/Yu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA84CC4AF0C
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 16:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715358142;
	bh=7UuG55oK/xo5c8Sa+KgQFxayRQxByik03LksTNoGFlg=;
	h=To:Subject:From:Date:From;
	b=Qd9Gi/Yu1PP41r0oTYfh5e+Zy/HeyYhZDN8bkFVSqcFnbzz+eLkiZKNwHrqFlg6d/
	 WjWVuO3D6htllV/tM5LdnzBgnM+X1ykp2Swc/S0+LFwpqCFcySZLdLIbE8+oUC4jRI
	 FCjkiXl6MvzCz+LzYh8KLcPbshZyEYBwZvyP4221ltxyoDJsXBCyYSwcbTjHUfSEk9
	 +kj8jdW/k7OY8+M5o+ZoshgjrI8z/1CWguqGY1cvSL20knWLTGLjYepGSKmC3ldmM0
	 oZ1TLFhslaNTLM2idJfECxFborw0jDgLrDx/2EAGo8m5ot+zxwzoarkE8BFC1563MS
	 UYWEuiJXzZMzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2D2FC25B10
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 16:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171535814278.18867.9259318526883351953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 749303fd77a16103c4c48ad201294e60b5a9ec3ce13e09f3844667e9b94b0cc9
Date: Fri, 10 May 2024 16:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715358142
