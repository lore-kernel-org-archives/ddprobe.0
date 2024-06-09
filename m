Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D1AE6AB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 02:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717901243; cv=none; b=FFcxSpAzOZu1BK6+/TIj/pih0EIqohNWObHXWhhJQjomTnad41ke09il0hI5aGPCsgbqpeQPEhNn8qHm/Tg+9utxWD112uVIl45vIWq4gSuvddpcLZ2eFR3IB2hFDl8+QKupM1jvb4VBuyqZyf2a5rV50WBx8niR9QLpj+6+zSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717901243; c=relaxed/simple;
	bh=NexxCYMVQ58xJpERbIj7g7+eQOrocE+vMRPigmKuR/Q=;
	h=To:Subject:From:Message-Id:Date; b=FWGnsbau+gmV8YMyAIRYeuPseM6CAozzrXJ1gA5nMcIdQgt0XIMmJXUCT3S1hw3k3JGhpGdsImmMnqVXA7TU3vpd10nh8996J0/L626BjGezY2cmHVXWoT1MD4WjdRh4pjgV1rX0f92jMovtP1cxUyit/0VOwF+025roMOSAxN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pe3pMBBP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pe3pMBBP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E756EC2BD11
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 02:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717901242;
	bh=NexxCYMVQ58xJpERbIj7g7+eQOrocE+vMRPigmKuR/Q=;
	h=To:Subject:From:Date:From;
	b=pe3pMBBPYbHNtLe9093Qxajr+u95UynYAvGpprn0kV7hMfZm5l06SquQ1ImgW34rZ
	 qUMf/o/ExaVgIbpf5K7+HXK0bMXoq1Mq7n10ixup3XdhAlyFq/Ejh7alDzXdtJyNm2
	 CGmhMgmaHFqX7GCTDBxM8/McqtepcivmHBowgJ/W+8++Mtr2a53cxkxMTZOJ9PVmRi
	 So4gw5HRxWkHfH8Sx6X97NEQOnJ0nMh0FVmgvZ3OWZx1YFGA+NG1H4IQzaXUlAvvTx
	 zns3uARBTn/mEDw3D16ZaqJ935jYNktLTBD0hhymhBzRCr5/mVlVirbS6ltv43oS4X
	 JLOP2AIokUuFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC6DCC25B76
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 02:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171790124281.6547.8368918952277014572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa7201cf848b702b5c7757f33974b13356a3f8a27c1b13291d8975e429c4a082
Date: Sun, 09 Jun 2024 02:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717901242
