Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28CD5202F6C
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729268754; cv=none; b=TNskUd9wV5o49Yg3jk1u13T5wds3EqYtyiplMVrEMygj/f1Qiks+OhIm3O2oyu/Y3pHXgjRaAcmfTlRWlFN+H6nNHn3meBXmX+nxM3OihrnVsF5nFvJ+gbOYC8VnVoIDEyKWV4yUwhPL80/ZJ3ziP7WYl4qgTukwwKb8G5hGZAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729268754; c=relaxed/simple;
	bh=F5Dc3KHJAgW0D4Xx782p/BawZ/reL1jv6jJjFMP65H0=;
	h=To:Subject:From:Message-Id:Date; b=fAUAc/g5ctsqWp2FpXT6tcSIINAonhompuEFpOz95fUQhVU8T7ikDxZ7oFCrCT1ZP6Gzcgy0Wtd5u+g7AgFc/I8hA931FOVidztDzbkzOMwoQH7ALzdEtL19UYnn3thX02UWe3SPeNUaAnEO+ngVuXA5QRH2ZZ6DQLTPcda/dwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aXA5dnoU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aXA5dnoU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6FFEC4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729268753;
	bh=F5Dc3KHJAgW0D4Xx782p/BawZ/reL1jv6jJjFMP65H0=;
	h=To:Subject:From:Date:From;
	b=aXA5dnoUt+zzGUCc03qFxce8FkBiPt0cmjPCpcbBhqTbE7FtTDG6IaBmdbbh3gTCv
	 cMAODhvjuQX3dii5fYv5SFBlWChQVCMLoVchlEgNOhoY90/m+3+Gvi7HjgyI3mG4jD
	 son/inRpDiMJHO9zNRZ2qnlFYouJv0XupsOpndG+zVCXUTqbr+P1BUhrHQEZMM5fcI
	 Y81z8ylbl2qjiIXS49mhKOJPcRY3vs9on5l5lv/JjtXCKaeHVDLzQj2Xs0jsnoacA+
	 /PFj9e4E7Q1V1bE46MgqMfzxAj60F7LlRXcXokhnFhlXTMQJ0aO1xAewaLaH6HiXVg
	 6e3wOvf6ydkHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A765BD2F7ED
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172926875367.6879.2711286375528550998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d93e9e6dcd75364d2bcc495d211e3a746be6df90ae4562ca36e6a870d1bd29cc
Date: Fri, 18 Oct 2024 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729268753
