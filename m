Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9EBB142640
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 23:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712620097; cv=none; b=fL6R6tZznsr1LUttEpGcgnzcIa56TLdOvp0Y5NyWqauqW44T20OjuCvuRHcpG0AjOP1OXBHyrxRToQgVa1sFAuniTuhsffjmrRYsuXFZyF62c4MVBoyecM/iENniz2zK9xxfR9EW4LYZpafFFEKmoKR6cZXh1TejLfe0SQFCIJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712620097; c=relaxed/simple;
	bh=fivChtISuw0/1MlLIPUSemVDx5PaKRD8j3TUJKGeDBw=;
	h=To:Subject:From:Message-Id:Date; b=FRcg6sZjPMbRAVMRYbUzRjNdACIp6TjPQ43+pj1swApnx293AEIcWRaGQUNSTT3h3XVbkhJkOS96nOFRySeiyAQxHaVhtRssLRuchxzbAaqnXY1XqbdKTFx1+rkhtJjp36dzmx7lry9xywd+T5sNbKJJEQihOr54mOQKkJkJwvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BH3Z5zHP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BH3Z5zHP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75917C433F1
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 23:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712620096;
	bh=fivChtISuw0/1MlLIPUSemVDx5PaKRD8j3TUJKGeDBw=;
	h=To:Subject:From:Date:From;
	b=BH3Z5zHPLR85mpdbwwhFsWDKMee1Ullt2zaLsuQCJA2BpzDqCFJhciq9sWNTXeC0C
	 eGePkbNIIm78Nj3aE6E4FVKpxI6hBkLoEMZnJidaJrpzAPn+wq1q22KdgenMtHnmSN
	 wkTL2PTLSWRANP8LG8/Ndpmi55TpfvLa3+UGgHvSbDxV/7gAKaR4Ymc+XGHPbYUXw5
	 SOgiXWKn8wXd7gtxs/6g8sOYKjLr1tqgS00nDlfKqwoOBgUWJCTnd72pwCQPZgBKwX
	 zSeRLwibZ0G6D2uW/SP/E94z8GMPM3t8I3vn0l7SHfMXEMZyTlzHUuC8QwXEv2N019
	 ppHKwpsauwKSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 624E1CD1292
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 23:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171262009638.19620.9430939204654548078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c3008cb0961bdc3a89b13b60d4bbb5903e768e5c83e5833ae02e17d8dcd3893
Date: Mon, 08 Apr 2024 23:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712620096
