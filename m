Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19CDC29CA
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732001154; cv=none; b=ttpRBQAqC9myxCV9PeSE8Wujmp1j0LnnYEffKokOQ0zT2i7eoG8weT76ClJyjx8pmyeeDzuVBR21egGT0nJSem8eB77zcfRgcoBH2RivhjyieX2kkjGPqpx5VcM+l3xdh5Lidvz0VHqNKkIa6dH8iScBV20MN4hYNKmzgKDCQkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732001154; c=relaxed/simple;
	bh=/iPe0swvZcN+OT0sUFgiMYstHwjfMAqhiQDlPsyaLFc=;
	h=To:Subject:From:Message-Id:Date; b=gk20HA7UI0SZJWqIUbmrglvAdfaK1GGbp2cw89OBZ21CGoqYsMDiA2BHjUlpnqWwn0keMQ5RFdGUvUAtLxFDEBjDXkbnLk6fZJX4BZnjG3xqqiop7wrDKxfH6NwHxNNvFn69edZ1la91GX30Vzkwawg4s2wA5IGqV5aSXBjFG3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QUmv985K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QUmv985K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9EBC4CED1
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732001153;
	bh=/iPe0swvZcN+OT0sUFgiMYstHwjfMAqhiQDlPsyaLFc=;
	h=To:Subject:From:Date:From;
	b=QUmv985KbkGFMYd9YvIyKO/AZTe5aEPUhGEc3DqhKUPwhJNQL9mIefh8Pv9W7hX7v
	 wA6aUtcaQ7rPVE+hZA4LIaxZouGCnSDInAxtDxNf4rSCZdZ/9boyiacNBgdeTswbd0
	 1j+lTAhdPFd3bd9+oolOIw5bwq4vP4G8aVMPqx+8up1PA4YzhgLv26NC+v4NYuL+7f
	 2Brk8S5wDQpx+r8NeYeTwrHEWvlu7d9DZ8lNZumoYLCdpEYSuc4pG8cOK6MruUIk9Z
	 Cw+9rWdkup+xjxG31HEKUtPVhQOZj6uo9T38EKiHDMqIeyRe9Yl9IRBD74FXxbzDHL
	 M7qgHF2ZMTSEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C9FD591C4
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173200115358.13618.11051387054326407075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8ba4ba64ef8da2c56d630ef1ac53fdf332f67a9cf53e1aa9333ed5ae03e147f
Date: Tue, 19 Nov 2024 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732001153
