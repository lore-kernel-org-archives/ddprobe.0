Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A7BD391
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 05:28:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718342903; cv=none; b=HhresJFn85zH1urYf044VShZRIlj8EMbD3yuXh6n73WRayuY8CKNqqcUS5P9xRjA687Z1zgfJjLSKgyxDT3KX4I7bkdwpG6c6Hv9BgBH31vQq/1ocR1UKegKc6qh1UsGE3g9xETv2GKPjQDMMg9BJHWQO8/cPzR5vnvFCm8SklE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718342903; c=relaxed/simple;
	bh=h/088xD8k81WVKtg+yJILCKjuQoQ5RSNXA31gU0sFkw=;
	h=To:Subject:From:Message-Id:Date; b=DWuUCMGmQAoGUz7W6C4ibX8QekwGM34y/nrRtBdj50CSDKGUH6z05qMnArWR/wcdORq2X5yXBhxMtvFYi2ncfTVNrKpLKxlHE3zFVLcLbCyrGcGb3Q/ADBpwOLlTY875C1zJ1KUD45MFioY7N4S5W5hDC75UkNdW9vlecwZhdSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tFMucoEI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tFMucoEI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2196C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 05:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718342902;
	bh=h/088xD8k81WVKtg+yJILCKjuQoQ5RSNXA31gU0sFkw=;
	h=To:Subject:From:Date:From;
	b=tFMucoEIb/KSsYEnOOXF/Jc/sGdDE/v8ATYiy9n/AY2siL6JdtjGrqhZR4PtzJyTA
	 MZRh3YC1AhwYCI1tYlYkQHeuRNUVj0mQh7xPwxxiRdsa0VXNc4LoQlVMUDrF4ZZzfA
	 hEmpgdgovfs0LntDfAmreXNwXkKberBWgW/11nQayB30CIt6BET/gYBM8z6cyOiZPJ
	 ddvKocLIuaKiIb1w/tvpKwkDEPSvGms8n0ZBVIp4akV+/5sAZtYkKvLgqJ1zuvPDze
	 FgnFq3Pf2XAfjWH0/oyqeVhtykP/zvyhGphNni0EGmoTYxnDwR6/Gdo8BfiatjHedg
	 DskT2epfPF1Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C107DC27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 05:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171834290277.14504.3816483156641597945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5de8f4652d3ee5a0aa5f7e6874f69120472858cf083bf9bb1329fd6a2d72f569
Date: Fri, 14 Jun 2024 05:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718342902
