Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0BA02D837C
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 19:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778183254; cv=none; b=Iah1zUCgYgqkesw/tpyo/qA+dICqcRfLpfN5u6JjSlD2i34drzT/dab+/UWbUWUhdZnInlFI1cXFNAlRQEWbo3riCzQrHBL/5ODGHm4rZlGQndxn8A+xIuMBaWreuMauSkPeNO2GrxB0au7qioU7V3rXUpv74/+2pF8m9vsrSHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778183254; c=relaxed/simple;
	bh=ANKpUH7Lgd75/EPokYmyXZUFPCWwQzvrAXaFNJ07mfI=;
	h=To:Subject:From:Message-Id:Date; b=CEaxb/xQwsl0R3y6eucj8OOjDbmQDItaWfyqk0kjW+ohQaP9LJClNCgOME4YJEDrKnftxoaJ28K2b5RF54eHvNGMGyIXYfVKLlEF/+6hY/ktvJ6cpNsxJ1B5J1hYmdLngzgX/iGKosSV1F45pU93MWxKmOrbMX8xtCi1nvbMPj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=olVw7+XZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="olVw7+XZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAE81C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 19:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778183253;
	bh=ANKpUH7Lgd75/EPokYmyXZUFPCWwQzvrAXaFNJ07mfI=;
	h=To:Subject:From:Date:From;
	b=olVw7+XZsYhgtpcep+3jgGucTb+mpTx6spUz0VnsQW2LcGzIZJf5ppx7Hdy/mBLVf
	 BFfMjkYxA69skDewULZU+wqQxhiqVJQRTrDKYCHtwhCzJrFQbq0oKYUdi2NxJheArd
	 6sA39RebDaZukEawiYxsN2vQ+Ibeckis1u+LfRxf6Rqj3vCnf4wMPSpcP0Z3RNetxq
	 fh7YnRgzeIGCt2QfmE7pcyam2iaQsBArOjcDaKSYNj4yj5LH5nqyZmw+SlfNyhg0SD
	 0HahEU5hTUPDVnKZE0ko54w7vXkTzAQjtnMKAX+kHz6nUVMCkqEuRdzrbY7FFRxHv3
	 ixY7/y2Hc+QIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD42CD3442
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 19:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177818325368.18485.16018626463904148760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d453c3b5ff57161aa465491f70ae37ed1e22ccc8805b7ca6e7b52ca7094f0732
Date: Thu, 07 May 2026 19:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778183253
