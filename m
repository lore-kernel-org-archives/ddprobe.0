Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49D4F380FDD
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790668234; cv=none; b=b6D71sy/ySFWZDjJkxlBLY/+gxQtDTlYIOywqWtQKw0TCHxML/7raAtsfsT6pXkuz4WZ+nkgA2po4VTbZS5SG07cmMDkIUSYYuMxhFRuojNr77879DMzk9bLGzZgW0DhQCMXhyAFkEJDiM5cE40fCKLMgdeW0Ql5j1mpWR5grHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790668234; c=relaxed/simple;
	bh=g6EVHLfvP0D6qzFkziFrdJG4hPFdUgYcG3W62/b5Cdo=;
	h=To:Subject:From:Message-Id:Date; b=Eko+n9W7VTJVjmG2ZL+Big4lJcX17If3wDrW+CAg0mqDYDAQ7y4r9mpA3g+d9VGvqWuRGXz22ZjD+cADM4fnvZhyq87K/+nGZ0+pqxWd+L6jBJxOrTESFfjTUo3ddeal5HOgB16hNEnERUYwPa0hEkI0i0KPDMFqp8gcdjleAuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TvxI5XOC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TvxI5XOC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D317EC2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790668233;
	bh=g6EVHLfvP0D6qzFkziFrdJG4hPFdUgYcG3W62/b5Cdo=;
	h=To:Subject:From:Date:From;
	b=TvxI5XOCXa3FgHdSA6gJZ3WkGTovkBps17J/TrNYHaoTvl91cjjtiP7uWcWACrBgo
	 Auul1tIKMJ4gF/LYQmDnsXSgDAsvdzrgktCW1v0FGfWoxfmTfKE0gXriBmX1f1Psm7
	 5rbkQiddAFK4EZf43dDQS5E0Vaz8SVFPd24dq3CtCmR7fiqmsic6UfFvm5FoJEcaOx
	 WVw8z2vDhD54BCE6OxZZm9zNxPUvFrd5AHgto3cvQ8tgu6peXXXIPN6bo0ayk+ZpBb
	 za5L6BnvRhmgpEhxcUUjvFd109lUNqbcfjrdrde6vTPq+RuyNtavalpYnvhdzXGS+z
	 R9JRotpWcUTFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF63CA5FA1
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179066823371.2618.3197046173002229376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dbfc4d6951202cb3f1e72e19d80ee6147d8d537cce80b6720c7e45da7830192
Date: Tue, 29 Sep 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790668233
