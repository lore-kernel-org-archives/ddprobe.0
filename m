Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A31FF4F1
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789086034; cv=none; b=LUgtbbwqPqmfwLAJjZRAou5kVvXeOZCjLvl/U3cmvKW3FDTDFpO4NqkFqzE02jQ0n0aN0G4lft4QnuYvbcqfOj6BljF4/4kRiEA4QOcui1LprVDpAxAVRhKSv+S4zVgZOAbmW3/FGT7/W8n23yMRBBDt3VdbabwfYNceI0ICLEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789086034; c=relaxed/simple;
	bh=mGgwktKBmfuH+y37v/T+TdmbIat+WG4CkGkDhlleirA=;
	h=To:Subject:From:Message-Id:Date; b=jC2w40Fj2PenLUvoLIf7TrIgMlSnI5Mo/OCoc0OmA09SJZDQGuQSlQ2zr/wwHwcLIin4YtMh0SHXJ9JzXQnrDNvcnM2bn4C8zf5wbJBe0PXvn5tp5Z1MUAKsGb261lgnJ6gVd1sPNrlbyouf/aCIpPxb/lcysH2f+a+AJAuNbb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bSuOGxVh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bSuOGxVh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE6B0C2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789086033;
	bh=mGgwktKBmfuH+y37v/T+TdmbIat+WG4CkGkDhlleirA=;
	h=To:Subject:From:Date:From;
	b=bSuOGxVhMRp/gRiJzqbY0NYy6RVpjRLWGTWwlfp30H6cGkbkgyjBn8De959TEHn9k
	 5FSGRlK4weGoyvoADgHtUZ+bysnoyeoEZ80/1BhJ6ZjrJNyoI8uCHJjM7xZpIYqw/I
	 bTHIFRTfz3b/5mNPmy4O7H55XsuR+I2wZc5zk9x9JSASd6raxeZ/VbhJsf7h03Lz9V
	 iasfvcXzXgN3L/35sNVnnhTdUMndFExJbB4rRY1L/lEt4vQYoy1Ui4epV40XLEZrlK
	 VQqjGq4Vd0cTAbtHMcWh4bIealUVT80na6w8Aix7j50z8C0WTspKdi5n9xd2eyV1W9
	 gFmuJOJz4n4VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA94BC88E4A
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178908603368.18554.13408087403416156556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b383c95d252dd377b52aad53b86571cbb66463e009e3ac5f380e8590264bc20
Date: Fri, 11 Sep 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789086033
