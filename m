Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F52E2C11CB
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 23:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776554254; cv=none; b=XE7j2sapjVPESoSEN36WTNi3BX3PZkHf+go6q+0jlSi5EmCDTY8hez3bWaC2nV11wN+Mu4boSU0D0uxTd79PiA69yIssdCmm33wEZ0fTRnmZKsRiFowpqHjMbN/MKMQV/4pB/i6p7xfjnEGlmY4WwPBTWJfyYtJa6J7qRBPkqEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776554254; c=relaxed/simple;
	bh=AcixHjM4ENAZPJjqkJkphGxCb8UGwlIIdy8HZDp5ilI=;
	h=To:Subject:From:Message-Id:Date; b=C+VKUEGSM2gJ5peUpPeKq7MNn8HSM8vvYxxWjnOlWVulVW3QQYCPsHEUkxHU+7RYf0HYqI4mtn1j1e/qpVO1INDJ6KvcQgsj23mLUTDpmMOp5KPvk4QJXg2ZtP4CR7m44DJsGpG1lmPyqV0Lnmzsib/2KFkhO0fHXnlZ7Gzhj1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EMziw0g/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EMziw0g/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C292EC19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 23:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776554253;
	bh=AcixHjM4ENAZPJjqkJkphGxCb8UGwlIIdy8HZDp5ilI=;
	h=To:Subject:From:Date:From;
	b=EMziw0g/pTU/4raEuA+5af15lVgdOWpJ2/MUSpwT4tK4fLLwAkojj9iyARX0QJt6J
	 Uerq7vJ3sqWDuStfQ9NrGFswrKCJ/JHaMfDmQnbDI/IEm0ro1CjpZ1HaQM0lxgnK7F
	 EHVd+a/Rgx+5BRjVRg9UypZ/WuQ/QHl510F4oxd6G4NjKruOGCc4/wiNv8Yas2QodW
	 1fnyRhBdjGgnD/sFcC+NfVnKFqiB3vOzPYRZvDXh+ClHvUVDghnFN1YLroJ2NZx1gs
	 hPAq3FOoBnkUjtO/7TFiwlwlIBv5IGW2/SVB14iXzBddvCv0KIP4JOHvEyaYvGXs1I
	 5JQr+tgEamK1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF93F99C98
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 23:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177655425368.15537.12040224589274048950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e49d01d03daee5aee19dc1df83cb75ce9858632435bd731a9d8e9e96419af0c7
Date: Sat, 18 Apr 2026 23:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776554253
