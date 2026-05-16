Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EEA3274B5F
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778925634; cv=none; b=JDsFAdNLF0Ja+96q+Nmu7fuYMqa+56S52dslNbZXtTPZHRUyZ4vNQ89wx39aqs5YOInyrMPrrSjPfoIZp1tcu2OLM+4H9u/WIqt0m2W+lN4+ylRMMXR8BwX0ZZJxj6nZKkqgWvMgnl/9QUe5eAxgs97CUf2wz0C874Xgiq4NBMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778925634; c=relaxed/simple;
	bh=KFmE7XFhoyKvpqGCjGZixUeKLZ1QU9QLhr3SD24idJk=;
	h=To:Subject:From:Message-Id:Date; b=KYhFzw+k85cCO2xrw1tug2mINJe7iBABoDar3KCpnmKolo2wj0FL9VK1LYVZ2WBr2htBYu5d1It1jEpHsmS30sJiBLar0dNJzIQMlgS6g5GPRomibW2mmWPsT/gO04RF1UtJ8lUp+7zjAUz4wojWuWahuSB0GZ962TfwF/MGKtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FMTTK32H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FMTTK32H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB1B9C19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778925633;
	bh=KFmE7XFhoyKvpqGCjGZixUeKLZ1QU9QLhr3SD24idJk=;
	h=To:Subject:From:Date:From;
	b=FMTTK32Hqg7vtrFAjaxdKiAvs1JYqXPOq0riWiVHrJwtx+DF9+ytKs4igGSOF9zQo
	 mmJw8w5i6d9qLh59n/E3XJkPsX/Dpmub2vFUZpgIlOuHjeSauFgRqVHB3JY+5WFpF7
	 xpF7c99ILQFx7XwaLlonBbRBDSJBxwbeIsbpVAMVFuynvuDw7VA7UPRhnBsA7jSkM8
	 52f49OW+cRw2LfIujJPMupchhPAcFpPUPXHEQbnwXdFfrs+E0csfYJKbIZkAo/3FqO
	 CaAAo/JnoMXTfY0XwDtibdcFrHckZQm3DgZMTxH5TRPe0azPcMzMvXIABfPd7/itN/
	 81nX/Mo3cM3lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B91F3CD4F21
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177892563371.15736.12602570535025169475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f71d0ae8ad5c2b0c794002b0134606bcef9004ca7864fb4c5f401dd8fb46072
Date: Sat, 16 May 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778925633
