Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5651D343D8F
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787697034; cv=none; b=X6uL4HGL+Jcwlj6389t8cxDEB79yV0+wfeSjcN/zS89TnWJidVsnCPp09ZTCXkRfjQHQ5Xp1CN52G/IyQOFebI/XWKjy3V7BVBX/IJGMKpIwuh7ZJJkEaI03CvJGfdr28cJb8p3k47eG1i4lpA6SNyK8ica6iCcDZ3o37Q23aSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787697034; c=relaxed/simple;
	bh=siL+zY6t5GQXX+iVZblzvsq83+hWJIEV9WHT01gOyRY=;
	h=To:Subject:From:Message-Id:Date; b=G86Sexd4P269LSV8I8+J7aqpUWm6e9S1WoZjtK30WhtN+FvsUKaziepKDk2SAzLUMjEEQ3gUSwQ4P2BxxNZ1/ZfnuDM8SNkCVkOhYaDpNJGw7/yEv0kDQtkYCy7Xms8vwcUqUN7rfGEUC8VVV/K/JQQRJVdqXmIi86ssGtSvg3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ShWMnJNZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ShWMnJNZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEA7AC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787697033;
	bh=siL+zY6t5GQXX+iVZblzvsq83+hWJIEV9WHT01gOyRY=;
	h=To:Subject:From:Date:From;
	b=ShWMnJNZIZohonEYjiWRNssONuHrdnstNr+5GNhDYFanqFpPvYpobAW7Z9TQezeXw
	 oyL+5ecLsKSQ74KGeMomFVCP6O5uiH0gw71ojYfE5V0f/IfiJzJRE7EEpp9NkiJJJp
	 Y7kbVfHF89C2T24w0+US5kVun6r8DjpIaADC2ScBcKOpCgrooVmGf+yDigcgMy6ipP
	 2i0vYr6uwF6E9srGqebZhL3uDzDhZblHUBcCxjQGxhNy1mrrK3QA9Jp4hHcu9zMqq0
	 0sDfr2R4qukW+qQ2CzFL9gsOAlMtvYibRG7uysGRECx3b/U+dkPcHWxbqp9QJvpp9X
	 QCTWxgal7St5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC2F3C61DB9
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178769703369.5587.12926959987812480578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 950664648bd8504005fcc65daeed263d43b866b523f67f58544db6db0de7aab2
Date: Tue, 25 Aug 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787697033
