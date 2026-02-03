Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A4ADEEC3
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 01:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770080634; cv=none; b=tPmtfpurK+XTt4bxRNl2gFhac2YclgTONJT3fYadbL0n2IhfEODcNiIGBVwrYLClc8B7Col89k+YfHXhUzO7b6gf3BkE6gBoDlDGCZ415wdz7tfMviCL5Cgh60FZlRYYy7C+hpKL8kFhvag7tyhIQKrAnkzK0oscL1zzvyx0Gns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770080634; c=relaxed/simple;
	bh=PQ2v3reYsMKWy3tl5/Aa5b9w2fcL44khwly+kg/7x0o=;
	h=To:Subject:From:Message-Id:Date; b=EF8aYnb9IYLpxnW89DFTCzJZRCeKtsM1lOTssE16ohxIWBLn9ZOUypFWhek2qPpVdhR86p3umwBMXze2D/wgLsLVuqCDSFN3AN6wxXPCMU4bP2ZW4JMJA465p/VVbKg1Ad0NiqakQj5glQDivmgMp8NbqHeUCLsE6i+BVGjUzgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PwkkywEt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PwkkywEt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F73C116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 01:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770080633;
	bh=PQ2v3reYsMKWy3tl5/Aa5b9w2fcL44khwly+kg/7x0o=;
	h=To:Subject:From:Date:From;
	b=PwkkywEtvl1LJbyatcbQJB12dw/InhwLDCT+546C3zhsHUL4F6ER53e3tgmYZhvX3
	 XbleAbClskUEmczN2syaTnJ8KNg56TIdqnQWMASOB7VQ1kify4u2cyPsAktA46uukb
	 +E3btEjVA6Pt6JrWhFwY8JkzBJgv/Sqt/qRO/xh+vr9V2vXydH8GDzL9CAWsRKJvFi
	 5YZ12LmNyE04ikNdwfNYWfjJU218ZE6g9SGHoIlFQTctX/VJc2OegRTcQeq5dm3tQ5
	 XC2wVYO6vFatiGc7LNyNgKOUG5w34/JyLHVtxZeYe8zc35SQdI1uM90pjRaAWCmfR+
	 JjhTzdI+m9VVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91556E7FDF3
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 01:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177008063358.6201.419817023792923211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e06840344545efac766a1cf39e773737f8301d6c29d161701fce1c160eaf284
Date: Tue, 03 Feb 2026 01:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770080633
