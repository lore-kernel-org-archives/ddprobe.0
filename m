Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6A811DEFD0
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729182953; cv=none; b=WjYS4LZPBZt++9L5QUKFyEcfc/6EAA3qlhWo/h+eC6Zpy6fUT6VRZZWp9lNrag8B5oELpu9oilSI5NLndZEWiGpSxU5Z2kvwCbAf2EKXblWJHI0ZgCzPPkl+1Nc3HcLE/Yy7j6AZpl4PX4Q8ScHy4TG1ZUAUBXPk28awu9BNW/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729182953; c=relaxed/simple;
	bh=EYO82ntQWuhUpjaTBwMFOkP8LboFKofDzl9bFRHZl8Y=;
	h=To:Subject:From:Message-Id:Date; b=RhgYCx9GABzXEVMiGxKtQiDSRhr5YhxtaWN1z6/LnZgdW/Cd77U+MmFGnftONW6TVe02Au0/82LZrq5rITNvDnSxnR1uraI5w+e7j6C3ZwYepapRuCYlbaA7xS0XhoZJjhzPMvSh+4s+ZiZPjXpMBjo57UwnRf1EEx5nAKFQge0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rr8jLxhR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rr8jLxhR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED9BC4CECD
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729182953;
	bh=EYO82ntQWuhUpjaTBwMFOkP8LboFKofDzl9bFRHZl8Y=;
	h=To:Subject:From:Date:From;
	b=rr8jLxhRbdizRpUGCGKhepLjEa9fz43qBdS6aI18N+Op/yCnPRNsziuenJHKyJt/K
	 bYacD4Sa3BT8gvWZesXUkJvWH1MVZlMHhwcM+TourOWkDV/+1UDj9xPpe4sZUDL701
	 I6PA1iHue4OQX4sHIntpdtIvDTK6MYNAOjSJoHnjy+qaoB+lZz3AxmGFCAyiBw6SET
	 JnGoe4KscyWp7n6YwmfqukYJu2ne1pf5TtiJo/P3RWIC4IMuq6wmNrJrvqvrZ229Am
	 hMuvueRVY3e5lf/xVhVCvHOMwfLSrdGtxpNbwlPAkZD5r0hMobE/7UZiLcXDDdPxm9
	 PHTEh9yq8+JpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91347D3C523
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172918295358.3466.2715111118062208978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3ba43729544a6f5655a3d686b441d9ee3efe0d17ac50b8001877e3e06a093c5
Date: Thu, 17 Oct 2024 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729182953
