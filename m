Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AEFA28F922
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749047994; cv=none; b=hFJSA5t51n97EutHIrzwQTOTPdL15LbHtyfqKJoYbHnSlZi0j4PtKeOAdcq8N+wOnNBuURe97k1SOuqBPDz9CEsP45CNdp4yBBhQGZDmbpI2lE4GPPyqemirLId/2ETHgXxtJBNd8s9xQ4hkpcCNcuXI3e3PKuDi+qWdMXliPyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749047994; c=relaxed/simple;
	bh=nWItj7F+gDZNRJuNNSAaOgXel3WjCxjwvTrUAOxCDvk=;
	h=To:Subject:From:Message-Id:Date; b=ZiZMXY57WLeOQd/x5VOVSbG6tRbWiH+CtGATpnJx3e5lJF2jl5zRQPQGer0SxSEggveNVXQdZQGfy9e/8P+boR8yQ9ZXMHGws2+DiBojtS/5hpEPu/JnEE/Ua0i2vH2xsHiEWJafI9WRoy1l8uMA1jzF6CDXXEOpkPz2DccO3N4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=COwqlKCL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="COwqlKCL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CA9C4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749047993;
	bh=nWItj7F+gDZNRJuNNSAaOgXel3WjCxjwvTrUAOxCDvk=;
	h=To:Subject:From:Date:From;
	b=COwqlKCLfNOhLOLqUC8ulrADA63Vv6O0cujI7b2B0FNEJdsHrI8lh+tidbqUdPB7u
	 3kp4NwE8GRA7XS33CFP5/SyEQMzkkTkTfzIhgBgIZ+ciDy3k+1kZgbbu6/l4DLFo2v
	 akgZCjHlbEdwD6koVqoTAR7+zPDo/1UP6XqgADJ2UM0vcJEaHFSTht44dYHCi5z3n7
	 ky6wEULIRA7uYhMCG78bTWh/r/p4REWswpBQar9HTEesOaigJkJFuMULb9NkS43oVe
	 KppxXo056nf0732lzNSponImx0+NSMBh6t462f/kW8VfP3OdefJgX8mad869gf+K6/
	 qlk/F+EE9oKcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CD8C5B543
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174904799358.12106.14108124088102815555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d09ed6608d771b8c198bd998429e94f1a2fe7ca5b68a17bdb1437f0b4338cc8d
Date: Wed, 04 Jun 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749047993
