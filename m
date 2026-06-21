Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6579C1A9F90
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 01:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782006994; cv=none; b=am+7137mnaU3b76sNYr1EIL+eickjhs+a2Felhb2WF0USn9BnDrhmlUG5Iy1UqaerTpPIvIckb+uLW0cBwjexTgqX9sQinWnuO0z55luCigkJj1C+Pqwk27y8s9SwfW1ymQXk3g7LnkD/WE98Tt7X8sN31kdXYyiWS9hv1JAdLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782006994; c=relaxed/simple;
	bh=wK4wbzjAO96YGOkYW06UQsWq0pq/IvMJKyBAfPYZ1P8=;
	h=To:Subject:From:Message-Id:Date; b=WTO1PI6MG+Dp1oNzmnsXpd+29ne1W5FDLxG7jh+Zvcbv0i7I7h5/uGY2/RtH1WtAuym3Jx9MLoWsQUQR09id5dTzgBGE9mWjPuSjagx9e8cAMZ/tFE8wyUT5hgWLG/vNsFwJixZXbzRnBNLnDKQoMC03gdlDBqagObFciL6Oxbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ce1hd1co; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ce1hd1co"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE7DBC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 01:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782006993;
	bh=wK4wbzjAO96YGOkYW06UQsWq0pq/IvMJKyBAfPYZ1P8=;
	h=To:Subject:From:Date:From;
	b=ce1hd1cosqrpFumPU1mrVxsS9ZkQmkLhDaGSwh1OAwsriKn0vR5HkPalO+ibojVZd
	 jn0SojgQZVHCG/V4XtNkG4setbF0EkXBUPekwo4+T5ynkZruYaBdgkHX4MPbU0Iq0X
	 ImjMK7p+6C2mQW5uU6Ri9wP+HdxyqDDv5+maHgCoW/CsCu2yf0yXmUzTQCq3XS/JD0
	 jbk24vk/B9FdYF+/uQIBJ1Np/ZjL6n6z56Owapi+Q2UcdEKGvosx4ecMhxH1K3nxp5
	 RiY1dpAPFVUpP41izUOALUg8mVRr1hlO9CmFOtR+NHtkwE+fNOHPCxHVkKxNc6/wtE
	 Jkr7xAS3rsrDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCDE8CD4F26
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 01:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178200699373.32362.4204116384209818581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13358f92c2128cbf8e7cf44d9ea3e56814f22762df2846f62ec4f545c4fe4d73
Date: Sun, 21 Jun 2026 01:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782006993
