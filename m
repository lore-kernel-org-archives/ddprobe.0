Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 418DA3CE0A4
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 11:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782388654; cv=none; b=LezR4tBNjSIZxW5rNZ5fTp22qQMXjAYsa8SpaHrwP9vhPi7KktDi8XiT1uaHkvCLrUMK/yho5m0j7A+YcJzPPdWSTbh+uu+5ytBMvJeEJ5wZQMZ37SvCEgDFwvmXlkK94DQVuLET1fK3OJzYGxc7iEWjT6kUH4wU/SZRRg8B2KU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782388654; c=relaxed/simple;
	bh=PWNWaHxN1NDuonMI65BOU4eyAEn+FY/DSVyLopceYm8=;
	h=To:Subject:From:Message-Id:Date; b=bmb5+CrSWOmKVzq+IdLtLjfYoPi/GBYEb5tJ34vCz2qbpI7rsMK9Y7JrrxTKqeW9xYEp5iPDUDFXWUbvcD3Ye30M5x17QnjDkokIxggKKwiKwniVwbM7qYMTHTNFc3pab4G8RwkruzH07CE6KSixIt5ZiPmu0/GgJIgTKvkj0Qg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=am/PlYSc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="am/PlYSc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6F29C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 11:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782388653;
	bh=PWNWaHxN1NDuonMI65BOU4eyAEn+FY/DSVyLopceYm8=;
	h=To:Subject:From:Date:From;
	b=am/PlYSck3tf5jJpFFlx8t4gXTPUcUo0XYNP/lOrfEKZHxWHPqeFBM8kzxm8/Idx5
	 EinFU0Sv8Kgia2ZU1uzJgepctOnvifQRxWV7/GP5hSFJrDhaz8iEzwBtmkRArZ/MKF
	 OIY9pa1Hh0j+vhwdjoMNMvG6RM0tNLQRE76OjY13Pv7U20f+H6p938HMDu2la4sV/0
	 0J9ryyiLymaTfO1yd5/0KJKHNncuNDUKCAanJ3Cbm4VFX6O1OGlvOC0QKXV4Ber/ro
	 boZQkp1CfpcGuBtxv8kNzzzA+bvyN4ht5HAVajMLKPizQYU/xsyUMM3/+HLRAyKRYe
	 bdO1UELNNxdkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B77F4CDE001
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 11:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178238865374.8048.15492605699085181205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: befa3be9157fb67e314cdaf50efcd18197bd75a4e766026b5b83935f92b9a4ee
Date: Thu, 25 Jun 2026 11:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782388653
