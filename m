Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19C6A3D4131
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 08:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777365454; cv=none; b=PrSpgR2uh1Edf8zEyelvy37RGeSiwmC6gVVko5ZIfYV+HJ+EwCjn4nW1Ux8W8pA41oYkivWTGVNS5zN7jW7hzjyY+bC8VFkb5CuEHUxy3sJv/udqP/Wk+tO3IPnrKdQbntL3Po1ORjUuyhrjTCsx7IPAG57Th52qygLPTROhWNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777365454; c=relaxed/simple;
	bh=J+Ie7RsVXmQpmQ3Xvt4CFY1FxeUmACxyuvAjdK3nuIs=;
	h=To:Subject:From:Message-Id:Date; b=RWK66lBeT946ZV3q44SfmYn+fsPpmXNhQPLbgKI7IBfEdd6No0DoBNgX/xZaw6T0ipX4HJPs3NLJ2zYJ9yTxm4kYiMXNdp6yD6vYAUnIBhGbYhW2+JXD9m02UItnqZdBd8DhtetDhrQyH7ivaRJcYVYaKc8+o+nqAKagq6z5/CE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DegIbz5Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DegIbz5Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8617C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 08:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777365453;
	bh=J+Ie7RsVXmQpmQ3Xvt4CFY1FxeUmACxyuvAjdK3nuIs=;
	h=To:Subject:From:Date:From;
	b=DegIbz5YRNqZrNd+xHmzdJtrHWcuURklarWvsEcQIB+5aeH0Oj98J4xy3PYKIQraI
	 nAKRg/CtGoqU5W7/At+UFPElspEm+39W4dDymn8emB5aG4gsbsS8TEG5VFiTaTZ/HP
	 cEnis4dXHoZVqvlkqvA9ryTooycxJ1szrV/CP9ZvBiWW9pu04NRtNkS5Oh5jKCWdgI
	 poFZ6DlVR0zqsAEdVtvJht6yG88DC1XzFuMI9+Lvc8NhKTTVbntvEovwzXwWwxSX9L
	 KY2phGblagDMUNxNDdJbVTIZQkgE+A7AGkPFtWczO1OTcEdyrKdbi0i+vRiTLNbs09
	 ARz9ndhRTMiLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8FE3FF885D
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 08:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177736545368.5218.10340284117079890647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 451c72cd7679ab0632c35f9acb01b612bbef46a394715e07547cd9802295c5db
Date: Tue, 28 Apr 2026 08:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777365453
