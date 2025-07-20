Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 249031E3DED
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753013394; cv=none; b=f6jQl5wQOXxmZKvwrA/P637jYPM+wVIeuDx6nIp9RePXSTB1D+dMvE9vI0BpGSpSNcnHSPqGW44vz/cMCRz/gt0dSLsuDZHnnTUrb3oDURPky3wDrI5e8a+e9qM7ODxt/x0VcKk8+5eLnZS93fDwb2mZd17PwnoENNIAMw3VP7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753013394; c=relaxed/simple;
	bh=DxIq9ef6TJ5jOk2gyj0xkssDPJglltQVd+JHydxIJRg=;
	h=To:Subject:From:Message-Id:Date; b=N4A2foAQ0shTNnKGm+31EixT5KwMa51Ts0DvSZPzdLwgOiJ+o7YpqxjBP7msKuJ+U3rViPQIGfF5jg3U5ZmjxLWUQ0YC59TVol+cPo5VO66kC6FurEQAVUOkVL+fUWbhwQ+d5xa3hgLGqIZd0MFFAG7nYwKTEbDEIZ4ni8NmXK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SR9yt8G9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SR9yt8G9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DF0C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753013393;
	bh=DxIq9ef6TJ5jOk2gyj0xkssDPJglltQVd+JHydxIJRg=;
	h=To:Subject:From:Date:From;
	b=SR9yt8G9dSHr9HLsovqSZbZsWs3n8/C0tHA5U1v1uXn8gZHviMKumEGWVXkZ7LMb1
	 avJVyIeoZBx/dd3XmIatkshAX/h/tnf60apSJTuNL7QUilgvTcpTkLMI68mumwmr0F
	 E09uCwtJPpoWfpz3A2EtafB5qAg+C4FJJFfLjbLpiokjepSHJQWXBr9QK0OcSpSvzk
	 UtEOYwVWkmOLIWDq47HJ1O9uZa7hrr6a3yG3VIkYAgFTJ+JeZR2AEz3rFJhyMxTgm4
	 STz/SfUTwJbTG3XVKOjUbzFR+NoV3zeC+JQb2u5gqPurSfYeVTHsKUtFLkDFfq3XzD
	 Akf13pNkISJnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934EAC83F22
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175301339359.27453.5908097464346219240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 403bcfa5863d7deb1a2dc623ea549fc2eabbff49d6cafc3cb61c361088c1d585
Date: Sun, 20 Jul 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753013393
