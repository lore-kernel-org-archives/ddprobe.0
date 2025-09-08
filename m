Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17EA1301487
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757344794; cv=none; b=EyRFCon1TUe0yZ0pbaR9KrVWNSZOWrE/oBUYXthNhmZxhjOSbdU0cpnfujf0Ec8OH3vV/TV6kRNE4S+/AbQv/BaIWTUCkCfMK09CP24gJ2D+/BCZFycUV9hsduyoAE5HcIwMTDlNWITQfNYIHT75K5nwl1xAoTymy0cv0JJk5io=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757344794; c=relaxed/simple;
	bh=RA+EFuowWwTlIn1d6uBJr1NQe518DI9a39rmmt8rYz8=;
	h=To:Subject:From:Message-Id:Date; b=b2eXcoHrAeVZkPOY2ZwDdwBEwmPUeFX2p7MYq69SdVnV0zcRIEwzCzSGf7fa/uWVDZnninG48LKzmTpcaQ3uuLcbm7HQ3U3CYxX+1URhuiiOMtff5tStKhxDk6hI7ASnf6GtSz4c8++qS7gRqW2hfFXgHVxVigmC76SOhB2IrBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mSGx9kBS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mSGx9kBS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E26FC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757344793;
	bh=RA+EFuowWwTlIn1d6uBJr1NQe518DI9a39rmmt8rYz8=;
	h=To:Subject:From:Date:From;
	b=mSGx9kBSVvdl3GRLwWOLMv3QUlolNt9TExaH2mcGv24csqs9zQwcQoJCzJxPq7fb1
	 1kwD5M3TV4xoV9lOuCVhtjypZjA/4D/h51GeghsrN3oTplA2fWdh4dcTDvgAplxTaj
	 VG94i+GRNSXGdtrRHB01oONexExy62xsPqJisQ5ZnsKg2ozAJ80QrMyp1E0eAmraEj
	 Gq5gQc+b/bspJyreR2pDjidVvJERrgVIGWkfTJQEKeEjm6Hk7pz047cnHegwwNBvY4
	 6YuG0TN7rQdWEK7WdVm+Tk7UQ656qrAfiEcGCmsBSQV4z4x/+vK8ZelALVGxV+ok0V
	 dUlGjbUUxqzuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F15ACA1016
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175734479357.10839.14742187071446726990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61c5d20f19e3c6580f6ca727c47b2669f44e950eb41d162eb253f1f072874bfa
Date: Mon, 08 Sep 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757344793
