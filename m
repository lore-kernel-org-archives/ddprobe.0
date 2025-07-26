Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32A68376F1
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753537794; cv=none; b=FybVYUeKg+BR6QvdX5MTq5hacED/U6XvM+BM9RWy5Wxzbnio6RdZSTKe+frTPV2M7XoCCJ/fgc1YzjQqfO7k6FHh0NQ0up1SOXEzPQyQLScXxWLd/cPx1PkpcpZtjPVyuT4ww8yHu+btV47fvk7yggjGCQxWQ436mEPuzHrR4BM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753537794; c=relaxed/simple;
	bh=4UQcG/EsCTwYcPFqVQKEEG6weGDcQ8wasUuS64GLfHA=;
	h=To:Subject:From:Message-Id:Date; b=IKW5huQTwi1q3w/kPncR/4XIMYNLQnZUYK+lKK51LwAfyzaMDZfznmT6x6AKwaVmGOk/54OpRimB9MaJyGF+WSIWoFXRwxjK99P/vsKeeWOxQWTVfxB7hocJz1prpHDuslNDMHx129y6y5RoDfp66aH9GOatAGoJKWNsc9okdZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W0Jz4jn2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W0Jz4jn2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5AAEC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753537793;
	bh=4UQcG/EsCTwYcPFqVQKEEG6weGDcQ8wasUuS64GLfHA=;
	h=To:Subject:From:Date:From;
	b=W0Jz4jn2GDRokB4Hp2FOtIrxO4K2BTMYVDpYsg8r3UBuVrRIXqp6pJUY81pitem/m
	 3PKIJ1XV06fPqVfoWyxmvoPj5OPO8RwfJujKhU9+4vI7DS1/ubSyVMdnqA7ljFDlV7
	 zCzfQtU7RHEW1rpFqYjnMSLwvQfTQeIXuhs13YAfSOR2kN3uadMSem2TpNpkImZOqB
	 isOSoqKJNYuWv0O+vrGfFo3sug2RaenllubInOAa7G6mXAEtahKvJZV/TXEuzX72rx
	 vfOm3sQtx2+nMSLLk4cTeKWRPlg6wPtXTql1krS9M7TljIDkYWFvQLRhZe2qPCCvwI
	 HamMXpqvI2XBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BFDC83F17
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175353779357.28368.9078827226633714795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70641c661db3af882865eca65e222d0317bf81c3c60d4754c99bcb4bd30db11b
Date: Sat, 26 Jul 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753537793
