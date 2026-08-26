Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A86B3F58FF
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787757034; cv=none; b=tb2wzpwUzDlK5vjress5VYvv5ZwHaQLC2rYjzN1dIk+lJ7gS0XMyLnWSdmAVIYmnXxlTySafcsDgC66tQVFlgSSNrEh0ZAVptIzG6KAB8Y1NoXEDAo9jIjrFlBlGGAdqrD33paSTrp7sKc8HQjkNXMOvtPM6ZKa5/Y9H8yzvFNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787757034; c=relaxed/simple;
	bh=NkCzYA6SUu0WSgQbH25M4QkxtwmH/i0kFtnppfLGRJw=;
	h=To:Subject:From:Message-Id:Date; b=KKeIU3BiDdiYphVsWO6QG6P9ZxBJEb7ZladaRXSnIAnx3CzScqSVvubBEjAOY3YJmYkM2Ge40y/s5614dGRrYLMBcu9D//somR/8RfLMGNkPeVe1LoCLBY6gBfrek9r2sCTJTfp0PgCByLwgOp+cSfgZASzFdyyiCJoWdm2gAsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=joe+QfEC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="joe+QfEC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4813C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787757033;
	bh=NkCzYA6SUu0WSgQbH25M4QkxtwmH/i0kFtnppfLGRJw=;
	h=To:Subject:From:Date:From;
	b=joe+QfECV+2enDp3N89a0bBLrlM2zp+XOwa2z0Q8q1MXL5YuvQYd21HE5IVe84kB0
	 00dqA2ahlpDkbkfeSz8x1/3vEKE7id+sF7SG92A2IXmxfoqSmoqqwUfNThTOSXOP0Y
	 wp9S17KlntjlfLtyKkWJYXYf2HIPoTaAl9tsFCe+wl5WmmufRajacGyGtlfpKWFIAR
	 7UpR2C2c4fp5e5XR3/rJ+d41C4jyb35GniHZv8S4tRYkM05QLkOUYr28DO+ZDh+yUu
	 FH/pD3mZ8j69d6iSP6mtyNYQZ30pCoVkPpQJKvHYndwq1p0L7T5wlWm8VPytYgAlkV
	 QxXR2bmdBJOCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB28EC61DBD
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178775703369.9700.10390385865515437161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31ce231eec29525296da9ded0647e99cdd239ef3789db3523ed620508ae67811
Date: Wed, 26 Aug 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787757033
