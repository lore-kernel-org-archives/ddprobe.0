Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F8643F926D
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786372234; cv=none; b=kRTQvc3ArO1NseP08yaRPBb8M6s0G37pw1EeVRMvbXOza422DrfNt89cGAEmhPa7IcLEvUe5YS2R4P3xgLIblZX9JDrrxxUJHNztpV63TIXv1NtG5klqZT1JrcEMiFDXXa0UmufJqX28axaFCh+ekx5N0GvOrV1Q0PkrBqlDHtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786372234; c=relaxed/simple;
	bh=nWRyCOgNAeAVdcQkRH3iWeQ6yUe0misoJ3m54FaMKks=;
	h=To:Subject:From:Message-Id:Date; b=fxlIy8EE1HU2waIKmEcOKJ8GC6cwVLbxZdRagmkrB6Id68U0yVMvJptBEFXydjmvaAG3EYf45O48HEXX4mIRVGkNkIT59B8JQhHwJtRtFvxydyKRF9zwsEP13cf87mIr28XLrBxLsJ5MV7HgbSI3ZIRK+GtF0zu2kbbY0jpcTQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KPqyLHjg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KPqyLHjg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D87C0C19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786372233;
	bh=nWRyCOgNAeAVdcQkRH3iWeQ6yUe0misoJ3m54FaMKks=;
	h=To:Subject:From:Date:From;
	b=KPqyLHjgpRlmamzKDY4gBtKdl5xC2YEORlWJXDFRYizfjK2VY34HLOF0VrOsbRKen
	 1/Gg9QTIpBmnuMuu0NniM6+E7vKV+4F7B6ReK//i6lclVtXvF7QXNqEYUAfq9IeGxc
	 6QL5K/6wR2kJkO8XsR03K/4mW5G+3DmN7UkwAUz/Ay9Lv+w2D1LiqPvch6KB2uMDP3
	 PSkfDiRvwNUksmZJdodMJegnidZIAGViGUtsk4kx6ACVFd0W/y+pUkmJBOduyZfZUO
	 F4f88zlKFE1YtAbt3BPdkRRHwRAJbw02lmz41IHRhelEUR541DRjolUPwONuvLpmVj
	 lAZXNF7FVe44w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7414C5AD55
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178637223373.15321.81674873805292603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df65f196addb6701a4071f1e434f80167cd3823449c8591e185709a803c5e583
Date: Mon, 10 Aug 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786372233
