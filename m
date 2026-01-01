Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 171422DCF69
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 15:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767281034; cv=none; b=W0rn0xNtv/aLdnlqgWf2OCsqVojzHz0UEQS3e1eGGQ36M+7Sz6M4uV7ixZWI+iT6NtjwX+eTRgYeYKBC+lCp0FrPON3Ly2Z2Crh2JJbkEqY5yCAP+itCKUS8bB1wSwjRRX4J9Fedz72BAoKRS2DNyr5INSssMSnYyzqofBroaCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767281034; c=relaxed/simple;
	bh=E/wG7psV76C0QeH3c/C5GNCw+CXUVCegbPnb26RC8g0=;
	h=To:Subject:From:Message-Id:Date; b=UV209AP5AyA/yI/2Wyl3yZkB7rwkCYwhfAad3DkRbGzxyCKzHYWEqLGyuLvyDrKViJ4Uj+JyKyU5YxEIEMFXY/BwBiclKKxuV74nMWH0VAvI/WCjpvBiHKj7ockKVSG1GpoxqMArWDXijQJbjM/eGi1WAhTirBispyxhUqHXBnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oMXHSuAJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oMXHSuAJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DFDC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 15:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767281033;
	bh=E/wG7psV76C0QeH3c/C5GNCw+CXUVCegbPnb26RC8g0=;
	h=To:Subject:From:Date:From;
	b=oMXHSuAJ0GGiDu7gkL4LE2fWCYSwHngv5dI1SM3RxXCsbwf6WY5yglPglr6M2M6Gi
	 4omENiXHXEAucdc8uHfRdP9Qj9kSp7nh0h3xLIObzlmJypVCyXuv/1OtXypbbSMCzl
	 Ga0pQZi98lYQZVH9AC8LRYEjSNucxxVE1n1MbnN2mP041wlrkuegSa7CldSIWZw4In
	 Mchvhwdk2iqzNfWsbM1aKAWiVnbuRzuUdR/z5PzmKO4yktTjlNqrLjb9oAbQEc6ymp
	 gKwnnyglrZyFATfkNSePmFPJqBphMw8qCEcVvsudMZ4Oh/CLmv16a7se2e5BoE22ov
	 U7bdEFBpd4YTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93288EEB579
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 15:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176728103359.13515.3437219385955034024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e33ffb18ba270f925769fe620ee9c1ae5e061a2e79c4731759ee9a0e169086d
Date: Thu, 01 Jan 2026 15:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767281033
