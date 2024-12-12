Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC4E20E716
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734014754; cv=none; b=FCMApme/nA3ToDm+KfJrn3AGeLZpcWySbUP9T6F9PXXCuUs/wKHkn3xDM5cXiR4zml40URUDiXcrd9TGOMeCzI3RAE9T9NsV5lLOt+dQeuGdHDUEnXudKku2T823BLFgdWVkrjMYqNOpUmiC4Ad6KFgtcjNLC/t0dbEeyXkYeKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734014754; c=relaxed/simple;
	bh=uKUeIAFkHiE15Pr6c1lXDu14A90CsLhdH2diZ8zQ1e8=;
	h=To:Subject:From:Message-Id:Date; b=MVEWfc/JLFv7l0fPSnDBIG2XTdtREC4AjM2S9alLo+B1pA5/VLhMY9dC8kdbdbfIGgD07dOU9VvQ+SurA7NvRn51neskzHrGqYsoQ4t4vWTVQfim3iQyQ15VNb1ykupJHR4B+fGl5ibflPpHiAbWfA0Bqd8vzoITBY5yQKzk9gM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JYm2uvQc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JYm2uvQc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3682C4CED0
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734014753;
	bh=uKUeIAFkHiE15Pr6c1lXDu14A90CsLhdH2diZ8zQ1e8=;
	h=To:Subject:From:Date:From;
	b=JYm2uvQcnKQT+MLehDCTu25t+oMr5vW1eJDlB9QF75IUQ6GplFyHNz4vB23o7W4sA
	 GAfmo4nqZWmFMnfOnt77tI9UgA+ZecPbxpUgdps8UIJJr3arw4AFXNemoOexF+fCw5
	 IjUdjdgwHSfTZcALQ/Jg7SY+3/WDR0OWojGFrgN3m3e3rYNolURL/ygqVszHxni9Xv
	 6lCAea+q7vGHh3lyCzUenBNZ/aPW2vwfxiKP1uLnbfULyqGeQZerGHCbHVmW1kD8U9
	 6D678Z4L6L55cfFF45YuRsZfZEzAZbBgW0bxucqq1x/KtWR8LPNnhhi5eGZE5V4ASD
	 MHznwk4S//xug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CC1AE77180
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173401475363.26231.820984980022521721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17f8d1aa69eacd92b312aacab74cfbf59e21eaf9cf05b6133af4ff7aa1422c41
Date: Thu, 12 Dec 2024 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734014753
