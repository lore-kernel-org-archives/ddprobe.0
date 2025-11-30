Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D2CE36D4F8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 17:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764524574; cv=none; b=RTL0qIg7ZPx83QnnK0pgt7du1nFmITmiBU3A4dDlDK/m0cKv6YgJ+cK7iSbyhbySueEGj0C1J8jKtFxnNLIsFlCRZHqXuPzR6Q8vCWADkS9AjqLuBIGX0MCKSaTUugKEbXOdjSUnCLJJsROpBtoZMI93ovbT3pyVRZUhy07FKc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764524574; c=relaxed/simple;
	bh=YxCguD4/xYuZ40314s+xihWrD756LvXn6PuGqpLm088=;
	h=To:Subject:From:Message-Id:Date; b=ggPNeYdQnkAhvSDQH8nuOZHykv7IXpU1116/PM74HAP9HU3QPxk3NsRpsAdduRae6JPuXh64lgoyTL7q9V7IGNBAdtxbWNEmO4ESzxab8v+8e6T7cHoW/0H/MkIHO5dQCyN0aXNlOap7I+Er9uqQxe2sYgJ8MassOZZ3qP7E7Ns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ot3He5/j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ot3He5/j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83DFC4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 17:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764524573;
	bh=YxCguD4/xYuZ40314s+xihWrD756LvXn6PuGqpLm088=;
	h=To:Subject:From:Date:From;
	b=ot3He5/jMH9LVars4aGzFWYCqG9F7BxXQ3KXe7O8Nn2OmVDhriUoNHZWA48lz/Ax0
	 843Q4fWhwoUxAPU7FlcTPdzkL1y1gkZBfgkvolTFeB1YZEM3PX6+h0YHo4uljJ9CvT
	 ezngJ0SFUurnLk3H+Qx/C7h1snrDDvwBcoTFxhXhYnqIN0t9Zi0gaVvv8pFZ93x9Rh
	 AhJiz7o9GdKF182Ot/jA7bsHVx/RDake2HvhtnRAA1Y1G3t+Mt6Qfw9gZvUd4B+Nty
	 DhjfQOy0W4sNp0LOi21sCktCVNo9LlwIfa7QX6sAG93f3TdvgpZoNN39acuqOEf1mJ
	 O5gNv1zl99v2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937D6CFD376
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 17:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176452457358.23859.17903785188651638578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3065a619b9820f3cc1ecdb73fa5b086b9d76e3f2e8544533b5c0b2bac442b4ed
Date: Sun, 30 Nov 2025 17:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764524573
