Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C0FE17B506
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 02:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778810434; cv=none; b=YUCWK1drLC1c4RYvtCZlhsZcXLjcM2vTfhXKeilVuGwSzxQWJQGK8qzozLVNQ+nIbOOq2eF4e+cg49dV3piy3OPCDfIEv5Rgnj/96MGPmcy6Dbnahld0d1UDSLBBL8mgaNfGxJksibFDxmE/5fVPEmkEb047BRLyRGAQTk40KfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778810434; c=relaxed/simple;
	bh=OXysY/De6konZqHtBlkY971wmkXS10DJmpuW+JyaEJY=;
	h=To:Subject:From:Message-Id:Date; b=FjJ6AHyLdEYdsMyj+p9S9f7O+YL/FC2IicWevMzl40yhlcoWejT3kaxkWLE59BvEKZ7SQwrMMK4WkMtwJVmF/CwhSVA6rmG04h7yqtwnGEvyTicnqFHHMKOJQKdCxrngNANKTMbmTa186ly3Mwwx/V9ZnzJwvNHWNZ1ZViBezbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ir4rVuPH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ir4rVuPH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD13AC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778810433;
	bh=OXysY/De6konZqHtBlkY971wmkXS10DJmpuW+JyaEJY=;
	h=To:Subject:From:Date:From;
	b=ir4rVuPHKLaWvGKV4RPL1QvHtXe/F0O2Zof9uIp0abTs+R3r/cRfDWHAj6mzP0MPu
	 9mR7TZ1GjZDwYWLS1gkwvJtNX73ipOeEdkA0J9pTE0eKmsWDjJVc1IjYCaHZUsPv2/
	 Ishvp852drXTFOhgkECkm3bnTMS1S33Yp12j0b+9+ebkfgk0sVD/RMlV70f3AEEiAm
	 b6JyP2H+/JVtjmPP151SUAhpNzyl/4GaPlMrNnK1iyUJTaaDvsQKUbcy1TFBnM3gIY
	 wnMMjeaSezTtj0RMlYTOLl9wtc976sPt2HBgyhGaX9oFQhexYZaC+Yvlc1hfFgLB73
	 Kwxe9FCf83YZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAAECD4F3C
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177881043368.14327.15631160670805641558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0829326623712ff4dec66cbf9ab8d439b8b32db81459f26fa5c05f93a1ca5d2
Date: Fri, 15 May 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778810433
