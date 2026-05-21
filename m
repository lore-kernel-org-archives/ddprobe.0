Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5071E1A239A
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 05:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779340834; cv=none; b=PsXRDj+Mz3fRK0JAH9cC7K05sN8khN1wfWmy+RSexHd65hVb6RsjuxVPIK1CNGYZhDSdidDivjWrf6O8mA3H6AyUf+dN/NbQqyurGLvzyjUSynmwZilVHiKmEvZnCCcV6fi2htNVY1Wuo9DDXgf2ZbE0tQUX1x8GqvGHRk4lg1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779340834; c=relaxed/simple;
	bh=nt1oD8kImQ+Vgy/6GjNr+LrYnupT2qD8wOM5094kxAo=;
	h=To:Subject:From:Message-Id:Date; b=E/vH4mDluF5SN5G1mEAA5nHFjQSNnfmy3mbSooK1UuRi7rINkuFuXhVe+rFQCK7BtNJvwqgvUUmt8omeBn0evR+93miUyXkmJqL4uLTS/kaRCUciqt7avGulhFKn6EUwwbiGqfyyZSRMA7UXEGaKKm2Nq8hsTjCETRmbeKJAPUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ImOjCmqV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ImOjCmqV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF6EAC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779340833;
	bh=nt1oD8kImQ+Vgy/6GjNr+LrYnupT2qD8wOM5094kxAo=;
	h=To:Subject:From:Date:From;
	b=ImOjCmqV2+EB0riq3QAb2wUS5eN6mJujVIrZf409AaX3aEkgYeVoRX5Bt3G/2eAHI
	 /9tVy6iONf3m+oTpDit/M/vKnaSoCZEX530gFJotld1VC8AePH+uGwTV2I9uR0Kp0H
	 T3/7bxZh8qCCw4/l9aUEIZDCwlqcNiN5WfSHj12rAmOXVtpAMRThpRlWXWpSG3Dgbl
	 rf60jkN3FOZ/hg9GGwJ5vzB5UetqK5WcRfjpzEnwzwC+pPNEdWmv5d6zXKcoA+nkSW
	 +zybEMkJfQfFnAQ5izh0S+SjPrl9HSPdLDsmeqSj3W7cIUy1FAb1a/jvK3Hy3hJ2g3
	 njP7Om8Hhel4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B33F3CD4F3D
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177934083370.20258.2815099398871998593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c11ee13b0de8722f1ca805f8e76c0185508b0d137906dcf0b09e8bd31eaceec3
Date: Thu, 21 May 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779340833
