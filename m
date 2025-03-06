Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C1FB667
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 10:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741255734; cv=none; b=BQ6JTZcHIArv/kragaLC7zFyWlBC+txHfw/aNweRDPxjRlVxbqQDZZS+xisc72MSrY5xXYdrQQozRsEIRmkcgVrJxU18WsdjWm0s6ygnHG08Fau57QZp6LbjepYHqynwUNIXahogFZODUan+xuxNZbKDbJfL5pynHt8G4i5nWAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741255734; c=relaxed/simple;
	bh=RsoOwu8t1zMnastOgScNdQPlbwZvSnYq5IcjbHKT7gw=;
	h=To:Subject:From:Message-Id:Date; b=WgR7XiR7l460NPDuqhiXvWzK6u7fp9IkCzgTniYhdLW4ALEotaqHQ3OP6GAWH9Kg+RNYRt6NdLvZCxFSDZB2oTYn8z//lLQfjbGPGDnHD9WW87X9Dztrrow1WlcUtwIpB3W1vUIOixZeXsc8F0Vtv+7C6krKZX5AA7Xm0/QjHN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oe0YOCng; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oe0YOCng"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA9D1C4CEE0
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 10:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741255733;
	bh=RsoOwu8t1zMnastOgScNdQPlbwZvSnYq5IcjbHKT7gw=;
	h=To:Subject:From:Date:From;
	b=Oe0YOCng8MkP9b4szSB20CsfWkKiba0cESGFgTqVFcZi1Ch3Hnl9nLaKSe0hw/P55
	 ifkpgCbuVOxBCrrEcWPZPmkam26GcYN7u6UYcJgbnfo5qIaCkU43jsJcG6qNfzxeYr
	 1dUfd9uVTgzIucjcfU46uAaHur4FIdlds8XvN9+lFE9Z5jJ/v7kS58wUcxct7kjgeJ
	 hdyS6JyykWgE/k/NZt3wKFZBQ0cFOkBfkdlV/G2QoXrI5NK6D1zz1WQGrq4NZJFofg
	 hr7P3VWP6K0BNKLgTfFjLomiaev+O4O4lt4lF4IogNFqvB9mftEeuZpW35qqeQX7D/
	 B8Mo4WTok8cFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DFEC282D1
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 10:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174125573360.31854.18405301915192300076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 383624687501986f0c18b02e7bfc9eaf9fc911a974153333611a14c39e6df012
Date: Thu, 06 Mar 2025 10:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741255733
