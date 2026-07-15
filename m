Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31CB8431483
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 10:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784110714; cv=none; b=hp4ITFSICkTni47L6K5T1UrOC+ntXUOyTktH0jv2KaWIuqdl5XPAkchkEIsAb0kmxlCaIyD8yfUgGSQ2C0syxjqL4U6RvQo0n2NfFSbK/d25oZkueQVb+u9OEkBImBrYNprKsAARGlgU7/Ipc7/ij9hOJ7rvQG4qed2X5hoC4Po=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784110714; c=relaxed/simple;
	bh=ETWSq8LtZEDtxCw/+yMVI6OWfgNaSCQW7XSWh83B/+o=;
	h=To:Subject:From:Message-Id:Date; b=ksQpf1jREduD2Hr/ciw+YHfID7IFzS7Tm+cmEasZmni/X4tZO9xIIxAvNMc4xkeEiHGRsXUQybNt/vzSkPaOQqFVXjWVAGSIDZXXw1sD7Ljt+glFqfUR9+YRWj/Mw0PrqdDFIMJxvcB7WnR8j5JqETYotrdlhK/OsKmevo3iCIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VH1dnrD5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VH1dnrD5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3BFFC2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 10:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784110713;
	bh=ETWSq8LtZEDtxCw/+yMVI6OWfgNaSCQW7XSWh83B/+o=;
	h=To:Subject:From:Date:From;
	b=VH1dnrD50kMtzcrfD7uC1H76z5zGyt78cGII187uzvi1sUhMKaPD1GODZjSVEUN5Q
	 Vdb2lH7unoFIlCv6sdlZ5B79nMgpqgW2+/GoNIRphBLm6WtzOUafaqOB6b6YZdIWPa
	 MczhwPDnJoil3R1ol777Gwoxf2od5RSz4wNOvYu3kfFs7EdONicbIsVxVG4AviuqLt
	 C+SZAvZEEkqF3TyvnDCsOgnpKSb1ZyJfVp4Iji6iDT9yBaQWS8JvxhzVqmHz7wWrN5
	 ZFu5UneyWueZHi292L6xMC7X1GJMauvo9GcfUx8llL65XCtDd3rJ64pK0uBt7sFmB3
	 jp0t/fPwK39Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA165C44507
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 10:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178411071368.23774.14372763060160064972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39a861fe466f79fb57c5778da39a5dead7653826c3a29f1273eb5e3845d538e1
Date: Wed, 15 Jul 2026 10:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784110713
