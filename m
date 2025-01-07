Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36A4A18628F
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736272554; cv=none; b=KIcvk7QUmn1ky6oeNlZg5IikfH8wdLG3tcay4+8HRCgVJp+5Yg5ablSPugEf4NWWglstdWRM6s05Cem68rXPsABClM2J/uO/SAk0MPeWdvTCtWwohoyXl05VCUfrYBQk1zyRnIhZQSe4Y2loaQch8rciwrlwYcAYn3nEeqk6O70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736272554; c=relaxed/simple;
	bh=bbNaYdqrIBKTJqvoAFO61D5Z3XfNPvcvacyxp7FSoLU=;
	h=To:Subject:From:Message-Id:Date; b=PM55toEO0LUbld9SPw4B0/MIbFJH8/Vn1oI/of0fOBoD7niREqmPUYQm/1utBm3Vi+4NnUmxWcTyY6S+Ui/ggRjlM0d1IIIcNvmGWWj8TwN1uF3jOx29UZJ9vjQ5CkNiTNPQVvYal962lylP4CnDGkyP4NnTQBbW9OvhMqAOlfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q8a5awQ3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q8a5awQ3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC49CC4CED6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736272553;
	bh=bbNaYdqrIBKTJqvoAFO61D5Z3XfNPvcvacyxp7FSoLU=;
	h=To:Subject:From:Date:From;
	b=Q8a5awQ3qtF4iezXLP/5mJIvGHMc11h39YVGXt5tFLYvOteQpMrbAmF5UBfob+5Kg
	 gVR+bGbOY9vjmhe00tMMD1Ap0AVOnO0x8wHxuOet5cw3dnl2fzjjOa93rnfCLAMjCQ
	 6uosV0JSaD2VDKg4mbDY0EyXxja89ENfVUB+jabxMejEI2Hdj8lViFdcWWJzfqiWG3
	 hEhLnCB/4dbfZXrqOjiIYBOBT9i+Ac1JozFVmKzOy0Koy7RAwRH1TLyJI/v2ypbqkK
	 7/7NGULloXFECG4EruFVodFFW91lJXH+xuggXLsG63p/fZJnwhZgrh8kPGBloyouje
	 4Ab3VKKDRwWtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B7DEE77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173627255360.10656.14921824977263983134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50152dc89ac0d3cf1ce69390b9e444a95b48bba75897b9b9c49be9bf6d2119e8
Date: Tue, 07 Jan 2025 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736272553
