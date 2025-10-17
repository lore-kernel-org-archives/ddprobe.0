Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35D96354AC7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760732994; cv=none; b=ScQgiPTn7arXGGJCKuSAH/Age80Yz1Lwtwu2oafiH4X6QLS9Au1LEqbfSjUfU1/DtaucSTHVaaJXwuYtvOBzdULYsBzbxB8KnPb0OCxIYMXqRHgKyYz0WepRzGVEPqBLFEVKG2I7n4k5F+/a1mwM3TPNkfpvUeykh+HDNe2ONWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760732994; c=relaxed/simple;
	bh=7MDKg2wMPqh8mzimoBBrcofRkXlw5+D8tgn3Nd81UoE=;
	h=To:Subject:From:Message-Id:Date; b=AacCsqAf+QYjrVh48ctlFXcbVJrlQdHGDZNgClI5CAYOdSOh3cuBcqqgzeLGBsk/ECFJ60AZ6nORyVXhmHzl1/aiT6sw63rsl0IpxR6jGB1195RZ7I3PwfNpR/Il2n4xEPHNMGxSLj1TfUm9KXyOqLe3bs19JJFBdQ1J9w7gBTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jgrq3kgA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jgrq3kgA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE950C4CEFB
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760732993;
	bh=7MDKg2wMPqh8mzimoBBrcofRkXlw5+D8tgn3Nd81UoE=;
	h=To:Subject:From:Date:From;
	b=jgrq3kgA10MbpQaZDeiiKSZbZaOkloRU0F2bskyk91xVI1yEDJXnbmkhwT6VYcGW3
	 fjBf8Q9hawClcDin+IrMovmYigYkkq3cwgGHYbhcGf7YdUXQpE3OJ9f0W6tFWQ9iZu
	 aHodgwOXNHWSGw2mkcdamSsv3IFkmH0q3XZ8TKLCYdB7unAgxmqhZok3WRNcCnV3vt
	 IMy0xQd1xDhobO7316TQW29C83F3rU+6XHY9Ifkf1HEX3ElNLStpOrHuDPUkzwpnoF
	 dZCFIrppm56nfzg5Ad5kYysiMMWpUfHBiw5n3l/dStqIzbwRppXRVBrHT9bySQfzzC
	 JkwHNbJDIM4hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A34CCD199
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176073299358.27629.7115725653722154486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e22b5a95cbf2af6e069f7419e4f280e4c16015e04727a76fb46b6adf14eafa0
Date: Fri, 17 Oct 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760732993
