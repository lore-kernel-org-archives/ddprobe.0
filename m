Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E6532253EC
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 06:05:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775369134; cv=none; b=WvoUIhqxDBtnSotT1/FbuxnjiQl5SQ2FuULpMG7maIuLMlOWMGqBitcPxLsv2e8PTeOJWtM8wA55ZJhq4G3jWnx5Ge2BIKZhPOubQXu4uP9KXUO+8ho96QLNKhPFOzM//mYt6h2OsJktMLcchM6UckP3VZWx0zsXU4K7dXzWQPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775369134; c=relaxed/simple;
	bh=Fp86p8r5MMfXGuEeF+nqAPNlNwqq1ooy8reFoxeI/dg=;
	h=To:Subject:From:Message-Id:Date; b=HS5dPav77SkiIIPwBvS4NDiN2RyAIp3UWxdmZLlmBaKQQ4KaT7JgPv+ONNrLd0GmI2/onhD9vtWZagsK5Krca0RL78QV9EHDRcLU7FV9TYdfZrh+lJpTMNXNaRbzEaEK8JoQqsvpWepIy+4s1MjSo6tzlMh2lxK2avchA7BqjjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lvNorR8f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lvNorR8f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAAB2C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 06:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775369133;
	bh=Fp86p8r5MMfXGuEeF+nqAPNlNwqq1ooy8reFoxeI/dg=;
	h=To:Subject:From:Date:From;
	b=lvNorR8fdfppfqSvsmwB3WMj+VFEj8yrvwbZj1sUX951jYZQPjEHz10dv79qRJZWJ
	 6hmYPaXWhe3Pz0NKdOcO1CnxelvUrV3mdl6CGlIWwKrP+RRTQd+1szRI4PwNE1ktvW
	 5et1mpqgrOciFierJO7zWhJFAWIbdJDs4Cbxr8cvuJrwRq0i6fTCf0qzD5O+0wHLSW
	 PGDkOT1tEGAJWym6zjdjHMYFifu1SXcOuChO3MJrKVyWPjrrO9XoQEwdN2Ar5Y0jq7
	 bywewOJ0EhB1/NFs91i8e+rW5b9xnbBaFVQpMSCgWgB1utcMv6e3ah/s+2vpytwxt6
	 AiZNFthQZeAYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B146CE64014
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 06:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177536913370.2385.1976689044795738435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8aef24d77b7bff975d11209df1e27153df2830dacbc4190cd6046d1ec04d788
Date: Sun, 05 Apr 2026 06:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775369133
