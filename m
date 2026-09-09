Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A87B283FE5
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788921634; cv=none; b=QnKvx/AB3kJy/UzrVg14qe/PjRlFLfmdGhNF14GkaXbLR81PD6524U7UL6aQC4G84ma0lj8sIeRIiPc/Q6gNfoGHg0vtCMjOCpHGkQYBRfbWOFGrFwByCZefzvX/1nQ0QkHAFDAvqyRXHfnPBWQPLFvOc5Hb0XMyk9k5xZVBq/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788921634; c=relaxed/simple;
	bh=eulbraeEZZsLOu+iCzjCHwogZL8wGYDheeVwAXyKtvQ=;
	h=To:Subject:From:Message-Id:Date; b=aZ8EBQywCydqvT9gVYDi0wFC2j3tcPPaX1Jgk83otSdm9NdxFwdPYWnYiFdWb3JEkCUUA9vT2j4bsqEhqVz2WuI56Zga+2Sx76+5wjRMQuAU4eOlu67MaX34gOn1oxuTdmIwIXhJ+DLihOvLaMn32gYvQjnaDpaJ5uIzchnIVvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nabzUwhV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nabzUwhV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDD80C2BCF5
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788921633;
	bh=eulbraeEZZsLOu+iCzjCHwogZL8wGYDheeVwAXyKtvQ=;
	h=To:Subject:From:Date:From;
	b=nabzUwhVXLfmXAgbQekZ0yu7ZJwC5Gg2maFtZJZM5bIymfeZjJK720hhq7tYy7Rjx
	 VfmO2cBiib1PxqzJPzsTAVWpUmfmpaf/vkUomEFkrTGPl3u7XU3snh+hq2WrhRCkRd
	 +kJhP2UXXVt2X8Oel1MIFaPB2SUlcNaXNNbsGCxMrQnVSAQy6owBnNbrbC871bW/SQ
	 F8EkZY5AbSmFKnufdJDHrXFn8dp/hM8gk3+K++r7nnHFrww16yHz7R8nqCmG0KJHYw
	 9o4vtXeWof6EJwlXVHocGOJJHKCYtRNlzvj2uZmOi8Nd4qukmwuCwLwzUyU1d1vvyb
	 jur5Xyq2GQDFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E49C79F82
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178892163368.29109.14501859898192277784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57233ad8a28040c0ee236c5adb944d58126e0b96ba52385d61d4f70e1e812a40
Date: Wed, 09 Sep 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788921633
