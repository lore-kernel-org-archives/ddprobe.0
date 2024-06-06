Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E4B94D9E9
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 23:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717717043; cv=none; b=H4n1dueVIgdeaDyfT2NN202/WmYfPeHiomLR7e/edgr3ULylDfjjd0yklXBAD5+cm4ZEnbd59W1p6yOCmnIP4CMorKGDLhk/jmQqcgOep6ePSX5AI0U1xNE6FWhmvzNInNtKCbx3bI9HtFqL2ODRW43wFyeLYzQ5Dua/FwfIQBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717717043; c=relaxed/simple;
	bh=cqj0PGH/r55uJkVxctGqxypp4x4gTUSEeNV6fCQ585s=;
	h=To:Subject:From:Message-Id:Date; b=LSlMdNDYvTXjyslRAxx0GdvI3bhu6l3Bl9nZxKc4zt52N/p3PgfxOGgjkStfdOMpI8cqByzg3kRQeNj3jsywOzsasn91YBtSJCUcrfAf0AnbtC5/Gns02X3VuDb8gMfaOa+U9MUpxN/9JPlR4GTY6VzVHglSSabXLyoFtW97xqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lZ59qCbG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lZ59qCbG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3E20C2BD10
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 23:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717717043;
	bh=cqj0PGH/r55uJkVxctGqxypp4x4gTUSEeNV6fCQ585s=;
	h=To:Subject:From:Date:From;
	b=lZ59qCbG0t604kbLM4N6Hs28vFTfGYfs+emTAgprUgR/YQnbmYIcnBsnb4lpD2/uP
	 rl9bOGw9I9lVBtY3xLw9KfmhWOcIQLaEDrmKKZZoiiYnJD0pcOK6NggrIXEWPZXnlQ
	 ER/7UFilQaxdR8VyH5S0ayziwvK9NsxSCvatgjK8YQQNlRaT6TYjPB5CVGvireNDXv
	 raMYRu5ZYntinwh1BGj2x9hud4HvXL7cIoNOkBwa5q3Y9uDudiuLhExUyg/tZtClW9
	 BZU5rgQUpxIwqFIwKCL0H6UaZaDKjRVuGnVsBvxT6ko4ISqfKd72gRIe1xgBzicmWc
	 V76hhwx102M8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6777C27C52
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 23:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171771704282.23227.16877511563266235852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30797f1a04392ce4c79936eb5aebdda8b9e4861854c8ccbf2c9f063fa6f824ec
Date: Thu, 06 Jun 2024 23:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717717042
