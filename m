Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B39155A5C
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721823954; cv=none; b=d1rb80XU7s4QqNQW+dO744IMby5NHEVkX8NRFSMF9BNhcm/JVasQnop/cO7rX/XRDzVWUoc3t1GL104NBSkFcwyD72cBDM4SkonY1t80xJ/vU9b4r8QkDI+ku325VqW0aOz7wdUvMOlhRsSTJellI6bcgUadC6YolEhU/qzRrOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721823954; c=relaxed/simple;
	bh=9uxLxufthACbkNkdUKUjIKpMnRTYFlXghlqkzD5njRk=;
	h=To:Subject:From:Message-Id:Date; b=Sncq8C8SpTu2T/UA04pHndpZLSZJbZTOb6eRxtJrOHzmt3Sr5Co3u1H6SEmT1sBa22Kgikp8LmbgVbpLIsNMm+l9Naoxi5EhcsdAp3VSyFqWHlBNbUDAmsbh4GEjud5Hfs9+Uj/iCUvWdLdpbsfLw0dVMu/hibUKqFUDTUOrCzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZSwlT8pJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZSwlT8pJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A68C32782
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721823953;
	bh=9uxLxufthACbkNkdUKUjIKpMnRTYFlXghlqkzD5njRk=;
	h=To:Subject:From:Date:From;
	b=ZSwlT8pJaInwM9O3UNfbLXOpl3VsfM+d7Db+mUWIyiBfXnXYoeh2Kd4uFeISI/9tB
	 FaJbsv2z3qjhwYvfKGTVvVI2VuQ7DsHQoR27C/ssG8d57s78x5smvsV9IgepQL/pDX
	 85SSlrF3BaPd3LTh+FBocVSO2lMHipffgle0PBo5cDJ1slx0Kcp52NREVFPUypl7I6
	 QVpUCB3zRQEfyVqngCnRhz8QHfLF/33W1TTmaZGg8rSwl8xaZQOQ4msD3xYA/l1d/U
	 pQizqm4xd+f3X56KNBbsBvKWq4XYibJ2gIXkl8kLKJf3Y495Yr5DIEusveHwaiBjRY
	 DnQfVvDExll1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FEAC3DA61
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172182395358.25190.947751115164442932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 992220e32972d809ea70480be1856b57dfe73b74a957718017018c6b9437cb9f
Date: Wed, 24 Jul 2024 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721823953
