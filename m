Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BF861F9A83
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 10:30:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739356256; cv=none; b=tT4DLDX9534mYyiWzqdhnDdroFll3s1dzjHg49rci/E6D2k10VItr/uBGWaxy+Pu/XU+6P9CodOpyjoSs4qZcrRGMEjetaaqnq7b4e7EqX30AzEsUCdSrGKZbVypz14BPLPfluNdLcLAp3rG/a8EuxRC643h0sHJY5/tqlOfcXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739356256; c=relaxed/simple;
	bh=yNTtvgHVnw2B9tj3oiFpD5OYUPCdOi84a23tsLq6SOo=;
	h=To:Subject:From:Message-Id:Date; b=XVVZ6N8tP4Mvk8utOVKB+ZTWl1905y5/Cwfjr+KeeL0H6OYSQJVyeHtCJq50ONuL/ywvTrjINGq4IxqkEesvWfnDqr6zJFsePOHaodNxFPkEJBXfC4cizqUiDnXFXuUn3LIyQPDyfhQW0V2s5xe/OWw0mZjf3d4sHZ8yVISvo04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OKsABKhR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OKsABKhR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83BB4C4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 10:30:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739356255;
	bh=yNTtvgHVnw2B9tj3oiFpD5OYUPCdOi84a23tsLq6SOo=;
	h=To:Subject:From:Date:From;
	b=OKsABKhRDI4g4J3p68a/cEMVAactcjKa4tymIFwxRikd3Z5NDjGV39svDnxbTLDNC
	 krAYtZWzdgTnwRTKKANQOWePdPgYmkChxv87s4MEu6/NdXLZL+tsZkCHZ6XYtsM5AV
	 /YLawlWemDtrxQmW3IvJcfmN2EylgZr0MtjbkuvikXU/TYvfrJMwBex3+X+byAlgBc
	 vbsIUWs1Rwlr1stmen05UtmXBUGNTUOZ2orCHB3bdgauyz6xP4zI2kRkK19vmY2mag
	 JydrwsI55Sb3eeOEOt9Ga9gXOk8DcoJhwaCowWogUSsUz7nRl8pseFwqzF/twvNBNG
	 Dv9F2gqdZLvdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E3EABC02198
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 10:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173935625478.26836.9986270883119820288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 393b8773800542f5e2f424b5ca25951ba25c7361c3a350a12fd44372acefc878
Date: Wed, 12 Feb 2025 10:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739356254
