Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E8E51BDE6
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 21:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720821563; cv=none; b=o7KHeyJ/sXChDvP9kMHJd31jTms2LT/ayueroHHgJuiRQN1i0cflXn4qYv2NjhE71l9I/2g20lWdJ3TJ6Q/chqAaWs5x94f/NF8xigmA2UQLktszyyTa6nxNOEip7tOkoXN2mIfzEXRKiCbiGl2OquqJbJYNK1f/tNJJ2I5Y0zI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720821563; c=relaxed/simple;
	bh=o5uduD0kIpwtSNDfrKxadNu5KVEeZQrBcIMimBBSdeY=;
	h=To:Subject:From:Message-Id:Date; b=Wh4/ZGpVHP3I+6DvM4vS5ajIKLaBnZprkEqdbKaj911i1BqFB0y9h4fZ33Yx25+YdOovumQ9whklell7qHKc3xj3O7uYu0WYMZsszOQudNqffhYdHYA0aD5hgIUWunsB4c9cthpIdulI2LIwT2G87GMSBGXa8Tlk0o/zmiJbeQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rVNYYbxX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rVNYYbxX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2FD0C32782
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 21:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720821562;
	bh=o5uduD0kIpwtSNDfrKxadNu5KVEeZQrBcIMimBBSdeY=;
	h=To:Subject:From:Date:From;
	b=rVNYYbxXn+4cwYMfhcQjKQLNhEdhc8tkH2wt/lO5Ahw84Yy+quGl62mq40gLch5lZ
	 GrGuX60U+b+LhHLaSYnBgLiCzDHMPw1Rb3XaHm3C/umBLL+lA4Io4ZmIelILJkRanv
	 GAoNV22cVSpStMSFQi8jvURuQNbKy+LfOuxTfEBrpDG98RRX/h0qNFGvCBfh3KgL/g
	 oyf2Rw5XOe713rCfV5SLeC7SwrjdRewT5EV7fvGCXh/RsrxRhYt3V4hSzcsOLg3EeE
	 BhbFomzSowA2SYVJQ8vXZD6P33mtqRxX1X5MHwUR4F5j3iam5OvPGVgmd0c6Yz+mx5
	 zC/k3CUIa6wrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5531C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 21:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172082156278.12092.11029810801313878497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab966019703e7ce9515a70db7c019d2b5473e96b4073ac2d5e161f5f4b0bb034
Date: Fri, 12 Jul 2024 21:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720821562
