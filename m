Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 187881E1DE5
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762604394; cv=none; b=OVu92vS7OBXiwL1FcroZeU5sJhP5nJiL6Xb7igRiA8FDAUrr00pjssvMgTknw8gvjQde8I1HAdR5xxV9VYqhp1Gh/z0PyYpdsVBgpABHdkVM7wbgpxET9ix0Au7zl6qS9T1gS7immvZqRRIguOnp7UEuRWphHxmDfiQaTiXVXcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762604394; c=relaxed/simple;
	bh=21MrgPO8i6QTwUqIISiSglqe4iB/nfRxO/NCuXOO33k=;
	h=To:Subject:From:Message-Id:Date; b=fhme1WttducLhICJhJYjo+JlBgz2zvfk5WkIc+GM6hkVYhIjGDjjjGXUPLouACdA82vLyhDm9u0AHdSdLWUGUKjQhf9zgIvMLJjIiFe0CGdKpjcRpyrlPmUZqgUAjgqaFcZ5qlJM1fsKZtDGYLZ/cqeGSH1q26pQxx6rR1HwfyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KWA0aoJh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KWA0aoJh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2465C4CEFB
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762604393;
	bh=21MrgPO8i6QTwUqIISiSglqe4iB/nfRxO/NCuXOO33k=;
	h=To:Subject:From:Date:From;
	b=KWA0aoJhin/IY7PTIXG0040DJCYAQ8p8zXRj/qMKkHdW31GtMAoH6FZfHn9v7fmv8
	 pteG5ZEv3+NVN87zCz7HiMuG2KoiqWidVDfKO3p7qeNVEKc0jmUWenz/lj/F6AUPAR
	 3Z+cXTpo+MYy1sfF0v23mQlJA1CwsuINMYJDQmx4QkzFFlHtt6ERSNNCKYcMH1UKBs
	 6QwysrYP+8QdhH5GMg1yXoBICrpRw1CQucyng1JJ7ueub7vaOhaW8IrirDlBbIky6y
	 A4682Q6lT4nz5uKiQTp5DyJhc9dp4XyCmH4oRP+n34qBKUNCBv05gXyYpGm53bvmba
	 oduA4JoPk+UXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A02CCFA13
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176260439358.3478.6147238500697731590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cae3dbd18e9211190a837d00f6e7cd2940f69bdd5ee695b33319c4f367f3fb2b
Date: Sat, 08 Nov 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762604393
