Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1979C2F50B7
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751476794; cv=none; b=OCdC2K/QFaf5OMkfF1pDRTZ1OByhAShtxw4QXoEWhKz8HkomB0hVdn3oXSkfDOkLwhiowJrCcH2/psAMZ8X9/TakUhKj9rSE7aoq+uiPraDOCQQILxIvp46zIBH6hM55ovdc4+sHGY5OBCjuq1Z9+3SaLrP+m6PC0oR3qXdLThQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751476794; c=relaxed/simple;
	bh=5IlZjmmfWyZq2sxO87vcAJ1ZZzIdnjTJTlHrqhDb+T8=;
	h=To:Subject:From:Message-Id:Date; b=ImW65rXKYrO6AUWkQMLNGQz3xE+NA2nRxy2rHuwq5uNlVYnHW68ZIyLHUcpkEO9WIBv+5HBaCU0V4BdKROeyO2/kCznSjsvjoPLLS7xaHNDCvkwDi18GcetkdARkCQ0RoIxRfgR2adl4zehXXxnOgWhchswCrRuvkg+B8eczdmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dGBXPJll; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dGBXPJll"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC43C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751476793;
	bh=5IlZjmmfWyZq2sxO87vcAJ1ZZzIdnjTJTlHrqhDb+T8=;
	h=To:Subject:From:Date:From;
	b=dGBXPJlltut/5CVkzYmHuElR6Pa9RtnG7TZy0G3x3HBS9hQDrFI6Az/qcArzVIz5X
	 NMYmoRy/PJ9JE2i9EfgZbM1INOgt+YlgSGRdqVGYvAHglXKOPKMGtY/p8/Ei0mCMOb
	 ZdViKH9vQkl/9teQNgJrwWjrFeJUlAEds2myS44R2DsrUDLj8ZqRRWgDP0FfAMxkYw
	 I3DHgSvYDDwCx/qU9JVAqkfzHIsYdHdDEnbF7MXp33WWUUuYAeGh/4g68I0iXjw9SK
	 2Fkgjn2KQbpfiW7lIR07qhrYlMU5FlWu+9EeYulzrbrj3cjyWDHTfvmvyTMvSHd6eN
	 I7tqnwJX07oUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F987C83038
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175147679357.2074.13606210164159703317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a04d99b83d981e259e9107a53858bf9f0f22ad2b6f9fe42f522e9e2196690116
Date: Wed, 02 Jul 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751476793
