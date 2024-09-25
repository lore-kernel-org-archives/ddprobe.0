Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 088C41CA85
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727277354; cv=none; b=lAe5MMQUO16gnWwASgIiheIKPgIH11nt4H8JgiiaD+bIeyTXXB1VPwiZmtGsAOXCa07uPPW5dM05hOu3X28lRNPo2Ley7XQpz7w6RBJZHP9GtxjqVipCEnq8Sqn497rQpKab6CNxudCJ1SxoHtew6X+enJyBGo/EgVA0PMtWpi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727277354; c=relaxed/simple;
	bh=jTnZgSYs7tb719t2JfkOwHTAh1spGQ/iD546jVFtvEs=;
	h=To:Subject:From:Message-Id:Date; b=biuy2Qupq6oagDAEo4+54Z9Kdcz1lkIxgWu+mj45fWsmCxW2i4ZT9QdhgZd2xWek4AkiUodXgMn3sk/LuqtrgZPAMRcZVbsyZb4zUwK4Y40Y0ed2CVOLBTzg2SEpPyL2FIEZSAnWnOQh1eosBBIynv+CzUFvpUs0kj0mbwjIsmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dfqHsOB/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dfqHsOB/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8096C4CEC6
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727277353;
	bh=jTnZgSYs7tb719t2JfkOwHTAh1spGQ/iD546jVFtvEs=;
	h=To:Subject:From:Date:From;
	b=dfqHsOB/OrC0ku2nIgoBL7mci9u6vLDveGqYfKUa4C2zcWvqiUkNWv1W4i11ayqyy
	 AvlALgpR1XRMeNkC+MW4hRp3qtWLECcZeTPHAD+UJQSRtPUG9mxM5mx1RdcMe2T/JC
	 emNWnm7yaUi+qrSjXIEyK6QGhf4fGykPuS7Xix96bP82Std6NTgD2EQB20qx9ppV8y
	 L4i5SucEAnA4VVgWv1iNgRJqssOssfWmRwZlDpulsuspiygSdDyt9e8PXIgzXBkqGf
	 uU5v1+OmdcLYDDy1/Dqo25GgixqU0gJ35DewQBVPizhdfMgdSFUhyAMFXis9X+VY6p
	 QkTs1e8whH11g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B27CCF9E2
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172727735359.27439.5323610751947774149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab8ef4f4ace5acf79a04748666c1957bceaf9ddbf5f68f36499a37926c1d40c1
Date: Wed, 25 Sep 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727277353
