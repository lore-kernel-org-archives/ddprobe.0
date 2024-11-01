Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28AB31D130B
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730492754; cv=none; b=UuaqeIUrEG4new6190pOH5queGVXH9BW8fAOv8yqCwqO4zyFEW4tI8Uq0e9qnxgNm8Q++ZtAmWCCp4IwxPz3JWrBOKIv9g1U0sW5lHwHUSQGueSIIDGK0YwTc2yT6SFlqKIBZC197qgjyTTd3YR5L8fMjBy5tZUmoBtY53LXsgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730492754; c=relaxed/simple;
	bh=wRlbbOv9MWDm0Tt+XDMPblAZ8yEVFH6wfwOEgP/fb04=;
	h=To:Subject:From:Message-Id:Date; b=sodqRVEy0+ssCKuVdRcwYxoHmclY2YtDrQf7vHnl6Op8dyoctRjaHP6qsbFKsoS8AlzwFd3YtSdYMCk16pek6hVgbXAYriePlnx8RZKeqS5at7S021PCrzI4c7hA+YgDJc0/brg74Mo/OKPlxwEg1kQwXKFkVMOhHEPkAvkpk5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VcbAmvDv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VcbAmvDv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE5C4C4CECD
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730492753;
	bh=wRlbbOv9MWDm0Tt+XDMPblAZ8yEVFH6wfwOEgP/fb04=;
	h=To:Subject:From:Date:From;
	b=VcbAmvDv8DPnKqCKvpGLwNwdxmC/25NzK7rwOCcMDOfO85iDlXKWu/NBH3konX9hl
	 9TrhzEbESfgM8grelVXE84L2swVhn/OxIXYgeHxIjzU7odOdsoZTfcjl/XGIxlgi1V
	 GAzvqBiTn37KJ1FcKEgZ5tmMzKwX50bxOOiiDrkbqzUmJsoV27ho/eFrGgN6pvhkX/
	 OIBB+SsuJmrVrmFpeFwyQjPn6bt+PRZPEGzHMxM7UNDs6BhtahcoEPr29wWjXciauJ
	 cbcv+8EqR1XuqGh+lOw7WK0+IBDRnHNmnzxYA6hKdbvxRVjQOFgE9YWlaHJC27iukk
	 FN+ByF+NVw0Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B88BE6F089
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173049275360.8348.10582333915714776580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c03891f067b1c60980e9be9e00757ad7f90ac40e4c3bec8d41513041a120b7da
Date: Fri, 01 Nov 2024 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730492753
