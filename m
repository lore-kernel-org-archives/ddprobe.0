Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13B6825557
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757894995; cv=none; b=VpkiJYjEFvr2qbv30zxElcj0dSt6/uFp7o+SxV9r6opxqyMpmEupic39DOISS14XEZ7auEuAkOB3g0UQABwPIQAfLn7PF2AhcVdAfgkH3+GoRs8iC6zqSVViB5ou82B6pYJZJRC6r0x4d0fal+EwYaTCLCUJvzq8uZ9h4/vr4f0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757894995; c=relaxed/simple;
	bh=r30ZuTyDeIRcV83pq7F7DcwklQNwghYi8A7qHxZGeJc=;
	h=To:Subject:From:Message-Id:Date; b=BnKlaAHHTFlE+1f5HNyJoqw1XLW9mDscU4sXpl7wE5Bj7Gx1AUfFeAHo1vdBTssTuVdY3l2EKpYPdTiT7IFRJeZLHczbAkpmuth8ctl3JRlgWn9kqo0xqv4ITrpOHHtMpCtlBUPD2OK3Nzt1/LGe/ZCy1qMTzUCm4+ONR7O9TjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H2B7hsai; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H2B7hsai"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA3BC4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757894993;
	bh=r30ZuTyDeIRcV83pq7F7DcwklQNwghYi8A7qHxZGeJc=;
	h=To:Subject:From:Date:From;
	b=H2B7hsaitQGNMLV3GOyzvs92+ruShQG8rYLUJfdE3eOOOiMxj8fxBzD0dTDpry4Wl
	 kRM28wribr5b2PlVijlAKb3AEYvGoSqEdOIA5LfskUEdTzwlrYSl8qOKpjwhADb5Ik
	 +VBgDt5Y/xrDmUSj30F7XIfIHcLgwqPs1R70G2t1aV+nBK4X8VgvShZnuiiZHyP5oB
	 92dZISEdcypVcnI6KyS68vkcJUcEpC3a94JBiccjyvpP1HJkAVvcuvsz851ClvIFO0
	 6sL+jlXty1koiWVGpW20wSdfCQLrcyOGi9TnHXxvASz2cFTl6Ez8wp4zLQKpVU8F7h
	 XCBjqdAxUsx2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB11CA0EE8
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175789499357.14009.3416602262132762053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2cbb9de1b878ca341b06d54bf0dbf39c44039b32b7cbc5fcd5bb85abf4787d3
Date: Mon, 15 Sep 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757894993
