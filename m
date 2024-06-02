Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50005EBE
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 07:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717312523; cv=none; b=MpXm9Dwu5xjc0e3ezH1TNw3XLLyBmjb3dsI2m2U00hrGHx1T0rk6qi9d3lubwCFK+Rl0SaiwEQc5jD0erEIEuyE1dLNLoJjvbJzzLxjoz67qoGiGAFfco+41CWaZLRnMpe7N7TffmFBt43E0xeNwx5fIamD3lQ4+IhRo4SCA6BI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717312523; c=relaxed/simple;
	bh=vKUcfAgEe9gvMFN4qSBlybGtzEVGOQ+M5Qbju1oR+r8=;
	h=To:Subject:From:Message-Id:Date; b=qi0Q4cqwzReT5pwG0MeXL3pOFOKyfB1Ogy4RHttOkoRCIiTw3KdsYSflqSder3vwYZP3eEMU38EL7QoYt6zPlVFRmeNMMDn8Qtd6EKPIvKpTJ2lD9xSE4f9iD0VABa2dTMAHb1cEzzyFjwBDpWiQI134eFMMIFONLLbWgiEV13E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DbaVatRm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DbaVatRm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7F44C32786
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 07:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717312522;
	bh=vKUcfAgEe9gvMFN4qSBlybGtzEVGOQ+M5Qbju1oR+r8=;
	h=To:Subject:From:Date:From;
	b=DbaVatRm9FlT4NTif5SEUbcSvkFffchB9thHWqlYG8b7MVQTD3l7hOTD4CrgBztkf
	 anap/KtIjd+DPw5ekLP6dFLU1lrFGZOfujCYZOtbggBtMmhpI8B9G+oeGQh6ANUJzC
	 CwqE68LO8oRkA7vf2FtGptrTTjB7yEB9+Is+oRdLI8AjRPbQtsCnboA9B8jlYoSeOR
	 vdP+jbMMY1kX4L3CsbQyJvujezLBoN3m8jnwY3U9DC8H/ZgB03XMMPp4Och/VCGojg
	 mJcul5lVqyHHh/Z9Dx97JkpyvXXuoZ0q6x8lvFnZTacpX1+bvZOXAdT+VBu7l1kvFI
	 BRFyfu+fesqkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4F55C25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 07:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171731252276.9975.15264981193110924406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 550aab6904b75fb5ec386f70d429233214b9c7896cebfe600223684081c644d2
Date: Sun, 02 Jun 2024 07:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717312522
