Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5404341DDF5
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785230434; cv=none; b=fhq6Vy486RxLiKLDqiLn8ifpxpFvBoC2ZRCtS4AHvIjdpR1wtFtdmdsCTKyuLIJjQ5BUCWX3BlW16uDZeVar1hmoWHFRjeS9pH/tufHGaJOtunNlVwBF1qlSmNG+n3fB4sbWc8ORViJwKbDzYkY9oA3m6Vw0Qy9u4bbYbgTuhMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785230434; c=relaxed/simple;
	bh=hGz0O1oRmAemnTlva5SUMku35X8qYN6WcAEb7NR0048=;
	h=To:Subject:From:Message-Id:Date; b=IQl1Abjfm4NW5hzajRd3pGiOPk3dknFxDyIyDhuluLuANB3Najzwq7qrV1iDt3WxGYLQRFHy3/XkcmGOvQ49Snd/Okmw16ctCVe8PV94XctfxSa/EtSdSo78yG9Mt6vDfZO3cZqhYVtR0pf5HjHXkwFeXg/esrDKsAGcMKpdkac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p1B2OfFn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p1B2OfFn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD5E3C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785230433;
	bh=hGz0O1oRmAemnTlva5SUMku35X8qYN6WcAEb7NR0048=;
	h=To:Subject:From:Date:From;
	b=p1B2OfFnVazBD8WlsS5+pnUUM/N+qlV9kUk4hAkbm8f45TtIalCs5aJhMMKgV05G7
	 hKYKxjKEd641UrydJO51Nbu6u0T4ESGKW4fCCS7tunKJ8waWtovF5aVjoe0UQyV4PD
	 baXvprG9LpAScXa9NT/OV/eV9d4cbczzCdPqQEkpM3JqltzM6Hd3+DWfaoujxroE0Y
	 dVPQsdM9q9h9pwL6moWtn0y5jE0lTOTjbHDv2K1RdXBcjMUpnMOACz8FWJvLSbSDHz
	 Kk8Lvcz1I1q+Y0ZHfmzlH7rYvkkD1Igi2cnpXc2YQ1INF7cjqEE70YnMhovEqgR+xM
	 8AB00g91DcIXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB8E9C54EFC
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178523043369.11595.4004314012665172859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfff47a83863520042c86457ef53c75ceb59fe7be819715edb79fa167a1fdcdd
Date: Tue, 28 Jul 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785230433
