Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D75DD531
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752367794; cv=none; b=owwyufTLC8D1kgdElvctLAwo2sHSclzJdopEHNQPIl3j8/gdHFIXqOCcE6mVqlPG+fd9SHbBVibjgbzdfmVqZVebWhlX3Ycow2kNt6vUE+0a1ZNUX1nP+JLEvze0KzuuX1CbvHaAo+wjBDRiz3UylIbvdpG9fAdAoKJbWmR9UAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752367794; c=relaxed/simple;
	bh=TyltJTpW0KUJIEa1EJDFWigoEKN9ZJbU0Oq7/mjOWYY=;
	h=To:Subject:From:Message-Id:Date; b=DrxpGaEdIAEp1YsXTtl39lSBY07x4J8Ns74pj/BsIdysXkk022+d+EsljnzlDUSCfkUm6/DgeECTKAH0PeeBMqC/qGed2/gcMOQHEGD1ZFDsGaKhH2Z/W6mkD7xAxAC+8QQ3MtyOqLKDPkQe9PYxLoloAJzWxxiIxpyFlsSsrTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OB4UvibP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OB4UvibP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4075C4CEEF
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752367793;
	bh=TyltJTpW0KUJIEa1EJDFWigoEKN9ZJbU0Oq7/mjOWYY=;
	h=To:Subject:From:Date:From;
	b=OB4UvibPbpqB7xASAzEMYJm8VtCnEQFRMi+N4viqAttyIKgrv84+XlZXk/LPD+Hhz
	 f1bszjSgciRw/ZRQiBZs+aqTOqvFO+h84arIaoBzJg+6BcZSai1wTuJjUc+rRIQ1bb
	 lO0vi6hmMy3F5uSD8Nd2n4WDEqDcM6u3otohtrQA1hcYEh8zRerBHIPnRe3EF+XL2w
	 QRj5gug6Rj1ZxevPAUjPhpEIZNxZvyJMFW+rr3tkoSLerBkxb3t/BRlnxLJMZ9h83W
	 kYewVaPiIeLf3N8hvbsm8SMoxI712KAD5zUPfV+q3CkioX8ClDKoDGFE0Z8vcYRJGB
	 mVy3CxKunr8JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91553C83F1D
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175236779357.14805.10888058630320796645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1070f29bf22a4f49a3dfa0fdc9aa7c867a68a38c0c5626447d153a20a39f6aef
Date: Sun, 13 Jul 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752367793
