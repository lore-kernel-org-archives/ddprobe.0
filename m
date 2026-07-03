Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A7F813790B
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 14:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783090714; cv=none; b=QSJDbudVOOtMaE0whHWZFlNyM54rOiT3kIObUiIOn+wYdRBsxnzvVPp7v/r6H1MvawrUy8Lde9CK7btT9pIIWBKpq5nfvwulmh2ND/iavZxRhixj6fdGZxDiDUJNZAwlcjOC3mahqLjWPv+MixxUkkX/Dy3pJoPslQnE6Yu0YaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783090714; c=relaxed/simple;
	bh=/pN+zCi0MTuQBUnP20aANW/YDvDvs9U+YWBofmXTdYc=;
	h=To:Subject:From:Message-Id:Date; b=PpEaTU2j/yj4KcjrxvOMI2u7CfvUCpP6z1HR8+4Rfd4XNFtt0/RSyna4j1dIXEUbf8/NE8wL792u4F4ie8GN1XQfnfxL4ORCZE+/GGedTHfJ3nGZBsaj0q10COeN9T/b9lkPKfOVRuRI/uHC8y6IFHgvlPPOVtMzP9miVKty3Ro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SBPqGiGU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SBPqGiGU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3182C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 14:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783090713;
	bh=/pN+zCi0MTuQBUnP20aANW/YDvDvs9U+YWBofmXTdYc=;
	h=To:Subject:From:Date:From;
	b=SBPqGiGUm1op476oEmWhInflRj2dz83BDdxU+N1K3LDq8MEi/ByqVB8gdsIqvHS3Q
	 CVsurlJp0xoV+FdmRFxiXG19HQ2tMX/j5Wjhc1YYbKs0h+/l2jnXEjgiEJiqTOYQDs
	 92cZ71/DT7QkoowcelBtCzvwRHSrxwLT0P0OTJsfD8VPKcUwoW3tNvknxWGLpsdhXh
	 0aSzXtolGnpzWjiAjGItLchty/+UqZ8NNorcXO8RMogoYxJS+ZK8pqt9tE4VUHNmVq
	 8OrmWwxyIbbnPet4342bSNz9UuZ1b7T8g7Rs82hLn1K2VaLLsInHrFpPG6HhIi3xsV
	 gnA1iskVaGkiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABDD7C43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 14:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178309071369.17506.1314009141821316676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce59cc1529f49d69ed5cdb08aaf72c016b8e6ad72d771ed5ffb34b2c5f6fa8fa
Date: Fri, 03 Jul 2026 14:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783090713
