Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AB70327798
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 15:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764603174; cv=none; b=ZO5suUxL3wTDEZxb5wN2F/hlmxr3Xu74aXSZrExS6T1DgarQRKKypOX25sBdSP6PRdd6kEjepUPct7V3UVgguptgrjxI1V7jUHdRyYo5ivrxpAeeQ0IpUOpDBfe9cDn1Dw6IlFeHEixUdOPbPACGV66hi0ZPBb1cNUa4M7rq13s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764603174; c=relaxed/simple;
	bh=6k70Hd8EhYhdgYVFyfwP/OKGT/cq9o98J2H4k1LzBx4=;
	h=To:Subject:From:Message-Id:Date; b=HordBBnv9ZO7F1rbZ8RmuHnDOCpWMEv1elNKhK2+UAKWgEVcHRDGNKBsTivhlZNsOMH2IZ7sMVDPpHByIbTPrYJykDyhH6nXFXjyy6EMiZJOP13UnX6GzaEaKfBufpaOeWAqo1NlUDyUdOOK5g1ocFj1SbRO9vHfQlg96+sK9Dk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VOGpAak/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VOGpAak/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CF0C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 15:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764603173;
	bh=6k70Hd8EhYhdgYVFyfwP/OKGT/cq9o98J2H4k1LzBx4=;
	h=To:Subject:From:Date:From;
	b=VOGpAak/YeavchxBbcyt19uHM4Iat4pvidnbJs/DUlz2nuJ+oPyClfbHPSxyXs9ii
	 Qp0FT1p4TptFtVMc96DSmW0gz+05WdCtsIqKgFFBez8RL8tFg4SSoyFKSorkd+9umq
	 h07eCXIxj8ms4VM+X9UVN76Kw0cxE0IDkB8TDWK0piLZl6h3VbojWNaWzsDSX5aOGB
	 ttxGEfeCBGMDdiaVYqnUks66chNeLlxmR0FpxJ4AkC5GX2nblpop2FPLgDAd498UH2
	 Vlw/NBXn1GaWvNBZ44+6VrOtzO3D+mpImOckdxvvO/TSOrB7IGIBIaD874lJgpJ1fc
	 IzuUs4Fs/V7hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914D3D116F1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 15:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176460317358.31195.5303218463588295701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 909d1f05986c0cb4cb925a84273880121d30b691e549e044c3b6fc403e6bcfa8
Date: Mon, 01 Dec 2025 15:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764603173
