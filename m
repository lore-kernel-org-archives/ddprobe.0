Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D1501CC17B
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729302954; cv=none; b=XNYoh5aceFvJq+MfkRyy9hdPgrGGBD55WN1TPxavdOoGxkSzg7Gn9Bv6zAI9cMSrFlQBc49JzSVaaj98W3y15yOsxnD7Fk3ZWW6lJmCJfgPRH6l9O+zEYBPE/wwKNtUMS6OH7o0hHSd67+p34a96vJwmN70IawP6kiLV2TdH4EA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729302954; c=relaxed/simple;
	bh=OddEfZcMlju35+Z+/l5NVdgNfwNBT4fhyT3XUgt+QAY=;
	h=To:Subject:From:Message-Id:Date; b=ux10MkCfashFqZgmOZnagPw94byRlpqaLEYbrAEeody3Ey4HNy60BVuK9FrhPo/8G6gpr5ZlLiOksGXvXCQttDttsvK79D5khc/TY3H31/IzQjNOiUwNt3CiHaot82wHv3ZtX4ZFlUldilQnwO4yJrSAq/5mLus2EFyYholxicE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E0LJP9lU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E0LJP9lU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B17AFC4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729302953;
	bh=OddEfZcMlju35+Z+/l5NVdgNfwNBT4fhyT3XUgt+QAY=;
	h=To:Subject:From:Date:From;
	b=E0LJP9lUuJtGwDg6hbtFEeF44d/HIXIBvsoZigJbse3e5z8n+yC23SuWvyYcH2iuO
	 C7yh4Qo7qEsscB2AjZmxE6VNt3Qiy+sRgJJsHAsocBe1gEmT0u9rWp0R5xJuPW6pMK
	 WLmU5PsfBZ1i/wQ83SoJXQiADsbr3607daqrhxTncQmwC43J4Wavj6pSS/3wC7bZyS
	 twFIiyk+Wm5c15G/Mtj8yPFXCupwDOTj6eZTxBu0w6HhUetgIGLHBbpYjhx5ECJo44
	 ERqQYawqCINXE2ZaibgHmUqzBC2JZTVkVtCq70WUCnnrfJpDQtZj34kn3BtzsfaGEg
	 P/sKvSFYVs9pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A05DED3E194
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172930295361.20753.3820474492412410692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be1f8e9634d780d27e0ed380213dac0dfa9b0a39a58af34a24799a9a56586aa4
Date: Sat, 19 Oct 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729302953
