Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B451324B1D
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762363794; cv=none; b=JOnBv/oGXabS+12YxJPIVJm72BSm856qGu1sfjzKcAOXtuOzGYvgP7CwoQAXd7K6t4goZREaRErc4OY+Y46b90kEbeKaCD+N04tObHZBAjSSvuYC+7PgNMzGfjverwYdLOwljz219Cz9EZ9Z0oyZDRIsXFhpSUBndILTD/sjvlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762363794; c=relaxed/simple;
	bh=iLBntXpyPWOboJxGrZfHkgRpKOhZlwpWAeqrERKXlVU=;
	h=To:Subject:From:Message-Id:Date; b=Qvo2Ntcpc0e4UVbHWv1/+H+KvvaX3q3/N3zUtqZnDHLBrBJzklaeaQDwo0L3eJao/bUTwhL9SeZ3cHr5qKHp369oaOV1ENgoIYJLqRdlPsWyCaSEcFLoAiwNVV5V6pYerEE6sIZXu3jeSYgtKIKKwnrXSyZmbsH/aK7b1BJvLQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tWqlpti6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tWqlpti6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D34CC4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762363793;
	bh=iLBntXpyPWOboJxGrZfHkgRpKOhZlwpWAeqrERKXlVU=;
	h=To:Subject:From:Date:From;
	b=tWqlpti6hfEu11LRhoW0pFuyTHtoMMq1qvzd11W9/XED57HC97ddN48y37vHq2Ju+
	 BARxVhmj1x3fnXTy8Vi9/Aejpzz0uYsExNMt48qPVxl38LtSiwAj2rWFS9fI3aIQvc
	 Fj0F+8SDkCJYB1f6ANy+6GMzGGOiMl0qvehUGEfRhHQ1SM5POk7mbaOce2oFP2winw
	 IIOQDFyralsesU/LrmKpsB4Um28qxJCI75Pp4LLdK6inueHc3HpbBo42Iq5kJjC8ph
	 Azk4ywMg+zWKrhkY6qCJl0iO5xdaxPqxP5IcTsuK0FiSGNZdJ2Lular1q3fTYUd71L
	 LVligMSC2Plwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD3DCCFA0D
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176236379358.10317.9265339440360991506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7947aaf54d7fc5d165478eadd26f3ab7e778b79b5c89c4b30711445fdd4b227d
Date: Wed, 05 Nov 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762363793
