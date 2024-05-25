Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 592F846A4
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 08:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716627263; cv=none; b=XSrGAw7/zLQqoB9ef6OXS6/wTnT0Z+0i/4TGlHDTy9xu6952T2eemHph5j+ri2Xs+2RU3ZxvQ5lSsQ0ce0C6cmNMmSg3F6fXV7YVL73oLowubughmHYMkI8CuXwMKmz++Ed+oHhVDMHHSi5l6XL5fMCaT3j2xLftzT+fWvXFSTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716627263; c=relaxed/simple;
	bh=JgNVFw1IcAGVJRRljKsL9AbYBFEdE/MmDsLAWanZZj4=;
	h=To:Subject:From:Message-Id:Date; b=KwvmFy+QoDVe9ful2vPC1e7jKlQr8Syx0mxNZQ6WfCoIQhwPKOnR40Qi8sKat+3+m/jxP7zsDZiTTju8OTYxcYIEgAgdcrPrjauQDDIMyAOi0BpQA3Bky00dgPwDeS21GPp1thL+JAorsKmbPeAxRY6jgRfIdF3YFo5CgJ5CIuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YLMkrT6d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YLMkrT6d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E340CC3277B
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 08:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716627262;
	bh=JgNVFw1IcAGVJRRljKsL9AbYBFEdE/MmDsLAWanZZj4=;
	h=To:Subject:From:Date:From;
	b=YLMkrT6dh4/uoREqdnhbaJJFSyEY1ZR/oVZkVYWbiElHQmHZNNgKasiI0/3iBszNU
	 PVRzh/zTLl3VdOrPCBdzv0nSIw1xd7UcGU8eiKCnzxpM/C/vGfhUQRK/YCjJOukWSi
	 /4k2mkJik6r+PAB5LwLE+eWyh8V7Lyb8GviGNcg8EZs+mh5e2ByeHoNVkgnzmfWy/Q
	 iCeclfkbfNWIF6QHHMayHe7VDgNI1IgqNAcuR+i8btfmurmgzUGJ4Zt2mQlptZsDSL
	 MJu/yI0OxidyMHE+qa/JrpZsHMg9lige9aSx1N6qt6oJbFRZZ1AlDufjpVqywHMktD
	 eEIcG3xgBPaDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7FB6C25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 08:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171662726276.16867.16923260508937184900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e9e8bf45ff93d9bac365da76ab4beb48a74a963d7264780df211399c06b254a
Date: Sat, 25 May 2024 08:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716627262
