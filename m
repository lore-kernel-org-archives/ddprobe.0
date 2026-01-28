Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 069D931579B
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 17:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769622234; cv=none; b=gvuPWGXPjWqRAZ/J6B093XUTXAy69zOzjv/e2mGm+JE6LXDFcpiILSu1XfwNxfxUdasYsO97U8LbDZXnGOHT7PoDQq5j8nA7sVTuFqakFcNAEfrc1n0MCalvsk2xqIozutQ6Gacc2H9L3WnTZCr7K9I7wYM7TtMzdkxMw2aW73k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769622234; c=relaxed/simple;
	bh=GTU3exzqjTsd4quqCYv40YJLoYQAZg87ADne9NHboRo=;
	h=To:Subject:From:Message-Id:Date; b=JF1vPwzh0TS9TxJh/WYXFiGDla3+77v0FE0c2c9tWTWo8DQV6SuC5HxPBKs3oZnKlw+vngH3Wp7DnBjBKVwH7z6Dn8/R4HdkfLNtp/e9inrmJkxFSR5/gaEep0W8Re0ywaR4vVKFZWr8eHpOL0kyq6P5fWlsJHnLhfoHYHnO0P4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RrNDMTsW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RrNDMTsW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E2E7C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 17:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769622233;
	bh=GTU3exzqjTsd4quqCYv40YJLoYQAZg87ADne9NHboRo=;
	h=To:Subject:From:Date:From;
	b=RrNDMTsWRftGGnIiTcxvOQrm82U2238pYEi6UC+1qSRuofMUEM11CaJn8xnlv/HSZ
	 eGFilDN+vvS4+deJ0i1f8F3bCyYly4fPdwpNvBgZXplQsjcW1twj79x00XHV1JGG9Q
	 4vSly7HWEaXCBeolrgVD5OspwpkOerLnFbvUaALJOYhsXiQlKSpio/fQsXq7R0p1m+
	 3m/MnlU9wU28CksiN6zJOOsRArUce9rqFRbSzGXx0rCnJedj8dZLA5uBspUThAatXy
	 kL8v1wBiI+TpvA6/xN8suIeQSNO37cgmbi4ONKwDEDkEw5VUUK341kDwOFvg+hWCH5
	 1ntXXu+Y7rCjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A68D46BE6
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 17:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176962223358.4905.14142645407337839755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00b69e7fc0371c5d14212fbe078ab262082614a626ddf1f07cdb8eee3fea3560
Date: Wed, 28 Jan 2026 17:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769622233
