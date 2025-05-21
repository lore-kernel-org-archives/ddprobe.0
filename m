Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C13AF20E715
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747817993; cv=none; b=f+X5Z06sPhQgycwBBzt5LqQU3bPy5a/yCO6/VU8mTDfhhGey0JYzzjuaOzTYo/3hoP5Ahg6xkrBelK0O0AOWQTmwIQqw1xdgS8dYOaWhjr6f3KxeZcUBOj2HydwSYf5lzsmeYuiGi3zhfq62lLX6Ho7ljfhkjPik3nzGA6OADYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747817993; c=relaxed/simple;
	bh=k9wIT/fNie83cbG2Ca+P3BHiydrfMesG9bAvG7OfCqU=;
	h=To:Subject:From:Message-Id:Date; b=ir1S3jqYJlLJFiwocvRXlUq2NSYSn+LS1jkRQ+RnEurv638ml6KAQuxSL2Xj5h3ExZEJZHIXaqaGFhXZpcKaUoJN+xvssunud+wGlvDm1t6QA1mfYiVlh1XNLjzy4OsV70IsDDChDkHdw8LEUjDrjA+b1VfI3HIenHMBwIwuMu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ae8xyQxy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ae8xyQxy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F376C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747817993;
	bh=k9wIT/fNie83cbG2Ca+P3BHiydrfMesG9bAvG7OfCqU=;
	h=To:Subject:From:Date:From;
	b=ae8xyQxynFTB8frDdZKanT5jUHa2FqOIpsY35mb/wL51f0saOu489KWyyNmglI7EP
	 hjS4b1/xqL3LvT49zFSpbXaWFnJ8iX7Bzz5nsXg2c57VNUkVpOUqFCSt+TmqeBeDu8
	 TdipxHEhHR9xTGKpbq28kSCoZmxNC8xsAMrZuRpBBP7RFZuUb6RYs3G/YAlPRnc3ko
	 NT8VMm9nRa67R4KuDVeKkB9IhEYNamdBOqUguoS/PR9ZCyobJAGxJ47ofgbKdL1Gmh
	 bm6TsRoOgCQQrQsfy/HzdJezf5ljmhEl6yA42JyaTp5z+7ov+93KF0ETIor0KwVZdU
	 idKV29yKb73tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E198C2D0CD
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174781799357.31068.10640298421848880974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08f418cbf7cc8f5e7349d1eb2d2fdd508a7f06661bdb28ffd7f9338de65304ae
Date: Wed, 21 May 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747817993
