Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61D482367B8
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791252034; cv=none; b=Uuzgf5+HQoHp96Z9ZJPY51/R1lJCxPwqQkc8kXkcm9y6FSZfLIG6J2QPEIHZY9TEI4/UFocozRVX+7agOnMZxEcvHQT/1RZlF5Zo71TavXMBQLz7MzFxQz0LA8RvkMxiYso3Jr2vBmoodbV7wJQy6SpFBC9DUj9LShvz0ulSsmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791252034; c=relaxed/simple;
	bh=YQ8TbQ4HmjdZGXp4g5cWfFT4GQWvTbO6MkzgJTbaZ1o=;
	h=To:Subject:From:Message-Id:Date; b=CBpW7tUHvXS3W7VElqXEOBOtCB9zUCXFtBUwAuBiVV69NLIcYmWkF4xqS3xVQE7m2kg5CKWr99asKs5sZ64IICaRi0AO7ToQ9GuWoB3CJgiJS9hd7+imPVrSqtVOc7i46/YWKoFbDl88NoGd3zs9t+1JVmK6m36jYhPGFO6pMF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PpZtEK98; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PpZtEK98"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D39D5C2BCC7
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791252033;
	bh=YQ8TbQ4HmjdZGXp4g5cWfFT4GQWvTbO6MkzgJTbaZ1o=;
	h=To:Subject:From:Date:From;
	b=PpZtEK98080XyxftV7BqHohLVMQPRmp7cqNb1PsGXiIxPSVxlHorgTeNvrBc4zdUn
	 k3yE8inLR+MK0q5A6GOT385ec+9Sis1DWw/DlmF9TUA30mKQEV4kAWqMVpOJyiZgmi
	 33/L4sG+ONeFkS35VpIch/9G+t9FFedhy8EoE1+IXJyEv1E0csquZgnQSb9VGY6XwP
	 vxIDfzu6dXnWjbcV/ZwdTRGeRRapFFqHQIzmAEeduYf9FPdTTJ/NlBU0FdLsMv1gFy
	 MN9/YdKft6+FyY3lIGkPL19wUIgF1lWV+fy/JSB61d1Vg2+1lMt3puqtoshX+ge+6x
	 2QB9nN23Tz29Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9889CA5FFE
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179125203368.6868.1725699227955836757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 976733b70ebe64da5547cedacaa43e66a3a58180e6d0649951fef70e9cba9ab2
Date: Tue, 06 Oct 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791252033
