Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2193826C39E
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 05:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770616434; cv=none; b=b+yezMRXMMCwYmqQnQwrQVgDrAzgDLMLknxCI2W7KkyJuCRnszTjzc1pSDofJ/xB3UZAvlqHcdoI6VdfJEVEYAI9z3fMRfy7R3E+6yg5eLpWKInzO3UgtcSHImIJtNKkQEiVoaeCa2sfBs/A0uyQXWtenWh0oxstKrSXOnBhZJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770616434; c=relaxed/simple;
	bh=H9PMGeWPYdVNYKTRUQYoI2Eu1cpcTE62Pn4rujrCrsM=;
	h=To:Subject:From:Message-Id:Date; b=NhwlxpPBWdqCCdBmSFVun0fYZlCmsuFV8npvkm7p3OpIf/75pr+6VXrVExDXGivpuPEdZXnvPuhg1vWbKr1nGLKx7ATODHCuQUyLdW2ijBwPzgRfXSpIWwgQmLmVkH4aYR8GZLxf7jozblVWjirPuIRWhubDU/KCvNtOeXKwKa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ik3+tU9D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ik3+tU9D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7EA6C116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 05:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770616433;
	bh=H9PMGeWPYdVNYKTRUQYoI2Eu1cpcTE62Pn4rujrCrsM=;
	h=To:Subject:From:Date:From;
	b=ik3+tU9DKmabLBjOzkIDTMGQwaRnL3AZYYeyQ2xI2f0DCwPG59DQwSAdlREHOZzJx
	 AV27UuVNkL0fIbtGwdY5mD+xS+xbltwb0fBX4CTTgSL3wnNdX5vM9MqG/VsbkoXWF0
	 bkbIUlbVtovgDlBTKywSC3DJr9wCaffD9qMV7ebEVOQzTFGcp5Xgl94kHpfBrwDfgP
	 UExZPWsdwcpREEej9zjrKStuU/f2c0avy0+c90Jn/KRtmuCvQMw0PqzBF91eV34qhD
	 H620gLCS7cgL+f8DNh9UHJnNmjYaGwlOKPKePBmlmeMZIJ8DlovEjdVP3pfsAuIDbj
	 nuHyHoBwdYW2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DD47EF06FF
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 05:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177061643362.24520.16720885862479101807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 374d006e071200094b28afb6c56bedf7886ceaa8f3ee080c8c05f4990f28e0c3
Date: Mon, 09 Feb 2026 05:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770616433
