Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56F0E33468F
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 17:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766079834; cv=none; b=sqf/PUC+Qmv8qUNE2KBQ6AbK8b6tOnnlcHVckKq7XiIdIqAvmPS4yLcJvAM0ni6slVw3cCimTEH5XtRCCXT0aKgpiE0tyQRDgreNqkbbPKewTUAQV3pbR36rDeetfamNGyQDkspoTcl6bEbCvA/ydoAvVd6pVl8ngpmF6RBzH/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766079834; c=relaxed/simple;
	bh=ldb0I3tp+M+cnLYH7fHaikgsCpOLGxkTcT9IyKlINO8=;
	h=To:Subject:From:Message-Id:Date; b=BVKQi+re1nMcGgNpdH6RgBbWEkTNXp+6OnZsY2i5Wtxh3AdF4+TPvEkKfNCIkOeRsc43O04DiklwY1DRF86zzVCki1xt27Mf4uWoqy3r7+zglY52AYn3kMnKRnpOP31kvzUKgZ2vZ91idyukTT13vLE6DwQZXHwpeobZOOXUMAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qgvq7sHt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qgvq7sHt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2711C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 17:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766079833;
	bh=ldb0I3tp+M+cnLYH7fHaikgsCpOLGxkTcT9IyKlINO8=;
	h=To:Subject:From:Date:From;
	b=qgvq7sHtMFc/bwOGhQs2cZ6Dda49Ghq0jMH2CsXz1HzLedXM4uhYha22eDyBPPtmJ
	 B8VtL7/s+RSGTeDSOwFnR6fWj4PnZT4raCpYFM6NT8EF3zHL3MeXi6rQKrJm+a/vJY
	 3r1K+BABbLC7I3EhyjHOqbWCxMYtgu7QFieBFR4jBwGogMuKd8EKA26IBRog+EzVT2
	 AWrhE4OoYPiw6VHQ4Di6TZgQWNI+cwSImQgMI3v7aJ2znZsrWZayfTY3s/YRaDkov8
	 A1sEfWlVGfdMgOZc9YckQyn2c3sPPjPaUbFa87Q1K5pyjKHPaHFYGhGw9UJPhaG4iz
	 9/LiZ3Y3XasbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929E5D6E2CA
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 17:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176607983359.29015.17338213208472132432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a480244344d913fe7e6030bf92f46b90e1199bdd1c50e74272df50f86254806
Date: Thu, 18 Dec 2025 17:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766079833
