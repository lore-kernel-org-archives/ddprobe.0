Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B9C0213E9C
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 19:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780256674; cv=none; b=S3NEF+td20oGPfAcFNePK/ANJi2bYRIkoB/cjAgQGC5jUuDDrD8d7H1GNeWkGZbLVvYVhLLAl71u9RhjiLG8H3xcRsI+F8ioJSepggntYU475ZtoQM/yRb6xY9Acsu6ZNO7E+Qz+v8VvIxSp9RKBLEyFQytR/3gVGbrhfNS18aA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780256674; c=relaxed/simple;
	bh=Q/AbeMbbOZ2GJPrzEWCY4nNpYBegODkD0vqWhmE/SLY=;
	h=To:Subject:From:Message-Id:Date; b=dUoauqwlq298hJL4sRIHNcr94nibZI4PAjyMruoVl2PGRMuZho0biAxRTWiPfGj4AYQ6rtGEfe6yFaa5I8t0KBcaZgycWporl/1sIHqebItf2izQdJ6YnNz8KPIK+pggPAvbQ6iDN/rFsi8EDv0BJTGRfuUdzovUKXIRD5Ssmnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lZ36I6cB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lZ36I6cB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C48DBC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 19:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780256673;
	bh=Q/AbeMbbOZ2GJPrzEWCY4nNpYBegODkD0vqWhmE/SLY=;
	h=To:Subject:From:Date:From;
	b=lZ36I6cBc9cNqr4pvCOBURcxBat8Rwd/qAvborq2Pj6jmf14uirDRxjrMXi+VoqoG
	 cZ5rnInlC5x9yVOA+7E2b4hmzztLja9WxzBh8DjC4BjiL+p4FHqv5O2eBbJ/mQ3QoE
	 Yvg6JjTCcki97IH0ALusrbaFTa33PmzZIBGVsLSniREX9Bh9W68dU0hkG7dV0RS+CG
	 eM8F8neliyfHZdLcJ3eo1a6ea1bhiE8iyPQSgiwFiMCGdL2PwifacdlS+fDjaGo6J9
	 mwOt5uBtvt3hvfJqxasHGbY3g2cqsrfK0KxL5tegz+LNs1M6VuqafIiAEcM7u6jJ0B
	 Vlr0xEgXNTA+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9E2CD6E56
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 19:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178025667367.6728.2926477690100555268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 731fe6b789c4d7d58a4c048aab6dc0ecf8cc8a1ad4d10c3792a68d04e6a0c09d
Date: Sun, 31 May 2026 19:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780256673
