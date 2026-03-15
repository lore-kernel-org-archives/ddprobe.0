Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E257846A
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 19:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773601494; cv=none; b=i+FQ4833fdAC+//7YX8Nnq7oOFchLHvIL8DnusILXgeCfMOJsA66TIQOZ92FDgSjqEZ4Gv+WAIX16b9bjkJjVcjUcjYvUBWv9SfbbxQPiNO50CRz5sitUehUczU/gTV8OjiUN1e/h1RkXr+kA6YlgM7CJdxosYKHJHWrO5L+DN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773601494; c=relaxed/simple;
	bh=uo+dGJJJEtM7w5cfolOZqXMikG2oHMzcOXQstXZhdjw=;
	h=To:Subject:From:Message-Id:Date; b=a4OPn0Pl0xOZPSI1pEn3lfKdRm3tc5JNiMUVmLoeiot5+gmmz8LtsVHtXqKrn0dM/0WFfkhBVzbHjI+7oS0AY6ghwm4B8HudMug71SUHz+B+ykc9qntk072hkVK5H3B2eFacPS6QF9HL+h2HPpYN720x2mfgL4EWRrls1o1i1kk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tszla0UJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tszla0UJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2925C2BC9E
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 19:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773601493;
	bh=uo+dGJJJEtM7w5cfolOZqXMikG2oHMzcOXQstXZhdjw=;
	h=To:Subject:From:Date:From;
	b=tszla0UJoMeQ+uaucF7Hb+8SCWd41QWRJ3S5Kj3GBJYuyvTfcItk8S1ycWoMMMcMk
	 eYIHk/OsFh5z2E3TEK89C4NuA3Xiyr25r6hzm2LxVWkvFnfxrlBYvrd12oVmKRbVON
	 ITt/poHBhkYo4JtrH2y8ntWblXHS4v39mG/AeIi5ayz3G6KlSvKimykgO/0KiD3PDC
	 SQr0ahuyPLrDPFhxb2SqlfpLvP54NVnU3xKLu/49+sUvA7RVOjj2h2N/sPLEWM3liH
	 eJ23TKBZ3ZjpYEMUjiYsZBgpFFyqo0S4d3PdKhxhYnfZUoLx/Y0JBL9CLTCJRSBVoN
	 rAOn4JX0BUr+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED75F30280
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 19:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177360149357.1482.3856757772952375741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 111024d98eda62ff6efbe1115bb0f1743d4e8747d46999ff1fc26afca786ada7
Date: Sun, 15 Mar 2026 19:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773601493
