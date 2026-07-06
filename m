Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3500A1CAA78
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 17:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783358314; cv=none; b=PdXIhMBIkthLxoDXjOTc3G8YAU2Zu0F8OfmqF2Bqy+sL7um9utqxX0CdP0DfFPuq1tGMK5hpj439Bu55v3n8Vm9MuaM/X6tIkd6KgkrhYMYJvlaHrAzjaGL4gSninQ/lKF3T7Y0twUJl49SMPeq0rpFUhYJVWcGHxgCu7kTfi+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783358314; c=relaxed/simple;
	bh=iaASO83fkW7LIVaeIutyi0r8z2pbzaxYs2FIkoKKziU=;
	h=To:Subject:From:Message-Id:Date; b=VcSBdMuyo37SCF5/wv8Jm928P7wUFF+9ew1X53Ly4WK4bJK2B99dPT/AgfYn8JlxLv/eaImYcBPJwL2yRz0iyUk2EvgPdLMyHnSNMPp2yp7R36ypADRvThBOJsUq9AdTeEMtah2e6RkWE1tocgWLzYHuM36yQzBsXHHKH/zEdAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IJEIhVL/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IJEIhVL/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE915C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 17:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783358313;
	bh=iaASO83fkW7LIVaeIutyi0r8z2pbzaxYs2FIkoKKziU=;
	h=To:Subject:From:Date:From;
	b=IJEIhVL/HyiUvA1af7lJKum7I+nQNnD+Yt5t4+r8+XcS973saq3MJiVHguDVmDNrm
	 pWaaskgi1ILUf+7e/Y73Pa26tR143NdeVCDTL4nAnmRGECULtPbt1AzVRfv+8qJlw8
	 wC7LXdHXw+vIq4tpwPj5rCDdu3gkoR/IGlNBPPw4Ap2NAggjCc0AsH8qDwGnJz8/c0
	 NE6Mx+aJ3C6+BsZiXVaFXvW9GzywEegMEI9WJwdDuUgMA6ePyGfs9eCTwrbvRMYNE3
	 T5npiG3Z4ulfSrOHQqL5R1f8ZUWKEa4PK4p5Tb2v8P29j/YQh4ThA/v53BnnhKDAzB
	 ukclFalrQMTVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB281C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 17:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178335831369.29345.11296138198908456377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 567fca15a77a4bb25edc56ca405c041bf106af7dbbccb4d229f6928f3275b794
Date: Mon, 06 Jul 2026 17:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783358313
