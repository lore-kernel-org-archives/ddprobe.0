Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 165302EC563
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762333194; cv=none; b=AXULsS/RJhyCBqTLK5ukaiX6vnEbGp330xFZMn6QLjc1PXHb7K7znKRJEB9Hn/aClaASQz9gsQhWFkZ8qLeZDb3tNqDVtwFfNEksV7QXEPvrP8b3CtjPpFQAtmpbJZiBYWLlEDz+BI4O5n5wVLTOxWF14X6vGp4gBYtFVBd/jiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762333194; c=relaxed/simple;
	bh=APiVfLQ71YgMkkg8y79TrVeCs2Gkj+yjgllMkxkjZHo=;
	h=To:Subject:From:Message-Id:Date; b=M6HeX74nMfl40tTQf+mHmb7OjegWVrSosemjkva9+Na23mTbXbt/uBdeVpb9AG3CsXPfYM0i7bpv0ncXlVskkvGS2Vi9XIpOvHFOvt6uNLLmL/gCeANKVmlV7ELTQ8SpdbGvhzov10NqFlIMUJOszU9m09vo4z4dkxK8G4okLYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EDySPkEv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EDySPkEv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACF4CC4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762333193;
	bh=APiVfLQ71YgMkkg8y79TrVeCs2Gkj+yjgllMkxkjZHo=;
	h=To:Subject:From:Date:From;
	b=EDySPkEvKkRZSjgaHaXpFJiLyG9xtysTVm56V0LKW1uq4IaWnlW3CcaVMvcZVirJz
	 5OeQKnwBZf2ibP3F8zYX3BsifwlLjH0kmGBuVytEZ8FaZLp8rLjogrlBPAPf1sh7U9
	 wnH6TGzD9hrACAeHll64YhEY8ba8te3L+iK75n57zOotmB+gqL592yLbo93iLtymcw
	 BPEY4xRkJk/evvXgU2+grE3JP+rHcDld9KfgIzjq+x8ZHPmc572xni7sIS7TSz4aoT
	 DKQA7mto259XpP9EmmJZ0JaD6tjvyzav4DOebpvjn4DhzzZyVVZf00I0wjpJPznQD6
	 8thQibf7bW2BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B1EACCFA04
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176233319362.12391.7566352398473861894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0bac872dac941e417f1b54cc4790d60ec898cb5bdbf72bc7151573e67e8f08a
Date: Wed, 05 Nov 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762333193
