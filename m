Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33AC818DB2A
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753839594; cv=none; b=oOEoXFSzDO6oHP4pcubXCSPgpMjGNdJVpqqy6AU8LvYkENybUgGejOvzh3UdRd5u8nFD01NN2Tc2kx1Sj1YgrGjOLWLSi1ByX5IO3G//imwoLAzAiEhILnkrtzVYsNrHsSUfQD0vtgGkEuHA4OPGhaDn2gOHs6I18kJzpFK5V1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753839594; c=relaxed/simple;
	bh=PO+QopykJpyb9EFvYLuxB/ObNFjBM6ANl6Lije8Zf8k=;
	h=To:Subject:From:Message-Id:Date; b=HOdRhU5c+L0+R17kKo1NUlxP/MGeyJImWJgfMalKmLxttEoDfLkUfuPuqWmVyxyc/9FGjB04mD8CL/sN7LvGRyIIjFd0fTEJUXipAWN4SZMtTg3D0ypGe20FOYDpXYi2ZfxTdILP0ffM5UVImfWTfn/KdByjjje0enhD0b6jrwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bv/LM2vm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bv/LM2vm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A529CC4CEEF
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753839593;
	bh=PO+QopykJpyb9EFvYLuxB/ObNFjBM6ANl6Lije8Zf8k=;
	h=To:Subject:From:Date:From;
	b=bv/LM2vmGodaNLBZMpMbw2Czk6gFbrv8kYuATLaQ4lhEsxy6M9KypQ4p2et24iX63
	 FlMA6ZfxffukZ1BiuWGyxLmtUMCg0zaGbwVqn9mTzHzHcaU8fnlVdaFxmpYq3dpShl
	 aMKaEkqeW3AE7RifBJjqhj9D+v+sUCBmfGE8JEZ65FTt8xKwykrpqD6oeCG2MvyInB
	 eRyJ4oQ2UiMBDOrbLT5I8NtXLvHQ06YEgaMy7E0WdqEDxO1brCyjGJ/7tY1FqwmEAJ
	 ZfQzr6aTOeRs9e8mFie3/VEtADNxxhgxqnOrfGlcUOxBZn4T8DbFCgemI1Z0cFkRCJ
	 +iYFGB7Woc/zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3C3C87FCA
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175383959357.30779.6168642225431644466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 523afb63418da8a8d38ef153ce91a346bb4378c1b0d7a67e1840979d78eb264e
Date: Wed, 30 Jul 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753839593
