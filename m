Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4065F4A33
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 19:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782760714; cv=none; b=eGmxnKLcGTUMiie2wBL1pzhcgid4UEil0XTdk6D6+RDrj262k6vtYXIYxbo845q7rnIrk/r7f3xIupjyVXrX+2Qab/avn8SMg0/1tKdTY6JagG3RHepYRiVP1oV9c0uOD/GK523YSvWnFv7ey/JQUW2bwS2I8hcTQk8O6MXgZss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782760714; c=relaxed/simple;
	bh=38aMd8NVIrGocl55HxjzjtE+DnL5v82LP//wJlxq+Fo=;
	h=To:Subject:From:Message-Id:Date; b=psI4JBAqw/4qoSPkjREMt+yoXQyZRUzwQmmRoFvnPtvbPgQyFbndIHrXMgbnvQJnbiTNgHNf9HcjDFMDB/cyxowx9GctkQkGOS7tJ9Bn5Qd6ggdAOlw91sCgauYvNhGWiq9RK2ATTk7nCbkL0zi2k+nQepcmoVrkSyJeGREg4O8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MhDkvUZe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MhDkvUZe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1C10C19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 19:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782760713;
	bh=38aMd8NVIrGocl55HxjzjtE+DnL5v82LP//wJlxq+Fo=;
	h=To:Subject:From:Date:From;
	b=MhDkvUZevlmA+qOBhlL5TKSi4hdmoFfHxprtSXMV/iv/Ziv88tlSskevExXvPVGCT
	 yS7OD23dyDQVsXMc4xO2JpwKkQ9fAjSGjjAe/qxoTd1VewO3fKRIGY+ddeQs6cBjlh
	 vfLO3ATQYhMJJTxSwSqfPgfw0siI+OtuzuBQyaSNAlggFjkj4PG8rxKSnghlgnDvFk
	 dLoG/CxkRbEMOhyyM5KP8JLBVUMoJa7IQC+TRW/Ry7VpR6eJFygfHjk6Mr9Mt2e2M+
	 zv7zvvhCz3EDeA4mTg4ehbcQ65dWf8pSHt2sLA3TQ8327A4pVUllG6KKZUy7pWxWUT
	 GXyl/oTsPuyKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE417C43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 19:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178276071368.9446.8766517373688797641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eac61dae788c67891e858548044d2bb8f935b882024cbe82a6405cd0562adb37
Date: Mon, 29 Jun 2026 19:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782760713
