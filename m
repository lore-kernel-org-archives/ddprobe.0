Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 383583BB4A
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 09:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782639514; cv=none; b=rJ3i6RFLYnzczmCgewmqNm+oamVjaNvcErBPQQYen4CTAMZAsq+rHarNcQ14FYxbXM7+cWV5yjvEvtD6BEOHvSE8zL4/oyMX9O12SY68SW1htwu0Z74VQypruS+Yoc4dxAXPYY/NQh/5wvCf4Ib3hdsJujvKqfHng71FWax5R0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782639514; c=relaxed/simple;
	bh=0nOiPcavu6q0qKKBTX94T59tVOvCiMJiXa5gmLzSzwg=;
	h=To:Subject:From:Message-Id:Date; b=qSk13bSNtCTx4mqGr6iGPvU4EKJs/HTij/v+uEZ1FLl2apso+h31TYniNseIuiBlQuFVU+t389RSYyZIXLcudVuKlsqW0RFbTonBqKEu6lqXizF7Q/TCIWUVaAnCxDvMsm/6fotCSTgi28GBYR/vCIaeZYyhtzOuuzFVuOV+fcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AGljc9oP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AGljc9oP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C67AFC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 09:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782639513;
	bh=0nOiPcavu6q0qKKBTX94T59tVOvCiMJiXa5gmLzSzwg=;
	h=To:Subject:From:Date:From;
	b=AGljc9oPjrlCqJznOE9zV22pt233aitYQcPnLrA/2rxFhH14/oL7D2lMhbRDzXzGR
	 L0zRsQ0kLC8RS5xzvFh+0n5Aq071F3Jy6/q/6TlaXREtnfdIqtJYgeYEombF/ganyT
	 XAXvHkw6fzhtIFMRlFbPu2pGSaq86H39rVvbly3HnCL84WjuhyBDvEGpih6PQfdGrQ
	 9OR+ix2085+zXVhdqZSXh6Qr0jCvWSnM1itU8OcDSeeM1rVViwaloYkz28mL87HVLB
	 5r8xQie75/pbnB7ZTxhJlimnJUh9sVdqj7gi4n9+EnBeYKHpr61gQ2rhOZcYSuDN+f
	 /EsXNvxQXssAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4A8C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 09:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178263951368.31373.5289096495087830217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59e2cc9d61cd6b936f77e612600af79c67d534033c3ea5a5d6714faa7672cb26
Date: Sun, 28 Jun 2026 09:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782639513
