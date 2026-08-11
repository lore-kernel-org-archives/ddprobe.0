Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4907D3FCB32
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786465834; cv=none; b=L73zBL4ZVAz4vWHv7yd0FAzfj+okAzuEarJq2ldZv6GzqQNdZnhIaM7vE3xaKnuLzJaexkEoF3mKaBmghbu/XR+TKMxzhMe6Q2p7uJV4nIkyn1nhaMzOsa1ocBQoUclwSwVZzq+B+I9aiehAj9Lex9lCWMtvErtUi/jwOtFsD2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786465834; c=relaxed/simple;
	bh=D6h7doTjSGc+iTC3akMMg58gvsyhntsny8WYCbO8qSc=;
	h=To:Subject:From:Message-Id:Date; b=Wh2caik5P4pVpcrwqM1k2XG6kLqIj+TbkSFpsE4wg6c7NFr+3Rcu2AFVbYiYcTsUF5Fza86S15xoIdSkAKhwS1nWAtn/lVTH9hbUUEkHZdv2cNoogUc9hYCE5K61MmsJz4IsKbgi6MNPicXczuYsSR3ApfPwIBkCgcRnyhWGLig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dQIbT3Jy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dQIbT3Jy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFAB2C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786465833;
	bh=D6h7doTjSGc+iTC3akMMg58gvsyhntsny8WYCbO8qSc=;
	h=To:Subject:From:Date:From;
	b=dQIbT3Jydq8lgQz9rHqVtMQCSf1i3nJZ6XG98kLui8TP++rcERLzE2tqPGktr0xC3
	 jDMQuCrnmoEFEI5yfHMGN7nAAOXwE6cKpVcJkxHwQMJHQgqVuKVRZHAl9php3Zlu3w
	 yazmP0ByaJYMA7VRnIsOy55chNKZD+0y+7EJhMSEVMmU8gJENSyT2YbgXBP8opnHWd
	 k8Le9aXDYNEEjyxg1DOQ8RlA5+7u+KrsCGVI0iqksS8XViC+CggDgASH32AUpYL6s9
	 1P+m74qKJbFzqPFkfsJVoPiKXkgLCEsxwWUUcz5vmC+eZvatXyOfmlhl913g6lJoof
	 wsSE3mQ6QXCcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB43CC5B56A
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178646583369.560.18286018456929900402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f755da24c1dc264615053e221311fcaaee1ef51c2d67ad5af497e82d9f696f7
Date: Tue, 11 Aug 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786465833
