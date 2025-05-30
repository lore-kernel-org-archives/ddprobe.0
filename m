Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D60CE22ACF2
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748613593; cv=none; b=NevwaCUevI9KTNS44hWqU22oQ6yXNdgnDsAJSxDf19RTp9OJv3hXYVa6tx/m42zQnp+Y5QH9ovGf/lMDrUM559zFByAYq1TSxy1553/UNGDKd+ony4Ol9SxYjpwmidX8N4XcVMYR6O2xkWCThWpFVL8lNuy9Vnr7zA81NxYzlXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748613593; c=relaxed/simple;
	bh=Lm4u9hS7Xee4VbPYhqrmXjHmJ9Dfh3JDSPpsGHN4b4w=;
	h=To:Subject:From:Message-Id:Date; b=AHkEMHp/GZU8TlXmDnKCSBgTw8AtHo7dZQDIc3FjnMFCA82nxyGmMHkqKi/fznxGzQTc1KjXdpBmWhBBrXXI5maXvHvO+0Sb7NkCB7i0IDe9j5epva3uI9dd8qrw1SUbqLqlSn+LAU/DcArU4IiiUBnZ0mcaQfjbS1coyc7fuxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g8uuZAoR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g8uuZAoR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F727C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748613593;
	bh=Lm4u9hS7Xee4VbPYhqrmXjHmJ9Dfh3JDSPpsGHN4b4w=;
	h=To:Subject:From:Date:From;
	b=g8uuZAoRa9ns+x4PPvVnUS5NcLHHVpRjEJtdgGAIS1lAJ3PYRC06vDXOgCQPfgdVt
	 4gIiZHLpOGaogNKt5cOvdQ/in5um2kQcXgZFkoiimhPis6QCDSldDt2Ldd6hzAgRLT
	 HiHhEO5Whs6BVUGdJvQPqATHKjDs/T5JbBY2rVSCvcRFfmVBs/8pXsmwopKnov34rz
	 on8NXCHHg1gY19kGys3EIbjP1PoU7U1Jq5+mGWN20v9CJ+jPChAix2iQY22I7vEuwx
	 1L26me2HW5PML1wJZEkTLtMW0RmcrKpg92EtaNH++1bWd7eKN2kNI/qWD3gSREpORD
	 mLwG6h5GoFWMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900B2C5B543
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174861359358.26821.14448115528880225572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dac04ebb8c0206cdeab3a3ff481ff36e8d97a457444c91a3e8e62e030501168
Date: Fri, 30 May 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748613593
