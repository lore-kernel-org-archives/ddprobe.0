Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B87C306D26
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 04:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782276394; cv=none; b=c3yjmkFspNtYwnR3Q5ZgNUttEyj3m0x8o7SL42xBRDngcEH4K21BaVUqapXCNGbgC1u5IkLDj0FEtiq2Y4Ix5qqsIv0RcouIf2jbOtMch1GcPzMxQ5WqiwN5GBq7Hl+pCKBIriiK8JvEcQrMD3zGpnnJP0bXZKmnnQgWckyxrBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782276394; c=relaxed/simple;
	bh=zJvbSFUCRaP+GvkZIhOcv3rhDVgbEG52cKXrR1vbnfQ=;
	h=To:Subject:From:Message-Id:Date; b=Aj2n/1EFsxolM3yg+Ynz71ZW3x9OXkq6KNl8m5AA5q7m9erMS+R3B9L53KKOAN5fmZxl/PNSGqjSDoMbsLe9vQEP/5V+dVRhTQ6XujxqBHj8OLlbD6OS2vlefOzWB2m9iWafC7rEtVJJgRwk64sKJD8J4nAgSDFuik97IXoMDEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sCvqpMIb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sCvqpMIb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2FE5C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 04:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782276393;
	bh=zJvbSFUCRaP+GvkZIhOcv3rhDVgbEG52cKXrR1vbnfQ=;
	h=To:Subject:From:Date:From;
	b=sCvqpMIbsPs4W806nC9YUulgiXWLVSsSTmzY4kR/6weLR8F4l25kVTmcWev4E/8nJ
	 np/6zUlmirR7yq3LvF6+MxmzQaVsyMICkKUgEkNtPNZ1cgo4fZSsE9Ygquiv4rjZ3u
	 AM+ZAA1nymXLu/nKut4rZ5qHcF6P7TwD+IfuQRRc2BbdNwNXAB3AZpxl13jpVgmEcp
	 cz44huHcnyEGXtUwkH1sjnBB2/T1emBVzufEBREPhC0J6RsPV1G4AyTMwY36r1w00t
	 CLpizSuivqW7akNmKeffgCMkI0Uvz9pHeXKYqAOw58+JOLpb/KE2pGZLXXBQ2uKrhP
	 ASr4AngSS56jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B45AFCDB479
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 04:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178227639372.15825.9332692167420718616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68a3ad09eac00d8f590d495c4ff92eb756cd5cbf1974a94b250124e0cbcb0288
Date: Wed, 24 Jun 2026 04:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782276393
