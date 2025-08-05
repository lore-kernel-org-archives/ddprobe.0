Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31A3E2264A0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754405994; cv=none; b=EbjZaBn7ydg+MrlWkJF77fchRQThRZP4bWXmWHZIEK8w/4N4cLaFMfSeTFB5xoSx/+QZLdqghXK7MsEQo8ApE5ZWgqNoP+BYq2ZD+EQt7CVk4f2bO9viZMqkCvPIe9IHYyG3rSyoSxdEjWn8vkcHhCErav7zX+IfUSS8eTQLhck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754405994; c=relaxed/simple;
	bh=oZaHZ5pWgAF8wmckzYFu5FhbzpBHrfKp0ZE90nXREyc=;
	h=To:Subject:From:Message-Id:Date; b=Z96TgfdWPA2VVetTwJGa0KUVrbCYItCA952ZHeBQSJnlcs4LiHW3SkVukMHto2MM0y745YddXSTHEBGyjdKvwQ0hHxWZQowiMyc3tXIZVeaEP95xqrv8CUNg1EuqSuQ9CC2awAoEoCwau4Cg/i5rU7NDhdGeVRzGJwugMwRQ2u8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dl2StGAm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dl2StGAm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D48C4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754405993;
	bh=oZaHZ5pWgAF8wmckzYFu5FhbzpBHrfKp0ZE90nXREyc=;
	h=To:Subject:From:Date:From;
	b=Dl2StGAmjPzm8AH4oYYtfmIHcQB3iNQLmdnVRkYnJCCMFNHCIJnv2QFNP5Hncho5h
	 ZKSSm+hCexhr6WhcdZu/adtlYGISAv4FNtpCtAU5wokHqSTN3kd+bYl6Jtqyz8k2Ho
	 dKVMyJGpv1wQedooHi4kWhmzgU8ZBSPPDVJTErLq5h/fn7ibi0yRwLQgoLEpSCEy3M
	 T2rCYhceOgAUBOpxlgLjpdxReeY/u36UaWXKuCc5LF9ikJHQJVwKatuMqsXEuUsnt2
	 30hwtiya+I/pBb06G1nsWp96tkEbc0hSU/9cNaOjkhnSpuAYsy9wac7wWmhdpsEdYr
	 QTAkfcR9aqbBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3E8C87FCB
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175440599357.31419.14471931380819578551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff4f28ea063d5f19b437b08f9b264abb3d4656f728d57a1b7fa0ba150262347a
Date: Tue, 05 Aug 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754405993
