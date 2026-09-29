Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DEC33AEB38
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790703034; cv=none; b=KEu2i2joLBBG8fRyhpAmm3gXw9dEJzBf+4BEY/3Hfrhh4KB0cIWyDTtsEXozCemC+2JnUICsODYL/RSohiiAtJzgS1P1HF57y8ThAzVOWxHLNAhAjouSrZTLzqEVyTkYW64rPsRBJpItAzin6kwl0U6tnac5Z3sKq3P9nBjkLV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790703034; c=relaxed/simple;
	bh=vGAOoDNWSS18R/iHEZITKs4P9PS0Dva1BxH4CbDrO9g=;
	h=To:Subject:From:Message-Id:Date; b=FIvliU+grFd83ac+aQSOawB4tvUC8b/YEZgntSXXOwh0bR5QnPzsp7D4ww4WRYxr1jauGvAYb1GcyKrPKg0b6+4/uSaEhqVn+WMEQrBQExv+peodt62Q/uvvcli27TrTK6dxN7Hq71ABo+Lc8Iido3D9dD5iA2Pf0y/CA8vDLB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ge2t8xJK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ge2t8xJK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D04E7C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790703033;
	bh=vGAOoDNWSS18R/iHEZITKs4P9PS0Dva1BxH4CbDrO9g=;
	h=To:Subject:From:Date:From;
	b=ge2t8xJKyy3bIgZKa+Qm1duZD+PjT782yoiFF8ZbAgsI0fOycjbK+rtJmHUdXyYuR
	 F/n/k3QblYlpljaHcbt8bvMK7Ja754tfItWha/CDTBnH2yvvMj6DG67mH9o/xLXmEz
	 qCcTbsKv5bE2Sa8rESHoMOJHSug6iV/xiluZ/8khbwEIOV1AhQ8FkuCJJu2tVRT4fq
	 ATh5bmtSpkiOsjq6bCr/9PYxujEFuFGhiUtfFfdZf2UD8jeceIwh4mb3UGw/9fWQfp
	 yBkKo/7yASCqMeIAzvR+Moig5goUYAYxj5ZIxutNAg6ZEcUR5CvJHmmY2LJL0+qs6y
	 ogpmZYIG73XBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE6A1CA5FA7
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179070303369.12189.17123786792100344785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5faf9d0bab00c86edb74b1181c5c56528ed71fbf1e2e202071beca893b38583d
Date: Tue, 29 Sep 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790703033
