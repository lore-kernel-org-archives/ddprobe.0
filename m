Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E2B8182
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747354194; cv=none; b=PSerF4I53gUuB9Hl2WeP4E89IDiYYtkkEfOfjdcQfjBbChm/dXhgWo4mXw/vR1LOZcTePa0ucF7Y9BW2LxS5+I/90p3kJdFXWfQM6r0IUpWtL4D5MxO9EbzRe6awZ5/rZSTXrWmKriCtIBt8yV+zLEq6XV9bZncjOXa+GtvMU5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747354194; c=relaxed/simple;
	bh=92gSJM87ONHR08wlklkTke31XZF/gQa39jYUIpt4Am4=;
	h=To:Subject:From:Message-Id:Date; b=le+1hDPc8NNtO73SElm6mTZbg7Z3w+rzAy5wW7B5Q8dad7wabu3Utz1wdOdzNVV9EqtRO4fiDaBTpXh+iYdI0CEQn3a6b689V008jhqQ6hlaQQlICZAVglqHYuK30bVrv3/8GqUx3kXnKT6bcu8gEdKYjC2zYzx3eqouPRVd4QI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uXOzYFHk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uXOzYFHk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1865C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747354193;
	bh=92gSJM87ONHR08wlklkTke31XZF/gQa39jYUIpt4Am4=;
	h=To:Subject:From:Date:From;
	b=uXOzYFHkCsasPbLSGg3uX4Y3Zp5MzGNmNUp9iKlxprJGOFDoN9RpEwSxgRujlHAjd
	 8gcn6ef/EWxtp91rpK4/VmMlo9oDQBufmLKRf1uBdolecPB4wJWuaDni2t24w+MTm1
	 30iK5V3+9btyn0WHSsWTtGTfqwXXwtXOTHVZSXOVUNzgQBzRWH/d5Gk5O46pH13Dei
	 kajZZJfxUZhi5mUikJU41X1m58zHSIO56y+gvCuuCQ8vwuFMe+h6+qiBHHHMdOUxEs
	 VuNLiXXTvMKFmR1ihDIpvVnO81TOLTyWnZCErDsEwYj7NHEL8eEiJ7oWuf/CirzBcR
	 LBuRR7IQCVLOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905D1C2D0CD
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174735419358.13289.3204570829349628290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f2bafa9dcfe345144f9d3bf6e7b8cdb21204539c736c8bc1bee7efc41640081
Date: Fri, 16 May 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747354193
