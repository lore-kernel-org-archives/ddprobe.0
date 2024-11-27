Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C3721E51D
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732713354; cv=none; b=NFIhQQxs9EPrwXPMxt8M+sQQ/03dHs5rTi+XI7N2vr0AC1bbskBoMG9c1riHX06z72C+bFV2ZrNOmnQeTDpWvfFECmVnOUZjxWkzFrbfDvsC7IFs2tIxKLRcKaEAOLkP0fS3QhJlk3vtDX+26LfjbG8+CE+ki+wbNj2YCv6C7mU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732713354; c=relaxed/simple;
	bh=RZMwl/NLammKF+y6XYU9aV+b12RRmKemZHWg/TOkpPk=;
	h=To:Subject:From:Message-Id:Date; b=sjQwOJu4V1HRH6FoTM0ZEe4+PonXZtYT8a49rA9VJbOq9lFqemDUoKsVPWig4Jtf+fUWtuBJPC7eQsSeDsh+S4XhEsSpYS3ZXugOKqdFEt8Dr0qu/Ec33caX8U1UvnVkOo3ntrz5BMOFcXBdP7gP57/ey3R4AilAZLiIga0J740=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ca+j7cE6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ca+j7cE6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8F80C4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732713353;
	bh=RZMwl/NLammKF+y6XYU9aV+b12RRmKemZHWg/TOkpPk=;
	h=To:Subject:From:Date:From;
	b=ca+j7cE63CBqLOcqi58GzjwvFtEgZ5W51oQP3bzUZU/nNbt6XUanPDx8RA9sktOke
	 Nw1Gcp8YiPol5LxYtWcEt9veWebDzFT3iZE8s0U9kr4wnf6sf8n/HQp4zKgtyyljK1
	 WT8Q0FnnfvRqbgcPwdMXdl8KiCqOSiAHsOqIFnEnI1Cylffv/N8ifzxpZ0sDS/DGHO
	 w+QlPwaodPjaf+4K3FWJe+f1/gOVxktsGldPaGCYvGu2z6C89GtgmeFB5DwetN4LS1
	 PPLIXpH5XzZ/NWUPnD/yLkVmdq2oHG7Fh3xDFB3ZwqWmGjVSmj5W3rGzK7EhiWe8ms
	 G5loilgMcf6Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BD60D6ACCD
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173271335362.1088.18435499719310047646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88705785227f24fc1868d976000fd64a54b8f602a2e4c2f61266c465fc6d7e9b
Date: Wed, 27 Nov 2024 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732713353
