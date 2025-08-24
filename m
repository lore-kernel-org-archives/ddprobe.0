Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2005BF9E8
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756029594; cv=none; b=q3JxVY2eaIaGqIuBaXSrgla0xTExGpKm3uUp2s/qZV4Oj3xs9OPSBna+oJ5sqK1aSlDDKMTkIy8LmP/cmqJ9R+jCDRtrvByknCpyId5+oeVjayf6OQAiXFS0rnceOwuqFYU5IzlG9PT+8PPI9dGy/JglWKkbIS/3VnxV/PuwBlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756029594; c=relaxed/simple;
	bh=yjMlJSdW2nPAdlV08MLEeQCUgNaEVxmmYm2uqf1q7ow=;
	h=To:Subject:From:Message-Id:Date; b=G4iorYbrdAAOlX2lBa+Yx4qbqBrFAn3hSakLZ83nPrk0pkmOiWvWhpkqg5QodO8XodQafoKwwPLlxuctcTlqghQ/6RlZ8Dl07h6DMobEJPtyooU2cLZAAfCMXmMVJnKdd5iBu4O2H4TsmNaKlVI1wwc5QIRM52ffLAd035nClAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hnltlyAU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hnltlyAU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C8BC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756029593;
	bh=yjMlJSdW2nPAdlV08MLEeQCUgNaEVxmmYm2uqf1q7ow=;
	h=To:Subject:From:Date:From;
	b=hnltlyAURhG5YyDZI3rd0dYwvrjd9rBromAg+wK0hv55BmInvsP9Ux6gCOvzlAcOk
	 arBX+6/UCsnuLnWjcdruDDwyCSx/rS8G9s1+HoOdAaYSY6BeWloegPJK/dlp2HbASG
	 T9/WQoQQXddiTEq7TQt9sBxA5+GQ+IcUkA9NmRq/gAtlfDyKC6HdntAMt7WETNbYV8
	 3y7rGqWTfxSYseEa++yyhPIdoQKq0Ev25EtyR+JekoHXx4OEU6OEM07PHk5bM+8vrM
	 +8LS5MaKtqWk30MWzMSZq3ePB08ZgI/zuZUQMIbraR2nKgBvvP+70lltIwj5WtOduw
	 HTMqSh+PmMImg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918BECA0EFC
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175602959357.23064.14778251417448026031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4159b04b0399b62e111c473d478b0bfc07ad8e89207fe90b51e0ec2ed704e32
Date: Sun, 24 Aug 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756029593
