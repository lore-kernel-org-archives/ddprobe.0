Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48BD53368B7
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 13:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787749834; cv=none; b=mxURXboMrzMbEwZSvsE6Do0hUdYSxlHEL7zSRTRByuqaqpMAEU3RE6Yl09WDY47/iYCCBcqgUvZR8ZnyQU4MNgF/rCEHRqkkELUwswe+yELCAQhFueRlLA3P/cO3rJQscg8x5kvec6HErvyNO29p3rLPFBfejxdF+d0CWeizDLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787749834; c=relaxed/simple;
	bh=iVFMZm/2iKS2Mi7Zf8GqNbohib7Db+Fcg2gscQlQgEc=;
	h=To:Subject:From:Message-Id:Date; b=u4YRCNonEz1s/mbF4R4S9EXdVholWqDeBPXO2YRzPOwB47CjoG24eQ/6z0OB/fDcyuBhETHDkAX0hqQBW+81RazrlO+F9jCntWWk2L3lkhcgdWGvaEiPbmd6VjHYk9onwOuD3AY6ESIF8wmy59d1+7f1w93Mm4VH9+8ba1Ckyy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cGgbjnut; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cGgbjnut"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C277BC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787749833;
	bh=iVFMZm/2iKS2Mi7Zf8GqNbohib7Db+Fcg2gscQlQgEc=;
	h=To:Subject:From:Date:From;
	b=cGgbjnutF07G7J1jVvIpUUkVt4XUESQpYZ2PEqP6EaCZx6T8T8wiUmtyB6ADM2l+Z
	 SiqzsVjuUH2GdjxLLn2dCGhiSh0FNuYTqiueocrKYC5f2c8y06tpWQvqS0zEAUE00Q
	 36w5psLx15KLKPxROxv+NSZZHGZm2CUk7Bj8EqcKCUmlt/9C8LZqIsLopPkHSjvvQy
	 5fdn4a/mlp9AUmlgJnSIWeUmlJ8d2OUfJymsExRp4aLzyKB6i9A3R3U4glGjHglOtf
	 WdrFKiZIyzeE8FyDYcBwEjkLyiCgE7SfWW0gVb8tE8Qv7v9ZoLKJflpaXL8gYrG8nH
	 sqIshvpgpCjuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADF6C61DBD
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178774983368.1466.1174220812468252100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9323e38f06cb4f5ba018d7061d49e2709e13d4963de9b30e9e0ed854857e540f
Date: Wed, 26 Aug 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787749833
