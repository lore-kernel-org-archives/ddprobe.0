Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 307A2275AE4
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762232394; cv=none; b=bWIFaJN6DgE8bk4nw2fdvS7g8PXIi0Ns8FFmlfrnvsiSIZYmvywe4JBUWl+5tCexngRD2bFH7qaU9uhKHeMduRObErmsIm/WW9bq7LSM8uTfekcvq2sQrs2r+rvOnl/peD1bxkBOLSRBtdTwizytToaSiE8+aiVbfupArXYTBgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762232394; c=relaxed/simple;
	bh=c3lBLnEyonHSGZXO9BCG5u5tIBfEkTp6o4Iipth3p5U=;
	h=To:Subject:From:Message-Id:Date; b=jLs1oNukf1/7esIes6gr/moPHqroH9+pZvN2mT/zyn8/JTPD+yk3kgyANqU0pGtpB903BlD4c2MFHZ+hNy0G1/2nyb7FPFWo83x3Nsytr/X+xkkQkgJ7XyKCXQQDvWkl9zBWwxUzyI6HbGiYpQV0SAcfQt9vk9zViFVAUkrx72U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y9fhhqj3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y9fhhqj3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AADDEC4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762232393;
	bh=c3lBLnEyonHSGZXO9BCG5u5tIBfEkTp6o4Iipth3p5U=;
	h=To:Subject:From:Date:From;
	b=Y9fhhqj3Z0bBnK/tNNWsAekQ+8VT7sc39efjTHUqdUTOwxyaAGHi+dJOhnONEYSN6
	 PLTIY87sR0wtV8ddRvcL0LGHwja6jVU3BQBBSLXVlkT5bdjQdAvpqMSkcAda9C+DPT
	 ShN5LOAIim2P22miC3CB1HT9LwxeveAwM2L0FYbh45m1erYe+glimEnQpnwzFV+Ble
	 INxvQh/I4uQr+AsBpIySVTAYtbM3gubTACg0HBRhkMx0xk8pnKLIehJ8Kx0E93g3ZG
	 EoyspRGaDVqykBWHuYobT+T+hCsRzMw/jAGuq0AnPXHViDHsPEPie4RgfbLpsKnfdU
	 Ns8bxaEt7Kdzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFA3CCF9E3
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176223239357.13374.5262520616365287396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbcdba0c25c353623d8154c833ba4483428982d18a29a023fbcb7e943a9afa81
Date: Tue, 04 Nov 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762232393
