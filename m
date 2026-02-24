Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DE012248A0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 22:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771973694; cv=none; b=TJjmD4LPcxTC5fjKBwkpQiPBPnHfUq1dmwiPB7jI7k3nFpN/D/movVcue/AoV8Fr42+4O/SlK7uX9dtGraG0ZqGn1PJRNy1AibyYq/YKGIjM8RAoS/EGf+I0yy+B2CjXxV1d9hSCq5n4HjBdgDBMPaqTuCg6x/dNfh6uCbMPCwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771973694; c=relaxed/simple;
	bh=tMW4Nq1vspuLrk2Ak+aNoN2WNrSXypNmR/FWoeG+Ul0=;
	h=To:Subject:From:Message-Id:Date; b=NP06hQ62W9TZKxVup/UglQ3EMb9SoIUaSuBnudtxqqGmMOfiwBxRli9FaO6xA3ycWoZILF0cidDPXrKX4wNREaMdK+Kw/U9KQ3FS9NrJPPJPMs4HvLeBKcOXT1oW/UJUXZCr4imUYXb5Lg6kKaTn3venMBQH/ZngMMo8Er+/xM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=brEgo4ng; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="brEgo4ng"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BF8C116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 22:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771973693;
	bh=tMW4Nq1vspuLrk2Ak+aNoN2WNrSXypNmR/FWoeG+Ul0=;
	h=To:Subject:From:Date:From;
	b=brEgo4ng8VzA37j6N8VRAaH6VbJk46qhmRzehoxgja4miRfqKfVaE3v27mJpCUzAJ
	 LSrHmPkemyoK3EozUpa2obRyhpXmijo3iv0uINPFit6J0jFL65i4bziCNlFM6fVwkF
	 tpMOp7NzktHfvarLWboDdLmF/fZqQivQAH88hbkFRmgpdObQGvKAJO5vxJG7IBZPwD
	 mNXMsXYhlmgOAr1TRLahzq+BvdjDr+VJzgROgWqHFJLa5NHhmbD3EE4wiUWGUsWf0r
	 aihPs2l+qGPC7comrEqva2Z44hsB3gKtbArpG/dhCNzLduz20WUB9JYHwmduZmz3XG
	 7ip33l1IkHBew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917E7F55421
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 22:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177197369358.3997.5480550976404729053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 158860559f678272d16c34956681d8b6f161e61eeceb8f519d7ab10c43c3d0bd
Date: Tue, 24 Feb 2026 22:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771973693
