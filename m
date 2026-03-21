Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C7BA1D5174
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 21:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774129494; cv=none; b=W/wnL/nt7YqWucIxICJCJoC/RLwVgTKB+W+tI4Y2Yo0auLXmnFJhvOZb7t11uMAfve3T6T9na+JBxnegqxCRPDbYxvDV/sZUHELrWyes2gCexYkcK5GBn4T4V2W1BZHisKGeee/gTDo1ttmZwofdDJW814zBCrf9WmYAguSPGkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774129494; c=relaxed/simple;
	bh=Ia7DcZL1XJ9uMjO3zBM4K8+H1g9dZF414Ugdt1zB/jQ=;
	h=To:Subject:From:Message-Id:Date; b=U/UZPsxCRdBqJQIaVkijwdyZJClVa6cBIeOpVLinzZEYlXkZdme1VepjxQWb98WyLu+oN992g2PWFIQcCAOMKDvN8UwgvSlVyxEgGehO471SekDR+M9yEtRjnkBu9c4ygwrq6aPjaiaAovUTFBoeQYYUrARyIUe2lBJkgkl8ptA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sUKN6l+0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sUKN6l+0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DC6C19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 21:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774129493;
	bh=Ia7DcZL1XJ9uMjO3zBM4K8+H1g9dZF414Ugdt1zB/jQ=;
	h=To:Subject:From:Date:From;
	b=sUKN6l+0ttOjnB1BaaffkI6P9OitIw8APG/AsfSHn5zMbJx++VUG62+07riDjYUZE
	 djxynBw3sUoJ/ohksg2qyRFE946TpGbAfTRyRjWYp2qhRblSPWzEYkDyVgswowRNfK
	 SJUpzCAY1tbPjfAcLXyRg0+ju1itQ3vHMZzvmsuu/5U6AnH2RH4mbY0nQzkQT1tHNY
	 uiQdNOvmJy5TzLesu9JU1GV2sOQgDGXkjx7uHzSPHClB9VlFCria4wdTDAJat11Vvx
	 FHOqH2iwBw8vBKNzy4hhx6OP0GqFgK6DCFVAYfmf67XhvTiVMteKv/0YygzpCrNvO6
	 XwTvHovsSjs2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DE8109449C
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 21:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177412949357.10247.12629210298143231687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 711cc4812317ca7aff5d1ec91b176479072e4e7d454bc1b2f8b81b96b412dd65
Date: Sat, 21 Mar 2026 21:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774129493
