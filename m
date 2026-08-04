Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5372038D3F2
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785844834; cv=none; b=e8t53NY2uw5/YQA1g5C15cm4PNocd9+zXNvtTSxLpgGVrfMUjYu4vaj7f50j8N1A+l3/ObboZ1gtG0yBG6kKqqMUg/16akcIV2B0wExIbsccr3RCRusWUS4CcdxNxSjNy+Z0Bgr3xZfhPqFN7lBlBOUMmPSeP+PL1tINsoAKHlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785844834; c=relaxed/simple;
	bh=tuqF9hrCNUJrvLI8j8s29B1rnpVskYnYGiTeK/xgHCI=;
	h=To:Subject:From:Message-Id:Date; b=YJvlDaYN73deK/Dfgj9ylDogm8rHLRXwMt6wNwl4C0JcKKPlRklNpAwhCnvEr8SfaKOFsFbJYXwOFXMOGyB8mRh33NKR/v4RHx/U0c/MEQ/v7Ph3fVXFB8T6+eXyaJnKjTr8hROVbOZUX9T7uyjSxfJLjIkA0o2kmYkhQVi6mVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jvTmSxwt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jvTmSxwt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA547C2BCF6
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785844833;
	bh=tuqF9hrCNUJrvLI8j8s29B1rnpVskYnYGiTeK/xgHCI=;
	h=To:Subject:From:Date:From;
	b=jvTmSxwtLVkpdYZsiZUShMicD08H1JPw92hNKADk9JE+L80sQhxrAPqqh8hgPg+Lz
	 aWfARgYKaitFgdiFSLGPJfaUYeupb/jJry9oTOYXq2wax7GcGbOEmEfPAURJawHKvI
	 9Fmf3gNki1SqMOy2DdyuRGv95LlA3SyKGYIGBxKimKQe2ZE+MwNp9F6VtelYPsc4tV
	 KRorjk6YHsB2RPXNhOwpc2U6wwEVfjEayMuu5hMpahR6t38yvVQ7LcG4ebN2Uy/8Bf
	 5d1RZhBlM3pu/NLO24zH9w73bmST4/8PdhQqirqrU7gxEAkL5JNvb83AdNEzNCNXdz
	 uy3X8iOTo0j2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B851FC55838
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178584483369.20406.8500824421402142013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b81a63506f1b8aa1d8a50af3055bca8dcc77c269b1716eb69960c9a231ba25e9
Date: Tue, 04 Aug 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785844833
