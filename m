Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BF061EB9FA
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760307594; cv=none; b=okeMxW09fKKRwKBgjtxyXukx49U3DBeD1iCIzkHQwvCdssmZ7MbVLiPTgm8eqllN38n3BpUZ6Sr6OMAu1op+3jc4WJeCCupIC6DzT3v8Jnli44iw0JB0Cy/LXElk0RUewHjCRTETeTm0QHqRrmF2MS7Hs44YvdcanQ1vHgvqS0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760307594; c=relaxed/simple;
	bh=6dp6Ptbxr0sZOWWx6NChpBtb9+DEaJ4YPHJtVSEy5gw=;
	h=To:Subject:From:Message-Id:Date; b=QoNttQPqQfmley71T2sgEjrqai6b2FAm9qnbgUz3tsr2zwiITN0IhDneGQIYvzL/hPR2/W6GLJuSa2WLSB7WFU0oQ9S8+3PTSW1zMM79uunKL7TNOzcbTQT0ACWJpyq6vAbuShTJRYcmu0piBCbrU4uBcseskVLWuFGu768sxmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I/k9gn06; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I/k9gn06"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A76D5C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760307593;
	bh=6dp6Ptbxr0sZOWWx6NChpBtb9+DEaJ4YPHJtVSEy5gw=;
	h=To:Subject:From:Date:From;
	b=I/k9gn06b5geHa3qFffKtKLF9RLWedbL89wfvHvuMgvY1dVhNTw9GPpbuvPK2ymBU
	 t6sAOSfjiGboyKEYccdUWwTqftEQTz7K26q3KC69bm81dHrFFI6dKtyOlciYFbgOv6
	 CbjOuFGOF67KEAH6kT9nhVMqNLEZ2a0Ey3yFmhRazGb1aVqRI+J43ZKFiIZ2a2Ob49
	 CQontlh1IDqG+5VpSfxCPWw4Azt/Za4eP1NjqJ1H9Y3x6adN6Psyn+WDIEXxOn8IZQ
	 KQzsunM5Po94s1rx4WdWlyudJ1lmQjCRfTe+ymZmLYt4Uosn0OaR9rHNAb/M6g7uLu
	 3fmvyR/uRVWPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91915CCD184
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176030759357.12211.113510105432762402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13468e1bb633c4632b52f0b59453a9e3846dbd28f0ca93ab0acbf07226389311
Date: Sun, 12 Oct 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760307593
