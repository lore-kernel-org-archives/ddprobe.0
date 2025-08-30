Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 213A325A34B
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756591794; cv=none; b=HHN/09hzIpIBKgZ+xzTwn/scv3fiOISSQmULxrS+NvL/zGlfmSx7T6HB6sXU46Xz1TYOMdiHbxSjHQf0otHYlb9qbDSlWBFYhJbE47OIuS8WlInoAu6U4Ol44FTH9x8wH+6iKShSQq/qCYrInD7cfhSMpNUlMUlI5hPu5eZNhvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756591794; c=relaxed/simple;
	bh=eW7U9733p1U1qdbEO6aODDY1FJzkIx+UgZ/uCo2cbCQ=;
	h=To:Subject:From:Message-Id:Date; b=ha/nDNe174d6rGNEpkXJSSPHvP1OHQhHa2cFSZj2nRArhAGBAEEBJcjut8A2fmuj7MbqKuc67XVQtpM6EjAvKs50KknF2Qcy8l2PA6L2QV1TDh3rvW9j7FFUO/XkOJz61vgegQKPS45siUMM5LXXFY0B4OvZIHzAsRqJO91O0l8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=db6JgBY8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="db6JgBY8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B28C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756591793;
	bh=eW7U9733p1U1qdbEO6aODDY1FJzkIx+UgZ/uCo2cbCQ=;
	h=To:Subject:From:Date:From;
	b=db6JgBY8dAvrxIKYTCHUYiIUEJSweJow0cRVa5D0vS10hVR0U7J1bfEkli0PpaNB/
	 VGb5lrtkDBNjuv03OtDJXeXe2PcWhvh88HZD44c6ubolraUyRjpm24boMIdJAHTVsT
	 4d/iI1FSZvmct2ADlKBb2LSisrG02jTKmssZeoKkLPlQDr8fMfyCV7vjpry5AgbF1U
	 QOpDzm60RuB1BFOMvWilOnxn21HjKFxqC2ouDd2hBDUvP3YxjLkhZsjb+XLjogUhU3
	 ror4th12nsLjpyjP7Kxkl29q3BL2KEAgGplq/QcOOe4fi7YSQ7ltKKo2fv7R9VyBYa
	 GwHK68ydPEePQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E83CCA0EFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175659179357.31214.3153031284841863631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a016adb82cad14b8ca92f02b1eb3fb8d2ab74e7e28adc6bc3b5b6d1b7b4b749c
Date: Sat, 30 Aug 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756591793
