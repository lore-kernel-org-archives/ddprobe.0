Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BA972E371E
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754106595; cv=none; b=YSEqoEK6hLzJk1k2txc0enNAifXjB8NrDtigUCvHylV8s4OCqCTyFW7QrVsX0Iidima/rTdtckNRCWO0atfx0IWxkBvstNyoZ4bRHtNq2DoO9D5hxzTjtj/W3UMrazSU7HQ8Nv8zpQZfQT/GsuFHWDHL3RKGz0mijZNuxRUN3L0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754106595; c=relaxed/simple;
	bh=w2JVhJMW+4vfCeqy6XWQAl99vRaD884EDGjW0XxruYQ=;
	h=To:Subject:From:Message-Id:Date; b=deoobfv18hMvWSvIP7UWbbTJZZXRWuOaMFbqtCrrIYbJZ8zsEzRAsCexl4uQY5Gq3ge00XJjSs95Y/wRmJiMw2oNncuMSYgrkY8W614D8vxso9Zu19LFNh72WUDOA641B7qZQxcznODxoFoU5Q0bIeA1FOQUszQl/2AI9SwUPY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ozkJ4UaZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ozkJ4UaZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56A7C4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754106593;
	bh=w2JVhJMW+4vfCeqy6XWQAl99vRaD884EDGjW0XxruYQ=;
	h=To:Subject:From:Date:From;
	b=ozkJ4UaZuHGYyrPBboXjA2uGIyC9+ZMmCO3yLNKScOF0U/XUVCay/izSkBW09WdRQ
	 QE8mzuz6UhedvsYZVEKfWgK4mvTBd/ewQHlZPb3mkRsHGRY4LcIM37zh3gjz5oZAD1
	 tLGu4LHOf6zoc5tLnAQCGnQPDOtFA/038IgZW1/UooDhu2j3bLZOw6lJGP9lAiV46p
	 6K8eenHP4GU/ifrvTbl6tjyJsQPjnhKOAQtQlvO+Dq7/tyDNdtWgO4kEMc5Ye+NRbx
	 tW1fJgJVVxYDarRZcxwMf930PajiXy42Saef+J+T5sA2UEgkNVxBKRMPaZu+JISJyW
	 Z1Cbcg8319Dhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946B1C87FD2
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175410659357.25875.4659450572736712358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 373b2141550cd9aff613fca29d8cec2b11434bfd3256bdf548f59cd6ba2809bd
Date: Sat, 02 Aug 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754106593
