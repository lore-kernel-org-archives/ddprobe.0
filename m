Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E232383C8D
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 06:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772519094; cv=none; b=MiisbcEHf8nGgmwIot9oj9dSX8aVmooFfBPELQmc1wvRD0Ud2Yu0C1CaHCY8ALI7fN7OR60RARZT06365zZaJsV2jVN5WqZKsKUtzKHb7UxrEZKFwwCjy4n0O+0juHWy7qenPHLWPESCza7h5tS8WugTzMSUQtxMr45f8TA0RrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772519094; c=relaxed/simple;
	bh=U6W9oAsYJwB0SoeWCJX4ih7YDO/PqmrpE2OIwjyHeGw=;
	h=To:Subject:From:Message-Id:Date; b=JpVAVRcqZFhKuxGmr1roS+RVvohqX5ZrT6y0z53zsmJkJBKbw3EWCDZBGBZ44CjcdtM8rmyKZ5LZaaZ2xYS7Pc8dGH3hR3rWXBuvhdo5GOhQzN5++4Rmggnii4FK1YNg/YzXx+9lWLmZ7ssgCGP5fqp60jjuQj7o7PMvj6tgO9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p7me3yMU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p7me3yMU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8E39C116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 06:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772519093;
	bh=U6W9oAsYJwB0SoeWCJX4ih7YDO/PqmrpE2OIwjyHeGw=;
	h=To:Subject:From:Date:From;
	b=p7me3yMUe1maItzTpsZ7OeSVRMPtKyemMxv5BaiCORrAJB5dJyPDbI0gG6QuudP8k
	 PB/LCmoc7xNto76jZ/iDUtAgsY2Fi1/P5mGWs3INgwDwFhKfrCerlkEWFtaLQX/DJg
	 Nj6IMsaexgisrY/REfD3bQx4/cqOWinG8NyY4UJ+aeupcn/shmRErLFLf0GgcCs1cb
	 qCIcYu3bGkqovpFH30w0dlcIA7GJ7pVULMXp7eB3tJXXIYp7AkszTgIXrXEHsaPjo7
	 gQCdF95mlKBSVmpUgNgvW0gr83DmeyuFmEqVwWEakd8CFvJ74IxgDTpLtVTEvKXTSC
	 AwS4HeR5Lnfzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A261BE67A6D
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 06:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177251909365.16851.3752817033699400377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da8e997fb6bacda8571a91e869a27e233999c188df5c3a198e2b0b09f66a9813
Date: Tue, 03 Mar 2026 06:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772519093
