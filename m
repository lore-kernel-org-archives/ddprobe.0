Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ECF12264CF
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760591994; cv=none; b=HufxweqpirUsdmonq0kIPjsKy4z/V6HyqFKIrLDvUOqFu4fsL/TlBZB9x996ZARaFSFihj/7GwdUz1K7E0g+s88A1C9tzKbtLHk93iTqXOE2Rj12XQdLedA1QujbFYEpAXp3EFmtFcb5KKadYZ4vCQCPf2A44pACxwfR6H7bUNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760591994; c=relaxed/simple;
	bh=7JUVpnPgJ1D1O0lMcnMfQrCDD9qO1qPErWRcoEodcDE=;
	h=To:Subject:From:Message-Id:Date; b=D7WOCFVjpcUBSxRj/ZP/bcg5UTNziFJstMLOWFDZebFhwHNJ7YjWWss0hgBfveECm3L+jBt/jhoZpuCUsgAo0bIi80CSXijowUH/kV+QA4uzelWKEsr2CSpQ1Be9waMx70DXNhGZe8bVjzJpVZTnfmaNMPUTt1ySCeANB62IYAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kNPuFSHS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kNPuFSHS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EAB2C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760591993;
	bh=7JUVpnPgJ1D1O0lMcnMfQrCDD9qO1qPErWRcoEodcDE=;
	h=To:Subject:From:Date:From;
	b=kNPuFSHS5mo3yCXph6nZS1lCtSFSHOQmImwOMgA6Ppq6XBULxoHVw7EMFhDZoN957
	 g2OO4lxZM1Cfp0jsXRaAzGyn/KEVRYrh28yfvuBAF4Sblkx1K3G2P3suBlU1dMoB57
	 1JZaHHsj2kHO43JeC23vloaxvXiPJgpmGviS8/e09fsEMf7QA19PWSNDiuUy1DD5jm
	 qwojGqUlD+o2Gf8TMpUODbV1d+SYnfl/7FMYdpIUmbO1jZLzHVCIhkJcxIULvGTHT7
	 61EZb3TclBPZzgZzPXXZU5ak5KqSkcYpCr7v1V2zAnDX/EBPVazIgdPi6491F/0cXb
	 k0ZX3t6jPYrQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7EBCCD183
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176059199358.23609.10164304246865325997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37b0eb4b26919187aa49d87d376f59eea9de8f6d1ba563507f4b071eac9521a4
Date: Thu, 16 Oct 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760591993
