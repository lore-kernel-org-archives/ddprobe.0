Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18FB6366565
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 17:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773597294; cv=none; b=VvyhxcPeWdRhBfZ45zy3uERh3axf3ohB2qRrsTt5/rsmsfYEaaFO6EfbdmOshjH6GRFhhmsWydYn1HszUKEmuPY2RXx7NY6JclHu+jBoNCJzrwuZy16+0NuJ+Ukp6LORik8XoTKvexdnz3JI0D9pGbafdymGUArani3D/L31umM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773597294; c=relaxed/simple;
	bh=60toMFN+03T4SCGrvt0zJc7lDUR+v0UT1vvfyUiRlzM=;
	h=To:Subject:From:Message-Id:Date; b=NgVZeCLZG9OvQKEMYCVPXhIXpQuOmeiQlj5SQ7for//jduiMmRF61TK3geyOOM3yeSl9/fO+tZm0VsFGA3bWRlChjMQueAvmOSDwO9DGCRr0ksl/o3ayDHtDiKW9WkYqqH/qA8qHhyig1RcCSofbFgIEnH6vBNWzQNjprAbt4lc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=McLHzCdA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="McLHzCdA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A24A3C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 17:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773597293;
	bh=60toMFN+03T4SCGrvt0zJc7lDUR+v0UT1vvfyUiRlzM=;
	h=To:Subject:From:Date:From;
	b=McLHzCdAux/r9NSVLiA70OjxKFV3xoh+7XymP/u5gADzvcmSNSx1N7iud0tziXJpQ
	 O52wHEHsJCgzEn7vUHn8MskYiDspR+26rC0ODANNOLbMnM7vJMalKP5LrYYHjvDm0E
	 6wrbrbtTboRAFEVeunLua4mpjBitAasJbV8KCy6gRvA6YnRDRWPHUGQ8fVaD/DhElm
	 RTOKTqwx1Irp9CF9Kw22pHIfAMyPKxIcJUOe1XINDrzaS8lMFPW68y3obzP60XXazR
	 DXdicwRdUdhONeRKI79Vpyc8zoqBblFyVWRUeG4nYeFIJH5zifgv3XQLE/X7wgvsHR
	 dDj+2yhRYbiJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901BEF3026D
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 17:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177359729358.31840.17753142037703474978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ba3a838e97061ca15038362dc080ad6b71ea483e7e0af1e436df0ea34c50656
Date: Sun, 15 Mar 2026 17:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773597293
