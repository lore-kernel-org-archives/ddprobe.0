Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D8AD5678D8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 18:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790188236; cv=none; b=Tc2LQ0buxgb1SWfO6bxi5VXV9zkFf4zxPqY2iW2SM3ZXFlpBAOF3Dg/15qvpdjjJZRnZU2Q2EecNUiF1Nyq/TQzAGRTlI7N+F9WDWL9rV9+Ika+gwlhXBvGF1SP1l8xv5OWdhta170QT5Q13KWb5IurpgDjo6QtM5vVZEwjpp8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790188236; c=relaxed/simple;
	bh=qVDkJotX+p80RP3diAeHgVCwtLyT6v0SXBLvTu0/7F8=;
	h=To:Subject:From:Message-Id:Date; b=PEbj/CksZIFD3go0lov/5Yjo85lszl96KMAhsG2sfdlN9fcvJEvW+RRmdYVVS0X6pkxBoxx840Ssz5eg7O7jCtm00KnhQWRE9FHgm56oPDF4GBDkDwh7m/9TFB5/SU/KN3bD2iv24p3ZJbT4IyAOvVc8YZaHBcOtj6RPFhfTM38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q8TocEhL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q8TocEhL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D61E9C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790188233;
	bh=qVDkJotX+p80RP3diAeHgVCwtLyT6v0SXBLvTu0/7F8=;
	h=To:Subject:From:Date:From;
	b=Q8TocEhLOY4EtnDMb9R8F+iDHCvmAFg+jbo753lUvDlmFhD4JbL6BIZnlq7vk+IBN
	 C3S4wuK+/4DWY3iJzKpw2InqSMJnbXFaa3qKvf4kmxlaF93gsetumvGcynTaVA/N3M
	 0i2AYpa4J9iPddL8as4tN3+/KMRmvQo4KGnmNW6k31cSEW8MjiV35E1KSCyb5MG7OB
	 SBWojChroShI3jit1IKoIbzTRGQWoE+FVKKkcbYHxYn5wNKds7sVLFzTqsliFv7BoW
	 eLzB4DGwA3Q4iDD9tnlZdCck+HECLiGK+4eXJ9lRV4ew9IuBilKx//IPhVeskO505a
	 Sp/YYW8E0VEKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B045EC9830B
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179018823371.25130.10244083063684225885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f0c48d5a48d287a9afd337f641793169bc9d53f8a0565fc3ced93de9d1cc78d
Date: Wed, 23 Sep 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790188233
