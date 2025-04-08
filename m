Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4393F20FA83
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744137594; cv=none; b=LTEEW539R4O0WhZsJ5NyF/1zXcRrVndDsqeasvy1XIjmxNuurzs8Q7K6rciSLiMQIyBx/Wc7nacRjP5gZX+Bu/7f4Zy0ZIQ4xJhZNCeG8stLvHA+uL4H4ahdHJ0GBQK68dH3bu/lglBcYnAK/eJD3bFqBkjbOm/eiVak5/URibA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744137594; c=relaxed/simple;
	bh=3qefsyn1tRULkk3CDNVK8BA+LYkkWD3RKou3Q5upmwY=;
	h=To:Subject:From:Message-Id:Date; b=HV1K/rmiYCUSeOOVqq3lQqe1MK08J4ruN2tsyLIqX6uQveJnXJawhgUOuW0oUjNKdXrvWuk+ADRnbUQWh+FqsO1xKspgL8vwub/H3Z8kaC5slE019jyJ1/j0sflO86aQldmpGGDjGwN2kmk2tKG3AdfWpiwF5q0OE6c9t5q7L00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tgplZwpX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tgplZwpX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A596DC4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744137593;
	bh=3qefsyn1tRULkk3CDNVK8BA+LYkkWD3RKou3Q5upmwY=;
	h=To:Subject:From:Date:From;
	b=tgplZwpXAcvvBmBYMYgb1wRdplVWXhtLtZEAdipOO5m0ufMEQycvixtWaXcKeBiUk
	 jaKAij1mBDdyau/HoRZnDzadi8r5FgOPNEtCQkcAIZEC0qFD9Idpu8hvWfZEL2/eZ2
	 Rosxh2ejty+1azEoKwnvwXIVNIqzPIjg64fsdrLMLGzRSxc1ZUWEIGg6nq0+olZ1X1
	 iwYL+aa5XLIs+j8GWrWHCUvyEPxtiLHJNLECKpmlNeQqFKlxRayI9A/ziKUzbPUv8h
	 MDxJgci9TSfbH4oncz+0ViTSelqmlF+wF9kv6+H5d2vfdtAq8gNRAdeiuppevzvB8K
	 UHMSa2Mo1vwBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FE5C36010
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174413759359.8479.18220653895160821391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fceb5547c168b29c745cde565deb92e39f51108e4ba036915c28fcafd688e27b
Date: Tue, 08 Apr 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744137593
