Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64AA239A07B
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791700834; cv=none; b=feR+MBvLRu5aXCSwVxfD/Hjuv3aSFb2sh9qFQeSkml01YdnZHvHvUPggQvctUuvIq2c/pZvG6muWaQWH2EWrqONDlS94JZ7NvfWry0KNp6xo8QhFDcskArCM+PO55kvTwUZe/aBcK66fCxMR2DLOs2pGRoIOt+6GRCgkHZoDkZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791700834; c=relaxed/simple;
	bh=BeCQ51n33riSErwCz+xGaAHVClVaws+ZHZHvt1zPmVk=;
	h=To:Subject:From:Message-Id:Date; b=Rbk6UZPuwjl68V+pfZ3icOYiUAgm5Xucz19t8vVV6SDF5lxpsirTBvQ/AZNGMMCga8PR+zm4+l+Gys+g/Vt7Y7O46LT9ZAdL4WmXgPsTFZtyyhUiEfh72oQAoFpoaqs8g6mNRjZ2sjRpIxhtAv2aL0SbxI9fGs/qxODKQxmuYHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V1U/OMNR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V1U/OMNR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D701EC2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791700833;
	bh=BeCQ51n33riSErwCz+xGaAHVClVaws+ZHZHvt1zPmVk=;
	h=To:Subject:From:Date:From;
	b=V1U/OMNR/SEE2TalKc8jsv3Y5i5qvhShYvPkfz4Z494A1PDC4FfCyDG4zzpBLcAAd
	 NH0DlFM0tMncUeC/BrSehcDVDCXlQiBVxbcWFTNRUndRbdu8qEMPsVGbsFSL47eXJu
	 K8oCjVEo9RcE7olWMyMtRyksC+LwON0lygbvLNoiEqtePMHc2I3FhP36CE/eKjduSW
	 AWWJ6xoBU2liLUTGT6SOXSbPnpueZ1uEIbWGPhYLGTyiV3NqyQW75O6+Wydj6OqF28
	 6NJZz8ytWnr+DgwbDsUgZqOoSPP27zfKmQYhS2ceUCX9PsPPogVsh2z3l1VeN7jH2U
	 jHQ/PYGtJqXGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2AC1CA9EBD
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179170083372.1346.10860646479384925791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc5890617abc6ad06c5dcd209254839a23669ccfe9b44ffdae73ffa89cdd4fb2
Date: Sun, 11 Oct 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791700833
