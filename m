Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3723716426
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726320354; cv=none; b=FpgDxyqWHN0i1IbpqiMD562dRzXRyAKAMMBnqqfRv4u+JZsn+Bs8bLv5NU2FAWSXUzSZaxaVjxo7ndISv3SLFr8ZCDG8Komgszux/oOyK9hgdiXKi9BvjFXx0hfgrgLBYDbWzTyKf1RJWfu2mRw354oSO73MCHQEo0r3Giyk684=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726320354; c=relaxed/simple;
	bh=7gYVonmuxvg5xG7eV2gNNMDtVJEr4RGswg0L3Qr8j2w=;
	h=To:Subject:From:Message-Id:Date; b=ta+jd/BjrRNHKrWgPGgD8mHYkDtFEF7nJz8Cc7JbnS0gJvlDa8Eb65mxHLGIQN+2wqRBSG+TLe3GFf5jW9GZ2SxwXC2nT2QTow+Pk4oVU7R05kU0WV2AGX4wgvuYA9FC6jBwLr82fehjnpPaCXWCD7Ddw4x+ORf2VlbmL/0ZrI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NaJBpWAb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NaJBpWAb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3FA9C4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726320353;
	bh=7gYVonmuxvg5xG7eV2gNNMDtVJEr4RGswg0L3Qr8j2w=;
	h=To:Subject:From:Date:From;
	b=NaJBpWAbTXVwB8t4BU75aO9Ky56a9yQmjmHZoTgY9j/LYTbH1DGfShwdQ7caUV/1s
	 /wpZjUTAm0mGSxj0amwGGA+K45A0ZaX836LS4gno62vQe1J3mDFkQ5/Oc2SStYLZPP
	 yOtB4SfgRxYo/aiC0ap6tAapndxxGKgYgntDE/zonEw+AyfuZ1vQ37ztEJOVgYCJWB
	 OFbcYI3Ik6bpNu3nBlFjzdtw0s5Kovjs6HU0ftxlPTWNCW/HxxFgNV+P+rO9bxPjzY
	 yGtnRf8Lry5QhMdgT5Gp4QKh8FgjbS0dOXO6rPUtvOWUccEEg0GQudZUP0DT6hEoNe
	 B4ftA/ecAgSYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3517C02197
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172632035360.5641.2530966880647490780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd59c801ad1891f985483f38bbbe355f8a2bfaf575e1a4eb1022261b78ef79a1
Date: Sat, 14 Sep 2024 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726320353
