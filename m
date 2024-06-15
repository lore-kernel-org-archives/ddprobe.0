Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 552AA1C2E
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 01:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718416103; cv=none; b=W075WNwAQ/5I+BZNYOU4nfN05d3dPiNuLz/mtT1oHjW2Yn2IG2+ztZHSmII3kBSI7uGf2kByG9cDdaLni28xZOJcYvC2icx7OcgrFvFkn0aKG47++cPK3/iXn6CnTQiQ954o8lK7Is+sqBN09n0JK4SVgxbnhkzi6DYYmrJ0snc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718416103; c=relaxed/simple;
	bh=NzzxA0VbpU0C0wcZVDGHZcxc8G9iFUgqJiX3Htp+MgI=;
	h=To:Subject:From:Message-Id:Date; b=M+UUU6Gbcv2yvuSfe/QIueORp+CKo/HO8bqk6UlBanh5l7my3+dhO1DwsxNtviBMAC/kBh7euNuOe75/8YPmyGRpLSZfu0sodFixKqCC+3gLsDyx6lPsCWwPFzzOu1yM/owWBcQP/vzKDx/BStAILZUwBSgBR2ZyfYGYsDnAXos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CbwznOvk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CbwznOvk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1668C2BD10
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 01:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718416102;
	bh=NzzxA0VbpU0C0wcZVDGHZcxc8G9iFUgqJiX3Htp+MgI=;
	h=To:Subject:From:Date:From;
	b=CbwznOvk6tlk6lOs06CEP7uWA3HCQMy50LWgb6cFmUd1EB/bdDEn7+Lpk7NhOKDeT
	 Bzqa9wx6R1SpjwNgNcEsFZImuEvHfhRNuWAkX4baMB5OCz8/CEjBUvV1OEcciwENoJ
	 ZmDV6hbCWzpW/KOAu4Mf6KLJShMr/4CV1qI6Vl0CB05qxIKkGSn2IPvHboXNmBuwIs
	 mok005dSHeYrYpGQtJzIMPx6ABquVWySvmWoWhbZy5Zh4PhUoo6oRGb1uqJ5sC84n9
	 j2540Ud4Ol8ZcdHSTxlSxurKpNAgb+D3GzvFd1Pz4jo7KCIeYgvwksyjEjjN6kkP8l
	 uWVqtDW82lJ8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA4BEC27C6E
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 01:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171841610281.19635.2180709765970715057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a58e2b32931cfed1676c3086cca1a8be864ed765bb8f91e790bdcd03dab052f0
Date: Sat, 15 Jun 2024 01:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718416102
