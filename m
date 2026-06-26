Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52D9C3F7886
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 13:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782481054; cv=none; b=Pje19bAr7sdaszkzX+p7JaX6WkmiPl3MmZWacGTmtcMpbujidFTTg9vHoq8LAjMcHA6aWjTEfcmqFJl3mUDsZ4iVqbq3NlsLGSx7dxwTUX46xWitVLy95HtgoxhVQ5p0esYF2Cv+oaKHgdeT3sn7zjZ82jCmo7+/DvjjnaoDo3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782481054; c=relaxed/simple;
	bh=5DykaIcqZbrAkAX1t+pUyN0AVrP525b1IuuoiapoM40=;
	h=To:Subject:From:Message-Id:Date; b=Di91L0/AMYyfVIq3UNeRoxEWoPEqySu9EWrCrZO8lFPqpPYBfhb4Vf4xqlLodPLc6iLlMtOq3QfcADbsTNZSjAvOeXn5hu9HknG4m1eBe0UFCSCdAu7d5BFIcV6A4agPqODkahIcbsugzpJBl+NV47k7dd1rF86nJ7S+DDIu338=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VvFUwZyF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VvFUwZyF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E40B1C2BCC9
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 13:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782481053;
	bh=5DykaIcqZbrAkAX1t+pUyN0AVrP525b1IuuoiapoM40=;
	h=To:Subject:From:Date:From;
	b=VvFUwZyFFL+8qDSMprWBu3lHlakM9bdyNE4vk54yeYCPClw2e0QfRHqLBJ6ZCYPIv
	 vlAQleb1IjBjXz3q1sU6i4ufYvHDMEsEZ8eHi4ZPOx0fDUuyBYyrnjY+1kceBkx70i
	 0JXmmHmsAL3yAIxi9JktO880s9F03VSa/wiUS9uiv2hnM+n7Hq3nctAOGelSP4e+Bs
	 51kaxjYN51MSonZ9vA+hfJ3GLfHtN+kOwCnw4KADFsimx9wxesoiyEMCFOxYr/lFGc
	 8p3EY+YcsJl47OBWxTnOCcxl3FZ/OhzPiWBOWRWA6psPgrOLBSWsVQBb68fN1wRsNV
	 OW26kul1OJ2qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEAC8C43327
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 13:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178248105376.5123.5325992719408695044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76a209c87edf5bba6758d5f9d791bfe0fd0e66b75aab86970646a27a22ca9619
Date: Fri, 26 Jun 2026 13:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782481053
