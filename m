Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FB611F9A8B
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748444394; cv=none; b=HWkpOPKdkoA463FJ6va74Su3tWgi/Xkw3bRKeczNQwtX8TtAOeBnkvrDrP4A8AZdM/oZrBRJExLyGv8xdklMRO1DU4f+0wxRPpNkdIARTCZ03KP1Lv4pcDU29LttR4z37+hx2F28bB/9ieee+sF0YcN6jGSyszu3iF+y4L9LEhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748444394; c=relaxed/simple;
	bh=Fsljae0zOn5aJq3MJtizVY4D4HUvsfCzz3SjEG6GYI0=;
	h=To:Subject:From:Message-Id:Date; b=ojf8i05EUGzDfh1etL8miQInHXQCzMXEJKrReb56D+WJT8P/hygQR5lVPj2acO8I0sM8uwF5omqQpROjOesa8GOv+IkuMYX3YWBrjdy8A8P1LSX8p7sTt52fULxZcNrroCh59zQUQgaoviBW+QIyygN1perOdnG21nB3mP/OGXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OGnaQEb6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OGnaQEb6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A510AC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748444393;
	bh=Fsljae0zOn5aJq3MJtizVY4D4HUvsfCzz3SjEG6GYI0=;
	h=To:Subject:From:Date:From;
	b=OGnaQEb6owY2UOz8iLqPf7UfU3+ypNy2LKFrBMlH+ozx9GJ4QaFM9O4IZz0eVsQ+q
	 6PZcaaLjodBA56IEwjqiUA8JJZLFhaFf4ZaoH+0GZ5KXFZmqFALYmEYU9DJK7rVKV4
	 5jt03mxWYnCtGIr9qm9VUI00a24pS1KJ/V3YfZQseMSos0LxAm5ObgfG7Nwfq6JR7z
	 VsCNfa9s1nn8K8YTPwz58bz8G68npa7W0SPcCuKssdY9vCT5q6CTtqb8H1jfTkcNso
	 kiyyGgkB4yIDkKk5jHG2if0FO3TzFTm4u/imu9QBPHsediDXzI4bkVIDFqWAPLCb6l
	 5LauCMj1zK4Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9231EC3ABB2
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174844439359.13718.1772492750132593538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0fba003757fc332cadce55dcf5ea70d3a140643683e52f94b502a21c9a6fec8
Date: Wed, 28 May 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748444393
