Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15D2F1F5EA
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754077794; cv=none; b=CL/OFIrMhLTUKvo9/MJzhFAZClfYupNJ0Dw3+cT3AbB0J1XHkWVqOKNV49QY1bwwJ+BqztuJDRfGxA5MG5Nx6cBaSaYeuY+i2w603eLQInB4p/Pbjq85lu33NnqD3x0i9nRhDyi6CHlbPCIxNNbXNsJQWuKlsKMyyfWvOdAN8Nw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754077794; c=relaxed/simple;
	bh=GIs9PiJftAloJaxmGlZ8YRuvkTwNbt9cGn7AYQHwFJ8=;
	h=To:Subject:From:Message-Id:Date; b=ZkaotlRe06nNsyTrNaoX6GFNKXXUH3NVXL0dUo7JyqXNPNXwGUgtEYmF987ViwS+6v72s9ViSzStg+PXLMv2H6hBTPDpWPe3oVYeTunb7suLaE+Ltrj2R5XlEER+IHCTWmlOb1OwQqOZpFVaBt1IMU0zvOFUnhvl40LAL9Bq1Ig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JbN74e9k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JbN74e9k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7AE1C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754077793;
	bh=GIs9PiJftAloJaxmGlZ8YRuvkTwNbt9cGn7AYQHwFJ8=;
	h=To:Subject:From:Date:From;
	b=JbN74e9k/XWoEdpG3JjP40nK/sxLJEt4JykPBI0VQc3KYLoNoS8QvUsH7DuiHbM0+
	 1cZPJZwv2ObvtpWwwdTAnc08RiX782PxjxtZ6DExGzSrDw/kZQQnHUdQRNEhd5X5Jk
	 uQFZIQ+GBPXHO54s8LDiZLxI0UNCOE0S8KLEgHGbF8O1Q5cFuxIF2I1kPbxRFuQxsq
	 7PIgpI0WbIOq3vYpgX8cIO/yBCxyDqR0HEFVYyrtldhXGdolaGZJbVdLuh0XpmV+Iw
	 Tgeo16OFRPbsp0YFbQvG79hvSb0HActENHDueOKDo4XCLiMQV1lBTwhQ4IREx38Hwl
	 OdZDRn1O3TotQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E33C87FCB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175407779359.9855.14789937134509986488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1c7f72454fc4348aab5172b761ed8760132a13e9fff6eea68db8736d37e7103
Date: Fri, 01 Aug 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754077793
