Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3045433DF
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751561394; cv=none; b=ZBQqBFGUuSbr+fklYpneDmEG0gma3gKPjhXeXGm6EEMrEioCirY7PqyTgLNd1xJJFZRSHovuhovgX83+WZB/uk7pHb2wcEWsbUTieabFcbh2A4i8iDbn82JhYOJAooBPcLcXzeeBQ+VBHvygQf5l1mecn5K0u4DYetNJE9iZe1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751561394; c=relaxed/simple;
	bh=zIi4EG2wP9OSRh/3mHZd/YZM/0SH57+iskWXYz/zYi4=;
	h=To:Subject:From:Message-Id:Date; b=OqoTQuh3sgQ+1/BGnWrcBJsiJywtAtZQFtkbIDbBmQJQHB9QBtyXgEkxaoZycKGfuTM425CzMpxQ5efjcc24qSaZpdaa5EXvDrKi9ZLgMr1W8GNHK5FQ4AQqUHsc6S7/BnQPdSCsBgGcaZ8GGJuxDcADF+A+xdqojEaoj7CSROc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iiTiRT44; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iiTiRT44"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38E3C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751561393;
	bh=zIi4EG2wP9OSRh/3mHZd/YZM/0SH57+iskWXYz/zYi4=;
	h=To:Subject:From:Date:From;
	b=iiTiRT44BtaZw8+mIxFW1JA0K724yYr9PVrwmSmunjm7shXuOuIU2aWCiIfVO9/aq
	 3i8bvSTV5t59spTAR3txDsGaBhrnC/YFqz0dBDHd009mu8RqUz625VDrtA/HThyLdL
	 lOxoU6TfPahuF8rOkkEmCyNe+gcfSVoqziJT2uPjdecXDko3BW0C5NH8K1c4NhxUGx
	 QL5WcVB/ZceYww9l+n80TCXdcfO0TmFbMs5E9CtfSQGLonaJxc7CdSkA1lcwfAAPR7
	 ZJ/EZ8jUMbpOKvyt2UWtOSGaAeN+qSiizKMqMx6mounINuj9wCkBj9p5SVu0EXylc6
	 L/aD1ctMh6YKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90424C83F03
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175156139358.19075.18317402483723609235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30ef5591cd61643efe2f9fbc0ea89f75389ad1649e8e6f90505ca26ac125b3e2
Date: Thu, 03 Jul 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751561393
