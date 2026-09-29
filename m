Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F82E361669
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790668834; cv=none; b=EKc9BdqPRt3bPmvpIxvd2fsFYMAb8n0ab204bSt/YNfuYkl9AzR2e3QBKqwl56r+29kmeG8yHQ4FcJNeU36W3BRwy6Fpr3DxxdnMG3vgdHbtfQ+778I797vmolYXYFucXFkbOE2L+10/BJ4Qa2xMaCpVxQM1+Krr4WXvwJOpSUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790668834; c=relaxed/simple;
	bh=3Nsoy9R/xJicLVwRFwoF8Knrd6PXGG+939eIBFMczfk=;
	h=To:Subject:From:Message-Id:Date; b=e1L6EG43cil9FDfbCR+rPjkdqNXNeE6WOMZl52a+8FjKHqI1G6U2tjmkapRmpc4Pvwyxj3OdPzGUM/Fo/zgATnNlEG9vQPbO5lDE9LUnpCftOVriKd/GcQveQZueh83V5WDR2D2JQAiO+LWm5s0gSmWVWBDpA5VNf8Awfp5TBAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=quK8xl6d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="quK8xl6d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4EBFC4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790668833;
	bh=3Nsoy9R/xJicLVwRFwoF8Knrd6PXGG+939eIBFMczfk=;
	h=To:Subject:From:Date:From;
	b=quK8xl6doHRBRjHdQjqFym9RvxASC0KXRW9jjhhOFKuboW5PfZKM4pKt5r9jKDvDi
	 xV0b5EMroLbyK6JClOX/iLBa1YvotnkveNnLS+w/vJ35XdkPEDVYOpVuPtGsvcRtlz
	 G+LUUS5sAe7/guHPWc9a29V8pSYoIll8gXK9+J6G1PPK+QiZ17aCk2W3xpM25UoS7L
	 CxjAp+pyeoNc+FhBaV2ry9oSHKv+F9mucKzL/v5DRRPlaGpPZ9IHStG2soxxNJYJmi
	 JGrlyqaIrasphR3GSiDEYhaZv+loOdfwBIPoCKordOuiy0VkkhiSJB0EGlx4PpRcor
	 o3mtVZeGTWETA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0B54C9832A
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179066883371.1687.6609480313635384257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f39a0dad780dcaf3507312b67a51dd170ae29b4a0161d2555d7e664313b54492
Date: Tue, 29 Sep 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790668833
