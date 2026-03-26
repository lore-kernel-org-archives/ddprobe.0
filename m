Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FD313F7867
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 11:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774526094; cv=none; b=oFxAmzttgAw/0fR0zdAv37CWIWwCyQuZUXON1vPx4btSWxkDOqcXS8ulOdXTu/uDmiYpMTIBGKXaP6BDtdPINh/DDVyJw3+zeP6unvBr0WsXzN8c5ToCtdKjIGY4GusIvQGMr70USiOdcRy/ijHAL5vsA6s7DoaEbvzmu53t43o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774526094; c=relaxed/simple;
	bh=YCcb3a3JtUcPohFiev5jvqXhFaYw1Q6NVRVLGBuqkXg=;
	h=To:Subject:From:Message-Id:Date; b=ISIV6f4sQ9rFYfInqjCENJh+P5zra4n6H3yv16dQto6zq8Nw+z9jBJ3hS6FGD2XdKrZUAa7nSVtyBPWWlfPUFtMXdS3qdpwD7d5Ckkkcdb4pJyHPxCfSdEUyUVM0VqFeP1Q2Tdc5QQR9LzGRB4wEdHehsZQ2MwCh5EMq2nWQW8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qU21+lgg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qU21+lgg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29F3C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 11:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774526093;
	bh=YCcb3a3JtUcPohFiev5jvqXhFaYw1Q6NVRVLGBuqkXg=;
	h=To:Subject:From:Date:From;
	b=qU21+lggjx9EkYIDpVRGSMPnpqNLj+FhbculCN9gS43qZ5S0sLq8bxBzjqJZdDSV9
	 lQif8cSexP8yah3kAHra/G3VOhy609dryDRav9BYUtfQnFXeUhL7vN5xWX1YWr+fyL
	 sACIfFvWDhJJmTDHhcCOZKqMk80mlH3gcJUgo6wlV6cqImhcOO8yFJkVhSRch4wxGp
	 fp/Dy1mBctBZHAuBFTQ8wgQsfVH+tp7AQZRrhiUIBuVnL6p6zeWArgO3xbU79wKPwO
	 501IvwzfhEfXEEJnQKN3sjQAkW4h00B2HUCIJfPZpuZOLJU3KxbgEelEVLdpXZyVek
	 Z4my+OKaNGuSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DC110A1E81
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 11:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177452609358.17888.8588381499052813399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c994e638a1578757caaac26988229eb5e2554bd442f2950edf86f405eb820687
Date: Thu, 26 Mar 2026 11:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774526093
