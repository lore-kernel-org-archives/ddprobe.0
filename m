Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41CEC175D5E
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728733554; cv=none; b=OuJsxLb7OHP30fG03TqhrRZm3qx8k4XosL998vpeCd0nqSdpSFSI/kIClY1iRUfQGhr1WdSE2brwQ7XThR4F5Sg48dfET/m1ZoMiyRN1bPTUEbgvwxWPxYJtHQ9fWJNKEdSaawPFS0d2NPBTqC9KjW82exhqNJid0S4no3QxML0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728733554; c=relaxed/simple;
	bh=fURTKpPY7tekE232czLISj9hLFBOnG9xw87iniRm/9o=;
	h=To:Subject:From:Message-Id:Date; b=P1t8G3lwGgzOfpHRqxiqUjDAckIbIrpKyD1Vjxvb3g4K4w/Dlx2V+LHfGJiEbz950B5MaJYsf3M20I+YgWCgt1JQThkbUYIf/S7t4DrTu2lKQlol2UrcFGxQ+4WjOCTOSpeEEnDHEP8WULFcrtUIV78rmUnd51CnsDippRovKMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pPVIK9kR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pPVIK9kR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9610C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728733553;
	bh=fURTKpPY7tekE232czLISj9hLFBOnG9xw87iniRm/9o=;
	h=To:Subject:From:Date:From;
	b=pPVIK9kRC33/oDfseZ0yZNhyvIYJe6DbV0dtsLPQy9UO4lrwaRVgx9em5fbO7jIZh
	 E1OYbPhczlkT+larJpCqjCk/JYvFWUlckeoE/3QpxOifw6Ubl6Uy1uDn9M0/Z7BjY5
	 zwHTMl+diRRUKBWFTdh+kjz09SRglR/t/LJEmtglWoKW3GMojj40lb1FCSPv7YRqsw
	 mpbqCAkOJ8e92WESrg8Yf7UqobDrANTlKM2w8dmhZZJHmMZUSbFWGqCWM0wfYDU8oT
	 xim5MAr5QT597317Gtf/jW2lczp6ca9Auyg9zGUuODl3kBAx1iskajBILHCAE7BKb5
	 nE1bLeIRslYgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E680CF2566
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172873355361.16111.6597645445778030526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e118d51d0c0cb1c518d0be7f994a157aedb3b212ad897654e3f9059742a9602
Date: Sat, 12 Oct 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728733553
