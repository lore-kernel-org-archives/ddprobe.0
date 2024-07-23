Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25E5C13D609
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721735754; cv=none; b=WpOHdHJs4xUzC+/h3WO1gsXxT86LtsT6V5wOdvClAJKW/gP1i0BfivxiViv6OLMMkCt2nWklyW0jBsIfVmwykiu9hjWxzN1U3anayDq+2JiKb5EZHHTgxUPufWGlcbObre6F61/ZSW2NYI8g5pPhZKNsUBP+yy0SSULCPORtLzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721735754; c=relaxed/simple;
	bh=KNr8s0e9lbLcXSVZ+z1nX9B9DXgHtZyGUFYEPGiq0G4=;
	h=To:Subject:From:Message-Id:Date; b=jx+UmoO5wRLv2XCDL1tsZ1D9EmrFSu7fFpwoEYjvBYilTbRR1BLGo3gptTdzpGjVuRtcmo2gmHBxGjRLC4zDBGBJAK2PXP9Io8hxpkLtrWAfDEkZgeptoLwQqovSmDX2DRrgeWwfN9+7oSX+N009CR0MuLTdisYGbAo29Vgl/SM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=seiZm4Qg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="seiZm4Qg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA23CC4AF0E
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721735753;
	bh=KNr8s0e9lbLcXSVZ+z1nX9B9DXgHtZyGUFYEPGiq0G4=;
	h=To:Subject:From:Date:From;
	b=seiZm4Qgj8eazCi/ODSQgRfqoIPKaKTmS2THKt5gpwxsXO9kOXxNDHil9kttwxrB/
	 yAWcV+bWLXLhk9h4YagqrRxR6e/Jf6TmHFYafPtNCDkRabkYqnKplXtdYFTR3btN1S
	 sllxvEaBn22NmmoGESo7vxhXVtYFTLmtrJxfu4diNjnlpRlxhDy0Tgy+EI41kGCsx6
	 al7IBU3YE3jGxM+5BZ9ZkTkMiDvoIN9DA8NK8BMs8eGcB+WqAOy2MCGKJ+C/uuNWGI
	 LatMFp4SMjAOD76DxM7VffRD1X5ZhsUHUcbgWr5ej5hOefzgn6MB3YFwF6jTjwx1SI
	 p0DXZlQGalCcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977B9C3DA49
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172173575361.15047.9541801501061253546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f7368e7cd008ff81dbfc94b0e472aa7354da357d3b5339c6dd3f73d6e15538c
Date: Tue, 23 Jul 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721735753
