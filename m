Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3259B1ADC8D
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746894594; cv=none; b=u2GzLBGy+EkytJJCcthnfvg9N5BcAl0dMOzsfIXZv1nZqhkr72YNui2rup1kAMS4ijEKsDLTOYsOmeshEjcVF1sqEQTu0FIscKu1H4MB8TFqSJLVD2xaGK2p+IGZiTmQQzTYdE0tvCnBK2rUYs1ZaJoSs245yVW5LVO8EoMSg6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746894594; c=relaxed/simple;
	bh=+j57xITokzXYJyaZvzzoci3H3qpEftKeBXyaZwKpiO8=;
	h=To:Subject:From:Message-Id:Date; b=NoTozoKAoY4iTKN4BtgL/ypwxFNmQ18KKmlNxHZbf2jp8ObvDsiK6YV6vJsDUJHtUpaM9JNNPIUi+O3y8AZ4C7RIj1Nkyad3m1fm06OZKQn6lBSJy9SGQCERig8ynoX9PwoauNENapncF6Ojd9wHgOOWdXx2T9CoGQALIZ0g0nE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MpX1RnXh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MpX1RnXh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E807C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746894593;
	bh=+j57xITokzXYJyaZvzzoci3H3qpEftKeBXyaZwKpiO8=;
	h=To:Subject:From:Date:From;
	b=MpX1RnXhJa+v9iWv/X64HDiM474ThCk8BtNV3Q5tNEuV0FvCcnuRMuA0Vv2rXTnFZ
	 bMICyQFjRhW1wDpRIBkw6zbCj0XvAo4I5cptjHm09q6WtqrwwhpHz15SRrWdFqnS9k
	 NvbmHxMoL2Lx9j6biBeiFr9o3C+6+VWHD3TdcQgco0I4ISg5ec/LMg2imx++Ydm7CT
	 e2av6ZzVX1hMR3n7cwxydg8f6iIogHVYsnVpRHK3aRDXNh8bgV9M/wAYgCzEITOk4o
	 z7RYvx3SWEjR5/0QECSCRfbFC3Ngpi5RI8ebek8hczb8CPMf1ddgca/7aylUdn2otW
	 sMrVBXUzGi/LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAB0C3ABC3
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174689459357.30288.8113842373730299306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88abb2b361e9083137a735546bab578a5bd92086922369c4bb6b1a0df2dc48f2
Date: Sat, 10 May 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746894593
