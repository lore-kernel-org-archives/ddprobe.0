Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 235B13BD637
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 13:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775223334; cv=none; b=oFE4fx1mYFGLUgBBBJzGrmiRMon7xE2xwHX5KvWAZWA3wusR20Zcr5vlmOh6/GM/3HSZRo+2ex2fQ5QvSe+Z0Ptbtl0KmLa2V35BanvHjkLk9AzH53jbV1rJhtFo6Y22L0jtclVjLPCpSDndzowCX72XHuohTLOfK8/MiOxOTCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775223334; c=relaxed/simple;
	bh=GQa94AidaqCoYcXAjs4lq+iZc7OsalHm1dhEkbDnJ2I=;
	h=To:Subject:From:Message-Id:Date; b=ku9OtQk9Y+A4L33IJN4V9y9RuMM8cgXhhIgyBZIy+oTt4H8rsXUtbDpJx6cSrNszP+XYrpns9Qfz5NfejH1gYeUtZWQDaFZvELtjmmqRfS44xA5Ui5OUFuFgh7Bp49RbibQ3BnyQX+ZQhP+H6xQDC/TCny6VWPrvu4Cd5aw5oCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PKk8WMdg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PKk8WMdg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD0F3C19421
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 13:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775223333;
	bh=GQa94AidaqCoYcXAjs4lq+iZc7OsalHm1dhEkbDnJ2I=;
	h=To:Subject:From:Date:From;
	b=PKk8WMdgTpY6tIquQoMHrpkI0DtdrDJaGkSeojyInFSrMf9r+41k5Zv0PNinojrRs
	 H1kNBrI9tvXc0k5IPeE6Js2zCGMFivTAsDH1mqHB60q2v1Uc8aLaczKosCB2vr7SdE
	 QI+hgv2Vau7LYJxetbSwrSDU0I9NsTcPDX5v3UYUxu9ONqtsdQWtw2IL/KrYHelkI2
	 QpWaS+9Ri9hSCA1CKpsDK0HImWPmodCT+1BDfzUnay4xNDx36YlaS5Oj1TYS+GmS4P
	 or4q3Dei1L+pI2eA4FMWcgSOo5GeXv9eAjkoWMxNj1BJJUIs90y0jr+cBStt88HHyc
	 byNk/4ul9yU2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8B53E8536F
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 13:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177522333374.15364.10258655646324921895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20614816da92c3996bcf1ef06997d57047f336d8bbf607877c83e017c346a0d1
Date: Fri, 03 Apr 2026 13:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775223333
