Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45474EAC6
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743900594; cv=none; b=hiVw6SPZYV8eNtVKT4ssdg9NZCXPZr5XwDGfJn5SH0QblzbpMwCNcHf6/hfwbyk1QINKw59Me8vjPJkx2p15rp/74u6nvkVvwVes4Ud/WHcI2REG3vXyzRWL4KZuz/HSGDnoU56mxxuh7JGm+jvYyEIQmdlmeNZ852D0bKL3kdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743900594; c=relaxed/simple;
	bh=+DgdmBoGRBXFSdeCLskWUGwZg7NcCTBskfDNc0lGAzQ=;
	h=To:Subject:From:Message-Id:Date; b=XzjLlD8vLKVV8FsP1cnSfxkxlgAGoEzo/O3boeP7oans0DrIUFVMRMTMAZJvSr5ep35xMOikUVTjaExwKGUjOctdesckW0PQSv+a8fcU4PrEvCRPvsZtk8qJvK3Mnkg5KvtxgGkx/vVbUa7UvcCRahhb4pBSUne/Ui4Y+tc+RDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u5Er8Jie; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u5Er8Jie"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B49FFC4CEE4
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743900593;
	bh=+DgdmBoGRBXFSdeCLskWUGwZg7NcCTBskfDNc0lGAzQ=;
	h=To:Subject:From:Date:From;
	b=u5Er8JieA/KiGzuGqRgzftD31QEXcH+utNAUsC3ZXEaf5g/ty1T549uSsWCKU2yWV
	 1zy3COZPH1KEnV1FzATkaXU+dZ1OzZQWtaV3XPa16Pljs9Gyc07KU3qtuF2HAPDYq3
	 z3I2kDk2/u+yOV0bbPeUTdvtAEBi3pKcfXSnkOruO0SSuFFcGTKKqi3q+C/ibIGWPQ
	 8P/i1ckXGJkLRrs6VosDCMyuVdp0ZoQwa5JRa30lM7FVUaRdcR14sV5yfWi8tOT9sF
	 OsQNft//iNqUmOqioYvM6V0ik3pCNxjCU89y4HX5lLcu+Irw+FBXx5ssxyALvW2/1h
	 bsNUXeytMvaqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F66FC36010
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174390059363.12433.13831855128603760953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 566155605329425d561b90656429a7c1ffdeb91fb70e10d41bb50d4533c99f3a
Date: Sun, 06 Apr 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743900593
