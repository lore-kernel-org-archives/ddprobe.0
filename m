Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 292AB33A6F7
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 18:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778956234; cv=none; b=mvHXEVyY6iYtWfAxMwt4v4QE++Etj0wBfsgJV/6S5ScR670G0K0xYHG5O24L1XTiBalBhWpAQ8WvTnyaPaKTj/WoEoWL3qZv+IsZJ7MaqK3b2AnKiOU2JeqZMrqiRFrpt/1N1n90MBlYH9Lp4oq2jgEvh720RjSJA/owNgeXe4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778956234; c=relaxed/simple;
	bh=17jvVA88xg8Q27tX4kHkjthKTbmnMU4Cc7+65Gv80+M=;
	h=To:Subject:From:Message-Id:Date; b=nGR14OEMchVuYuIjGsWidK3e0VJitEdN+Ri14cJIyx1RHBo9EHHGyHwKMFaoDio/Ej+xSsfnsiJQDqr8DJwRnvqvshAjTEkeGNLuTWTLSmq8LUywBh9tjX1mHDTrFnqjn8I7TndnYSShe3tl+cQAMfOaRz7wLVP+RyIWybJqAo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VSOXlWWM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VSOXlWWM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB9BAC19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778956233;
	bh=17jvVA88xg8Q27tX4kHkjthKTbmnMU4Cc7+65Gv80+M=;
	h=To:Subject:From:Date:From;
	b=VSOXlWWMJiDHiMiq+jE/3XXKGsbhcsJ57ZaNAKLRUV+B2JqQepgsnnfDKat/SVnBv
	 NBTR+5pYaTfD/TJOFcjpEuhDAZ/naN2a05F2CIO5uAeMZnpIGyHd5ziQ2EaWEGNfgW
	 h/cXzgSZDOwQ9fMM0aVlX58AOzzVIFR6nPeO1cKFPZVDT8ge2AuCRCl0oIO8ptDqyN
	 4zoZvNMq7IuYmz979MJGS9XON37Lw16H6iZYdxqrwxc6Eidq4lT6qNUvTez35x/KxZ
	 nZs436AitHyzkJCzf8XolFpzEBUWzgyqwnaBT4lHuEn55P7ver+mv0leo70docQ/ca
	 1fdyjKrvu1s+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD6CCD4851
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177895623369.2708.324874597719609086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e1a84d7800f633ffcbe564da28546207c0f6d3d5248223274280fabffd01d51
Date: Sat, 16 May 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778956233
