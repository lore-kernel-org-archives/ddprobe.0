Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 231CF3A3822
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 08:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785313836; cv=none; b=O4H8n+IM3zzYNLxwxmgjBdky2e4laQdjbMrD8Q5rfATsdnK2Qqg1FMkhyPuoowJ+97c9PMSjRTuFoRHXiNB/e39EtK1Mr+D486VMV6hfXIjuXl+lVSW6cosIaOw83MEIrP1S27uI8im5+vVu06QzZa32p6ax6ANSnR29RGJNdoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785313836; c=relaxed/simple;
	bh=KSwDgEU4HIu82ErcPeZotHIkdFvnJRqi6DKAkLqOQrY=;
	h=To:Subject:From:Message-Id:Date; b=HTc9qnUTDCKobNLPEWKIQQOLaIQx+uhYV/J/AJMyhu+2AjAzeLJLItfRo+XJ5jU9NerGaB5/IIkQbg+6m3oCOKs1a+4x/KU+ueRphyYsMADaG57+WR/oQofcNEGDJEWoSO2JNhIAOknH+g272o9rG2DE+2E5HF6+bEZf3yFzzAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BKPJuKXc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BKPJuKXc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDADDC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785313833;
	bh=KSwDgEU4HIu82ErcPeZotHIkdFvnJRqi6DKAkLqOQrY=;
	h=To:Subject:From:Date:From;
	b=BKPJuKXcxz9ZRIlC0LaddhZ7BDaUjOIFhyqrNOOs0tCTdrWiSbOH6JbSiPMFY4QZx
	 9SDygGZ1VbRr24W0z8o8z6lRGB7Wp1UuPW4n5oJeDoU6c0lWHSXYf8Cwwed+Or+RHw
	 nLiThvE+WjDJhJUqSJO+ppzHaryES2KbzhXn8c3pTUQQUDua08G1YDFey9YVsT/9Ee
	 q4wa8VhSqV1SWOu3+no2Jo7DIv9yVv5CRHwaq81WUUiPjtmTnCz8idbA2zURyzIYMi
	 JxyCmCxEr5lnJRD6e5hqxmhgYq+rFug6T+D3jA/olHvfbxIENw6ITVa5y7kzo3P9Cl
	 xLiBCoYCifHQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADFCC53200
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178531383369.10053.10719560921394980681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edcb05918f47a3707e888bf24ebc03d0c390257d95f73c0e345cc9cafd0e471b
Date: Wed, 29 Jul 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785313833
