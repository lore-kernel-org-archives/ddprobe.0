Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56B7A30E835
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 20:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781554594; cv=none; b=ei59dI4jIfnM5J3ACdL1u3uMsk/l5XmTbQD7ij2KdOvrq1hmKQYLbFjv9JvAbdNCqzwL8Sgy02SBt5ZR432uKbkIUcNxq+9UCrygjH1MR/NWx94usCbaHGMHgzHSWTa7h9unl+RyNROsJo2uPJBF4pzkEKrzsHYcHUJtGJWHC/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781554594; c=relaxed/simple;
	bh=T+QZIruwiU/QmmziJp33Py8AAq+eABq87NdPviTVNfg=;
	h=To:Subject:From:Message-Id:Date; b=uEe5vW0NpqYtbmF2Z55H0NSf5XLeAsecbm1dYM1qY4g6fsR3teTlNI9x3UuA/HF68N43R7LMpIWTlXEgoNU8YHmnwYOQquPRu7rDcxd+00Vdvrvi0QHb+VZoUFonjftBXzJdkFQlEwNXbVL1JdwwpWi67qx39HwVsnJn6UONqwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jg4qNSPj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jg4qNSPj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3579C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 20:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781554593;
	bh=T+QZIruwiU/QmmziJp33Py8AAq+eABq87NdPviTVNfg=;
	h=To:Subject:From:Date:From;
	b=jg4qNSPj21mpR4guW+rBX265y9VX0Q6C2KJahXVaTuOvBOJDnqDHVl4PK1qCPw4tI
	 ZasTMp0l8Hi7i3kUm88BTBGFQm2FG/hverpfhuDGGzN3bG3dOCGfaRjw/rRQaa7R/6
	 rY7qd3BIPKi4+WaOy1emEJli3qlUGHTNSo4eIzd4D4zV99CRgXXtwFvJlBNpORxj4x
	 XVcjHuOiPeSBjMOP5bYIQxM/XstRv0xydoUE+oxUPmox7NOyogdDAmITIrV8r819YR
	 u3xHe+vkzRIAYKQRgumDTIjrO1E3Ao4QAwAf3nSYFvrpDXmfYzIEmV/Is2294GuiiT
	 neVIMSh0Lk/Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7217CD98CE
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 20:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178155459373.3970.13693116050275703248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca1042fe1e15cdb893c54be8585e424e509f7991361e3989f5b516c2e37b13a0
Date: Mon, 15 Jun 2026 20:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781554593
