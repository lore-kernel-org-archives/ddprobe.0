Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 244AB2EB5C6
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 12:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765198374; cv=none; b=OVfOiF52hJ6LGOM56r8+sLbJYCFq0w7XEvnXo+j5yQq4pcR3Xl8D0yJjgWjY/j/b0vkJ2h0mPcO6P7R0n2sJNEa/VMm7u6OxVza+GY+UZwZlDr6D2Fwj+y883tiyXbu9Ev8dWkl8hBj7ZDNW9cbxXJDbMEBQTV2mNQiEpuKO+i4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765198374; c=relaxed/simple;
	bh=GW7FKJBwpSdztX+XWOfS8liAVrLfceIISH/4yrrFNM4=;
	h=To:Subject:From:Message-Id:Date; b=g2k76XXhlF+Zad/rjhjGyhHAy41Wl8hyyioXcC2tIJBmqvaeex4mJMZq05z+BJwTelDV9uIKPYaXCyExs0W+B7ts3JC269uONgKy9RKTlbtgvxIkkHwFtFy1PCkdWALq90XK2wZhqzf/DEkuTSRhZT4vOuXUwftVWqbkwCRe1+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pdLEe/LQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pdLEe/LQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3388C16AAE
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 12:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765198373;
	bh=GW7FKJBwpSdztX+XWOfS8liAVrLfceIISH/4yrrFNM4=;
	h=To:Subject:From:Date:From;
	b=pdLEe/LQjAP9iGDz8pFYVE3ptifnb+zIEmTGPf1w8Z7UJvsnr39NK0B70ZoaCg02Y
	 LTSHGUOFVe8EHGNrd13z4dZxrSyOrkfOzE6kDxM356QrME9SHnw5+MC79C3ENhifVK
	 1uSvd5vn9wHc9pNQ1vmdwUyMWryu8l8v0a871oFyB3CS5E1s4dzOkQALSIA9JoKQhG
	 1k1FcjbEv0sNDiYWT1nYN9JLX/+CuH4LnQrBp0i9vKkWROkG+zBbXYTh4TZTiCFF80
	 2pL7nBJ8hKM9OTLHZ2cbHzx0eb02dQqSbC4KMfRJJDLBgedHy72fxpkLGM+X5d9Se2
	 KE0kh5FXDO52A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9142BD3B7E2
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 12:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176519837358.25009.8293127447038480008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da476f9851cee92da4f46535f3719a0ed97ad78479fb555a52ac06f281a4d06f
Date: Mon, 08 Dec 2025 12:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765198373
