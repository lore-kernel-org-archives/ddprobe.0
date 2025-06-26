Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1929025A642
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750925994; cv=none; b=NCNFhdFGOyjH0D1TdrarCJzsjP0tqUvKsJ10Q3QxKtbfmSjxF0uQzOyhCw5+a6obmalMeopuQ/E+fCmc7bz3enN9W7ilgIEAe8oZebNO4PJkKVzYckHsSA41ZcjkzT2Qs1lKA/tZWqT7mFuN+M0KjeJd/F6HaVkEFjXw/WVlYRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750925994; c=relaxed/simple;
	bh=mZic9VdLbyk5V2qKPPqzUiDlbgdEN9hLhLcJXs9B9CM=;
	h=To:Subject:From:Message-Id:Date; b=DbRrXbaB9MSL+Q939/Fe6b49zeKH6fbIONMbEd6YWB2Zzaou9VSjxAqFKAOeOMs28PKCNWljyrrG/6zqc3wlFINGF0jMFKRaNNome1v/JT5f238/gWlLGJPTAm0lEPCeex/H5aipptf+c7jpL7YsinAZbARzzE3PklaqfN64f60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i0xXxnj2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i0xXxnj2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F29FC4CEEE
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750925993;
	bh=mZic9VdLbyk5V2qKPPqzUiDlbgdEN9hLhLcJXs9B9CM=;
	h=To:Subject:From:Date:From;
	b=i0xXxnj2FFSzZr2RdKFtSpd2DJ4HHZfHr8tLOdiUIVDcuk+AIuKCGm6NmQyTxmhuS
	 1NuQ6XiLQklJmRwChCPmKEpAhm0helob2cacZhjIdCivqzYAQXIBBvtL4dCpdA2okc
	 1Mg6ouEw6DS8ZJt3m8mt0uv6XOnBpK//sBy4gZjJgJkYp0At0mvn4Qmoqvz16Yk0VI
	 B4dRclZ2eU8TV4K0BHuEMvu8/7t5bkogKsG2JSXYNaXvb8BoHYlAQPpFsOm5abLO0c
	 XzwG3kkqjRpaCc2D/Tse/hyB8uSCFcj2HcyEelruPFdCenq7lL3OM/kjXiLC2JGMje
	 /gzIrksfW66mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F750C7115B
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175092599357.10972.11174978720789622374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c5973de2ae92885b3b995dc9febac2d339c27c5e4f601302e1e19c70f54accc
Date: Thu, 26 Jun 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750925993
