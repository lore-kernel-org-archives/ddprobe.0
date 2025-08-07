Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2081B136E
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754527794; cv=none; b=bHjikueKT17GeojYKgrkTbnna63Yt9PymH1OtpSWIceJ1ARQUR3n70YQCgSOLbNmic/Ra+tuVj96K53T/UZeEbqxIVESNED6vj+XIIGS/BFzhyUaViYnl2u9hpTqYHNiLJk8tLODDEDMt6bedaTHcTTyg7orfRVN11IYKFA271I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754527794; c=relaxed/simple;
	bh=hSw+nLx9ILnmpLyYbAJ4aPndw83rx+h+zAZW+cxlrzU=;
	h=To:Subject:From:Message-Id:Date; b=T0QInWj+OS/PjgPI4RI7dmc23pz0DVWhxMiUSxgMU8Ot2GTvwOEb/VU57mnf9y1+HDxFc5seTdTZuyOhbadgalvI/amWrxF6fghAkU8MRqHDTkymBbIc0G0ai/CWON61rit4mZ3WYQ24FhvCXzcPo4Cmgkb8XW4SObF1BbgGGiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jg28BWXq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jg28BWXq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D61EC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754527793;
	bh=hSw+nLx9ILnmpLyYbAJ4aPndw83rx+h+zAZW+cxlrzU=;
	h=To:Subject:From:Date:From;
	b=Jg28BWXq/jehd/+5y73/gzPE5ixR99+vLZoib/APruf9LfBH0mcW/DZ38oVLwk9Oc
	 IuVJpPaxNhCS/oCmbeyEprmFtPMJ/fUHxLuN5j8Ruq4kgJU+IXCUMXKcMl/WCZtk/q
	 MPzfHse7ad1mg5YtvPuzKWb4yEWyj4hq1+ietKHnA/ISq1l9KzBGON0u/hDavvXdMT
	 LblJTbwB4gLSU9EZaoFiDofl85htqVilTiFk5zfBDn+0SX+AQt5cL1N/om69Ddqohc
	 py2GgWc1JOwa7S6fDLXt4wiEVklPXUSXUwFYh+b0ehPKNWF97tALag06Jez4eXmLYS
	 pCtBlQe691OAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E397C87FD3
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175452779357.17080.5670481367622294042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6acc5bd7dbddb49d2cca8866f3d2bb8e168f81cdad8c069f5577f6fed0ba0c32
Date: Thu, 07 Aug 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754527793
