Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BBA222B5AC
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754423994; cv=none; b=kYfDQpqX49Svy/+BrEWFe7eXzZslyo1/8XuH9oNnKtTtNicMrrSVKIogEY8GJA+1T+APu+iE12QdWqstd5LAWHdSr96jPdZeGTIlDtF0cYoYKSPZR3cFRBEfbAVTr3aptfsMc2nFQG4sJuKgJmSk3RCvEh/s83o71VA5zABW5ww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754423994; c=relaxed/simple;
	bh=h/DKlHtrLzC/Q8uWTlqbehXOCkRHQodomkWQohgsuJ0=;
	h=To:Subject:From:Message-Id:Date; b=Z2XIz5sMW1TXkujFUcYyP7YB0NqFZcJd/zx21I49kwe21smtJRwi0teh9cQvDCSjgeo0PGYty7xwUy76jptbva2Zru7zk/lFRvzWji5RqtBRGJ2U0ZoAw7wF8vi3cnD+cNOgNd0La3GknDVsBR45pqoyXy2ZuqoR0giByFJQxLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=diO53rvq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="diO53rvq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EEA5C4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754423993;
	bh=h/DKlHtrLzC/Q8uWTlqbehXOCkRHQodomkWQohgsuJ0=;
	h=To:Subject:From:Date:From;
	b=diO53rvqW+kbh6wVltJRXYFrETKgj50T3vrUI98i6+rUHFit7srVizICqGtYeieIs
	 iSREOdG/9qKIIrhOhG2jjpcmh81Pvk4gfSa5x+Xxu7vMXhke+6K11pxGBxbRe0HR8w
	 M0arZOv0eyTV3Of87O70x+Fe3XgWyjfukJNvB4b+rq1H7Tf5i+6Pmo3x32hin/fLLb
	 CSCucuRg6RwO7Oyjy9FSuXybOZ0tT3Gght+fMD5zMxZAfEcAbOm0aZpKoo16YXMNVo
	 CqBSVfWCLsr4GfcLrE3i/PAigUi/up1a9D1NLIqkxmLuhbRH62PoiCtTflz+X6dqZg
	 BCrxPKLGQ1gkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90380C87FCB
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175442399358.1685.9166114892704397309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3560cd42dd1167c80624706bde8dfc9be41a617bd28db2f9f47e61652c53a25
Date: Tue, 05 Aug 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754423993
