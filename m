Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45D0F3C9EC2
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790660434; cv=none; b=GUd/xUst5lxSw/FjIgRLtVKlTl1CpXBHWtYwSEoNvW0nNfp+PHHbqxWY+bG20lxlNENK6XJhGELKzYQaATuNm/oIZi1xwyuF95c8Cjem9ujfcj+PT1VBjmHP44/ZYawR0h0mPQ6HYt7ub0HECEoOarWXlEo9u5mJQQQqvxIsT78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790660434; c=relaxed/simple;
	bh=056l8OrUrrIrTfso2Yeb2D6j3afQUGZ97fdCnrU26Pk=;
	h=To:Subject:From:Message-Id:Date; b=aowXDUoIYXLOsDsOzw1mHRYzZNJn7FKNBqIdIwZWk2MuqtHVoC8oRRd7OVZfHtxmflV4f66Rinstrw/EajWHRWeBxOckMiD+FYPzzUaE45owokFwjJhDoYkh0CKyZRzucfu6RfJKSlpVcd7fjcYuk0dwMM960PSKHQgsy/73IPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ev4/Q6Qd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ev4/Q6Qd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE150C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790660433;
	bh=056l8OrUrrIrTfso2Yeb2D6j3afQUGZ97fdCnrU26Pk=;
	h=To:Subject:From:Date:From;
	b=ev4/Q6QdgS9OGHucpcV3xB4H+qUEu3SoOTHqYVWV1NHP+zrVSSeonrSoQxdYuiB1Z
	 1dwKmXaDfZLuyU3H7/kUU+V9eV52jBaNnj5758NJ4TGYqanPKRHgyf9hjC9TPXv8qp
	 uJvkuHA5jzTBl29sPWrBvQVHMEK0gpRM8k0xvR0vQ5CTf3GkFwK9YeCMAsAKEHWayZ
	 riLHez79Fa1yk1d6cbkHSKDFGQ+PmEkUrbAxGHQcwYX5RIiEdFV4YObrG5DbZ/YsQg
	 z0zBghGHI4W7gv8VDe3pbjXlRA2O77jW/uJ+PwuRj8jyLsJ10bgGuWX3duAbHr72bS
	 gLG8mrtRMz4MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD193C9832A
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179066043370.18148.11824740235594154768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73b19b455368b3091b965e0058948ff8c3d9bc7107a2818e99b861d8e7638b36
Date: Tue, 29 Sep 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790660433
