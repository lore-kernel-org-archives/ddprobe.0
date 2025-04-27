Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E3962FB2
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745762394; cv=none; b=OfA/oWalqrnwBPzJaAS6m08k+0sPHLlPGrcSW5kmwzGL8pXzuCupz9ZCMoaDaP4rN0RnqHX87ltfVTzHaTr9alCeR2rj8OaDrl2JKBQtdTdbC6W1qKcsAru/GK3vsb/o7QNiQvRw7ylLbpIlpLQkQ1ZDNkcrC5hu/XcCoCelXk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745762394; c=relaxed/simple;
	bh=0NbKwgcYXmFwmv3omV6pyLimUAzdX3M8j6G00oBndk0=;
	h=To:Subject:From:Message-Id:Date; b=Fh9DfH3dN4Dbpmy0IpmIfoGNCtMFHuqje8D+79+2tdvtk0L6XQDe2AA7nn1fDXPGfES0qgJDfvaXQRyBZoBlQTYiSDohmfH1WeaUddMYHPzPVFIheaBue7N2PESefItgkTsevzkSTfxicR7+IBli0XMhW7/32UDvKxKS4euJx+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NyooVX9K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NyooVX9K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A390CC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745762393;
	bh=0NbKwgcYXmFwmv3omV6pyLimUAzdX3M8j6G00oBndk0=;
	h=To:Subject:From:Date:From;
	b=NyooVX9K/d4gszf8amwYSd80zEzK+VhTjrTRbMM1ZkdCRUWHJtqHWm2vhHWzEXcQ+
	 DBOQNaNnTNPpeOnQT5TXD5dWXyH1PIQrEQQV1C3A6+rULX8M7INWKoqfPGqmVo+so0
	 i/COocz1Zer6iSGX/srW5VuPhi7Z8xTXD1m6L+iWoUvu4GnMrNi3EHcwPPW3q/Xbwn
	 bwh59ldgvaXp08phl6OAqxKvvXxbvJPQwbEkkL/Zx4MGKrzSGCbfJzgWpEXM7DV6Nd
	 Jhz4dANQY4ukpWISuaz8YpP4ZilQqmk8htYecguAs2qdvn6a+iKu/CaNNX+EN9ZCLL
	 X8yOay4aGGFRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A39C369D1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174576239357.14543.10568011866103208367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 486187e00bf4ceb2c1de74335a537aa6aeeb6fa9586beabc6e70e112f575d4ba
Date: Sun, 27 Apr 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745762393
