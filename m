Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 471ED383C95
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 06:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782282994; cv=none; b=Yq7V1xEKuWWtIGQN9l/J7NsR0h3JVy6VxaBBrAinYHG+BlQYXUaOrBbkbg5sESTLR1L+634T8KM+3ZFqkhREEDGDOIBKEDjbjzoR4slw4B88iBJsDSEAch3S+lMPwEexdXT1IbaJGrztFi85lNPRe+A1XoDtusevaUXp0PpsDf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782282994; c=relaxed/simple;
	bh=3pxu/Vi9pC60MpfKU2+HOe+AW8W28jcSjlLDMLVbXYY=;
	h=To:Subject:From:Message-Id:Date; b=Hi3Rvb+IZAOfA4+kkMmVZ5GUZeE35O1d+l3aziAF9NR859qdx74/c1dTz+UOYWmZnxmId3PeRufujZ84976zQg9PW/fob8fPoOrVND2WZhPBv6EMx0BW6C5N/0VMg4kwpdm2DCeJXNT2c9+hnTM8b5sRNiRsbd33648lDWTkHzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g9Omc9bi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g9Omc9bi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4FE7C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 06:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782282993;
	bh=3pxu/Vi9pC60MpfKU2+HOe+AW8W28jcSjlLDMLVbXYY=;
	h=To:Subject:From:Date:From;
	b=g9Omc9bic32CsdjvvoZAbMO/Sq1nkz/j4NO67B3giEKiEjDpJMYDwos5TEzMVhNlI
	 n7YE4TaK3AULk5LXlOAi7urFEi4pVmLMOD5niZeKRJicg8CYXNZN2269YJKLYEEpPL
	 8YP6+WoH8pdnQAszVJlrgb4dB5Kz73blqIUae5mMFR84Woa6MzSZhuL4J0W1Z+Eiv7
	 U4vveZbMezJxavKKsM3FwGPdPMMs9w2TYoj47h6PxnjE8pyELu1tPHGk7vY5h8ZeHK
	 zNYj44uivlsBp0bX2CaevaXPHGNvDsDuPA63ZqRsWbLZvftERNRUNU3OugRlC9Pdj8
	 T7fxLsgdq97Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0D70CDB470
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 06:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178228299371.30623.16401999589628274752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2946f9c08abe7916b0dd06bb57d7163f27868bdc465abbdeb70a161a3a35c5af
Date: Wed, 24 Jun 2026 06:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782282993
