Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF7082DC774
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746080394; cv=none; b=TXGPXHV6oli+y/pozNfwTi7n6gS/zg8n/O8oBnG44+3YjyVDqgtEBQdv4RgZqMwutmnR6hBTz6y+65NMUSd+bycwSPaQrSTi2XhWaoacFP4mC+D5zdDfYi8LvgMoAD7ML0vW+Zg30ufn/uQ9C35SFPzWQSc4Av/9z4XOtyRCwh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746080394; c=relaxed/simple;
	bh=fYBK+R03KAfq/10RYSyDGgAIOJv9MQchniP6O3yeCRQ=;
	h=To:Subject:From:Message-Id:Date; b=ZT5SYnougv7VHld9mbFMgaX95ndwzP5ShtLzw9uWgi/qAeAIKTWhk+RiAnxxOyPEQWUUJYpvGQQOEovHpOnr+4dxU/ld8fll399exgCcwBeaPMegRTEzIBiXvcvDtYUficJDyt3gkJAkOOrSk+A3k5S0cdaVV8Ilu37PqDLUjUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IKBrtcYl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IKBrtcYl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2FEBC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746080393;
	bh=fYBK+R03KAfq/10RYSyDGgAIOJv9MQchniP6O3yeCRQ=;
	h=To:Subject:From:Date:From;
	b=IKBrtcYleK73CLHev5jO542YGumz9WJd84awVktD+ab4f/l+8IRHDu8JijBdu75c6
	 bKmd7sQp9N1VASD26Gmfnr5CzQtEZmBaeA25EIcmWZEin4RoN8RNMbfurPotMdXeWE
	 mT6jQq3qIlzsJ/juakIyN6wF/gJzmpXKaa5iaucV6G5nfOAxbeVXn43YlqK5ggkoUT
	 IrJrgMNdwrCgr8zLaU6IoyjeurXn09UmFPnvBPtxyOaolX1otT2Gxg3rY9WagUDAoa
	 8yh1JhaZ9E24bD1Wx7X876tS5h/srf228QkepTGkIRXoPgGqjC1tWgEsjAvU1Zllbl
	 9Po0LX7tduc6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D83C3ABA9
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174608039359.19871.16036434237255440091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e75ed3a1525855396aad6e3682e8832428e907b51ba8f332bbcd6e64f8d6918
Date: Thu, 01 May 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746080393
