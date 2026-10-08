Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A048492E2D
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791456034; cv=none; b=bW+AvEIZC1v3GjZ4deibQUN/RtCNqFG2fc3AD2uOSoX6PGjg2qKLunIYQV86FVeqOOL9Cqi/L6/9aQgQYNI2ZXzjC8Ho5tkiEtOGz31rwcGtOmI1/6msifZapi7rP+xhchOyzbqSoAEkP8UuzQvAIjKYpuzD5jer7TEFcCFttvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791456034; c=relaxed/simple;
	bh=nobn+H8zHxWbh2GMvWbYQw7yGcZSY90FAwF44JHZHw8=;
	h=To:Subject:From:Message-Id:Date; b=WI+CfMa86fXEtWW/uAMX9mlpjeH1rCGTyLNEB+w2lca3FZLS9Rj2vta8ky7NvTFuwJK/sKxWBFjYxT3z4ZyriI0XY5SHDeN9gk4z6jV9MRdTW5MebOlh5Gh8xNx7hPhnXpqsqejOF+h0pu4Hqhzm1bijYwLgG/2AZR4pQu4ffxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GfUaBBxl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GfUaBBxl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D00C5C2BCF5
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791456033;
	bh=nobn+H8zHxWbh2GMvWbYQw7yGcZSY90FAwF44JHZHw8=;
	h=To:Subject:From:Date:From;
	b=GfUaBBxlxNR/U3+1qrbRVJr7PzP4RknytBvo3IMdaGgpp4BcY0FVvuK7ojl/S6Ih6
	 NiSvhW+JgopXLDcFomV2ClyicYwsP8nC0MflfYe9BBjeL1sTclzUft0zFR9THCEY7v
	 sWgMdj4dL4gVloCwg6otHfg/BmoyKLSiDPJZT7vIfXB29IsA3LmOVRyKLLevwFsnbl
	 slX7PNDyeS7/W9yNK2ZGN3k3BHMQQYv1MZrwBsXkS6K6dTHdcOWNLVQv6aRsjBAacY
	 XiL695f6pjak2XbNZ8vBMLx7n84U9TSfrzA2/+7xxWeN/2DWHojX1cFOuL5Oki8tDz
	 VF5XGMUM0J9Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB8BCCA600B
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179145603369.29560.8710335908474005004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b8154bf709fc90702d8bdc25c9ac7f225bc64526972115343e7bd0ddd8f6433
Date: Thu, 08 Oct 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791456033
