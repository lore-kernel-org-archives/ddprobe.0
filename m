Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 229A7373BE4
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 10:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777545454; cv=none; b=k6qo/QsYJyttNJwQn8Z49u3SRmkdZh1d657fwjGKNQjJ2usTqWIrWflCL8aYcx1QruqQVSw1Kvc86VAxAhvaBKSOvPDcw7kUwdCYkwGZxBH7gEkOC5P0bCetKzwcgldKU3uoCH7C4C8wPACsl+QWRROfry/YE1wmAXDc7KFXi5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777545454; c=relaxed/simple;
	bh=UIAd9j2aKX8tXNGj6EsTbBkbbtZ9130xo2YVS5FOWkg=;
	h=To:Subject:From:Message-Id:Date; b=eYIwD11lwz25toK6IscALxJaU8WQicpdC9CHNX9VmEiW6z5btr+AXy4395CZKEbR5spcmQB9DyFkWM5FfMH4IQ8oXALHDkWP4/48bLG90Wuj6C+IVTRTt2C1ltbNJQWVn39AU94ZsBpNpSkRSCPdxjzZUCwvu+CmWi6/xE5/ZHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oPUZD/fr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oPUZD/fr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9D05C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 10:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777545453;
	bh=UIAd9j2aKX8tXNGj6EsTbBkbbtZ9130xo2YVS5FOWkg=;
	h=To:Subject:From:Date:From;
	b=oPUZD/frQDlsX10z2rH2giFUfCj0Rywzxno1G7+a8IsxFj3ziq/s5GUDE+2BAhUXx
	 G68g9uRHb5hEIZ5ovjN/9ZmHWLUNzyDBHy/oP4Tg4K+47FeVP1pUb5ftA/2SD8Nth+
	 f9K20xmkfJbns3DFC9BHjX+GX1XNdCnEFA+ravD+LmIUoZXHfai+GeO9ICUrXdpzET
	 DXxb2+sIN1n7wxh2YACD9aMyGDvDgEd9jDQQ2UbQKilPGGyRarsW+Qi5SKqL4+OkuV
	 V9HdMoeHqUEjbHVA85dQBKgdhrPSEbTSRNrNUDfi5iVn/4rFmDRNwxriyELJ4JkrXz
	 yJI5naiSGJQ6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA405CCFA13
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 10:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177754545368.22575.7541974862058034945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fd6e22a23b2348169d0e2a82c76d2aa8646687e2ded5d35d2a3cd05f66ecf4e
Date: Thu, 30 Apr 2026 10:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777545453
