Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 358E1146A63
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724788554; cv=none; b=d85XhCaESCYZb2ofnRNwbJjgYHatHRZ77JXRrt+/baeQ7dIv0LUv6IQna3jq8KA9teBgYF1udizzNpVMKStPA7BNgukCAXVFD6GXQp/sp4tqa1x2d2am2jbnx0of1Ls6CWWrze2Lp2i31DtVsiGMsMhMFkLW50HLg0FzJ4PJG+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724788554; c=relaxed/simple;
	bh=ZQ1sza86kdGP7B7Yiyze4WXrOmkc/2LS2aRhwMEFg1A=;
	h=To:Subject:From:Message-Id:Date; b=bLp7DEDUmBxEjLY912VdL7kI9AEONxl8GM9ACj6Eo26VhXOidd4JEcrEn0bIiPr9pMnPbtVsBJN/26hq4dWcBNsb0m/RHEUGKBTJnWLnbf266hSi19+/8H/J20MW6UloH0TZWKnv9vR83jpVxSygWj0eXKn4iiSrGnpftWldSZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=miIqiSt2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="miIqiSt2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF24DC4FF62
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724788553;
	bh=ZQ1sza86kdGP7B7Yiyze4WXrOmkc/2LS2aRhwMEFg1A=;
	h=To:Subject:From:Date:From;
	b=miIqiSt26QwgqIHUFfJqZFae710NPKggM1NZX0EOd483vT40VUawvBtTnAyDxasZ1
	 1quuwEqhLyCBiU9cM/9tcHuqRmYVHkTVk/4IeQzOMsVrU7O3FavVwZIErIMW864aGr
	 iRVkR9N7/hwnF9lb5HGv18dhOrUoxYuGQXgimrWVqx8JtT/EuPOQO5HMrwiNfalm5H
	 nserUIZr8/SHcabDGHML5IMpM0j0IsneQN4wpthJiMIb4RNaDoaD0JvgL19+z0Bu/R
	 CKsxjjXiO92YsusVjGD0Bs9qDLPv7Brz+OtvcYZN9Ozy/mEFdux1qwFCIE3upz3Rwo
	 ThINcGPi+ttkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DE65C54731
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172478855361.23536.2690422002417199310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c34b9e7bd04498c0589fa7be153a0438903c2f9c259249466637d1ba4bb47bc
Date: Tue, 27 Aug 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724788553
