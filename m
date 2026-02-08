Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C441CEAC2
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 20:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770583434; cv=none; b=eSyZqS4JdA8TbwtPF8Uq9tx2H6h4j9aPPg4mMta444QWBdXffRW6MmowkAIWa3zpMSmypyfJCpjSWWtbbDI1Eam6DjSapcqF6WlveAgMUL3E2RaUjGGlYO19MxoAy4xxIzIMk3HR8+FoThwbPHKWVEDl9dPlztwXYs4TP3VpeZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770583434; c=relaxed/simple;
	bh=64lGJzndKbEe1Y01+nFXW1v7GoA4h9PP25/2FpkFEBg=;
	h=To:Subject:From:Message-Id:Date; b=YD/uhcTDvFDINugO5TEVOo3JsmmdvXclTK0LfVG8PqnW+TM9UykHeOiZIezs5Aed8o3fLJ19sJ6AMQtzrGEScajSOMXin04p70RVlVoL+vH7gLRABINFB0UeU+XDFSi2BELp/Mxuzm5PZQjAuDJquBSovpqpKDKTc179U5oe9a8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pSHHPm/E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pSHHPm/E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE633C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 20:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770583433;
	bh=64lGJzndKbEe1Y01+nFXW1v7GoA4h9PP25/2FpkFEBg=;
	h=To:Subject:From:Date:From;
	b=pSHHPm/E5upGo5elIA+FwW+MvBvqDNv1GbnjC7emIjT/Xx2Aqd50JX5TZLnIxdd1+
	 1kvHJX9MIxrJuOxz9qPoj6L15eqL7NrLT5SRBb8ruLWgVu8Jpsx5eOLTyEOt0YZm/H
	 vYvbUniAba3XWN6+/RIu/VUGLAIDIs8R696XIqiMRpcuUrQ+lnw2LT+qm9nEVyNRxy
	 9SOXWkw/PDdUqAnLFt+Wv/fgAKvyBHLg8WWZAYW47KnAJ0p7iWUuRHylg/9PJJxkiH
	 C8J9bDgm2PXntcEm5dGc//Y1UItfM3jQAomf/uLnxio+0U8dceSPKmMkWD7LvyexJr
	 4YM1ripOGqm0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B54FEF06E7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 20:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177058343360.3377.5783765949926362717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 034a2b4ad8222d9e90b54dcff96d68f9e7137d16a18445aabb475bb9911312e7
Date: Sun, 08 Feb 2026 20:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770583433
