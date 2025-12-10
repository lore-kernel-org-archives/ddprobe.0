Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17C3121257B
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 01:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765328574; cv=none; b=PDr9QP9W9y8HPYYNX5hrzqtduB9m+bZeZPkto+XTwveqdS/X5PZWnpQcMQ8AZHmKThM3SQqgMWmi15/ljDzOJkSAebYobswO5nbsb5/bwd/OfW/BsCwcIk08M2cT6EnDZ7AxL0lZjg1QQN2xD5KUrzOaoxMfmO3YdgLepjBddmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765328574; c=relaxed/simple;
	bh=y22pnp6n+ydqpRo6pIodgbc0QFaSDp7SWJTPEKou8aY=;
	h=To:Subject:From:Message-Id:Date; b=Ea9MSsUF4KkG2Ce4yglviaoUBhPpxLF4ECv5Lh1wITVGkeGmW4Dh+1Y2mejJK6TXurfY9ZSMca/lw7qa8WNjhL/3+2B1CfHJeR8a811XYKY7UOp0IQRbvQ3Stm64r08lgs4Y1VluE18AScwqW7oTQreJWud4XZ4lr/20WFUSpSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZeIvWpxw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZeIvWpxw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB6E3C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 01:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765328573;
	bh=y22pnp6n+ydqpRo6pIodgbc0QFaSDp7SWJTPEKou8aY=;
	h=To:Subject:From:Date:From;
	b=ZeIvWpxwAuJ9l9/0ct0M1KIuwEOdUraznK5jIfsdZw+KBiIChcowHx67t/IoExoHL
	 i8wl0m88zlEwirYW7FVa3haOlYYq05H7pFvm5oYvO3sVxHuria6lGB2/wjAN3imnKT
	 K/vV8g3cvWYFJxX0GOnCX+h5MHYO+13CN910Psv/nRQNXG3gNIoqdk5SGu9vnlURLm
	 abEEVQ2JXkrG6fZiVzfHT+YyeCH7OK4Yu0ljko0YCUKgGCJK+ACQn3ytN3zBLr7HO5
	 X18CTrtPciwtbCTRUFSxKeVtUUynZLcVHg2l1qhDEgr9JwMEcxTae5G9T5OwXmxto5
	 QoTX7PRiXYldw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F5BD3B9B7
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 01:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176532857359.9680.1711833540587584635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2af09be3114c0c2a3332922dcf675652f4ece878571a59c25848f1df284835b7
Date: Wed, 10 Dec 2025 01:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765328573
