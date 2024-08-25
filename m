Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41ADA13D504
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724579754; cv=none; b=ojCT1TU2pct/6JrBQPlSEm2fACJQmwxy+deZIQGRDRcaDBeYhnyitRAdqa9XtGLSOR6I1Yd+VCBfp+PQticXJ/xAxtgwglE2NOL3feWuGz/MkxGL4gI2VX9VT9Vz97rLrehSQ/3ALFjqTWvW73qMFgnz9zz69/IKQTZGAhDS/GI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724579754; c=relaxed/simple;
	bh=cB+hc/ZceFutVn7Niw8nKrknxYQ6bIaNO5G8I8jsVYE=;
	h=To:Subject:From:Message-Id:Date; b=J8Z0UddVOVEcTuPq8v6w7O/DLm0POFSznms7MS7mRf9553KuNZRiJzboSrKldKmJARrCndCZVpJgpbHX0ubv8+EwGio8KOI5FQfrGI75iMBVdCIzDy2gcvPpjUwGAcPXcO0fJ1zNLqa/YjavDu7PamsVMpDz6kmIUvB82Zo04jE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kYAwt8An; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kYAwt8An"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B35D6C32782
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724579753;
	bh=cB+hc/ZceFutVn7Niw8nKrknxYQ6bIaNO5G8I8jsVYE=;
	h=To:Subject:From:Date:From;
	b=kYAwt8AnZAGJ3lJw/A3Bxz97IF1xSLHYOlzkKS9HIT0sxjKIpmZmC8jtRZtug0lJh
	 J2LtB3XuWLdJWONeeD5guUAGMqPOyQvo1zI1G925yA8GzFtvpgmOXTsOgxtqPjHs6A
	 X6qlHRgxXAZo6AgOCPVMsrVADtIFQFDugCzt5Wwf/v7gAa1yw5PevJWiF6mzf+ltXE
	 NiwNTGVS4FNfbSB4lV/ysJLSEpJ/2nbk38f8eGDmSBKz5lOpRXTc4VOXF78n4Ukleb
	 CmRVNpvTC/x8FG8BvLi3wT4XgPd379T0ttFDuSLug/SBdio5sajm7cU713iIw9WiRf
	 KgR7uo5EIK1bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 995C7C5320E
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172457975361.2082.3610713623071225545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5cffc91486181c560aedf624b21be9b743b4ed04b427a8ee3f2964f56173295
Date: Sun, 25 Aug 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724579753
