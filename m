Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12C411367
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729994754; cv=none; b=TBU/rS/tHty63A9fB3pRzL4bQ3fKhlxoKivNWL3oB0kkevVRXh+NXa5ekhZST7hVIRW+/6Ba4yYZYSAmFoGseGVnlqQVoO4jtDpuo7YMcKggAaOh6g30JSMcfkKdhk0Nka/8TjjfM5oHF7mLe9JJN24/2LCxepyeJY8IZGr7wX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729994754; c=relaxed/simple;
	bh=b84cPD+Mckejl8yveRRzAWuPaZpgUqI2bXF3hy4lzxE=;
	h=To:Subject:From:Message-Id:Date; b=S3am7IQ+vESf+RcqvTDmFLZpVQJFMYVQBfYh+9Cw4eQpQRI70iRGQRJk/1t7TiPyurnRt2EYh3N2/fUuIdP90L0apbbdvqiclHIorCcYZ1PYc9HcKT5JFXgyMEVOLThU73aYJBEvVdIUIIhZ0VfUdvH63xmoAPTwcBuoxv1GfZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DpPkNJHK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DpPkNJHK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB0F7C4CECC
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729994753;
	bh=b84cPD+Mckejl8yveRRzAWuPaZpgUqI2bXF3hy4lzxE=;
	h=To:Subject:From:Date:From;
	b=DpPkNJHKbL85Soa//1Jg/B9FQp+qLnxo89xgs8EXGLu2ldgFMn24C6fl2KKeXhfqb
	 ARCrjC+2atGGWbrXPSWJ2RW2Sx7cmUv0AXO1FP7XquxA2bXT8TS7gE+6N48iUJdD3Q
	 iMvSTdTu+ixDRZZyK77KWf6wtTO1SIPDsSa4FkqBYhY8G3mUEGfZBBVGWpTmAylScy
	 Wy5+on6ngSeZQzaXpZU+yvvbmiI/pCtkZ3Xv10LOn1YogcTNCBAxFJxp02I5eMGssk
	 o4L/U+6YOqBAe5ODKRilomYbDu/tYjnEJXsqg+XFTurvaAV6Mwz4UvSDr36B2xJxhH
	 lW8nZWtR7mhJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9666DD0C604
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172999475360.29676.495590695670865045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c97cb5cc20cbd6cebe5ca4fb6bae7c2e0344adb66f23e939c6bc28d1d160b9a
Date: Sun, 27 Oct 2024 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729994753
