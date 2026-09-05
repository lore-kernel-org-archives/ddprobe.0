Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F1063B9608
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788645634; cv=none; b=MI23SXWZBUx5Zx8TahUF+z6FGUehx6RgoGjAMqb/c/lAaG97/3diz0siEU9xXSdzikFfO7Qt0oCOB854cHrpk+qdTyh0OMpQQT7uRaif1PubYWVND8ul2sxjMbbtsraIu31/9O1jGnkutBePM/V2inMCsNEVGS36UKoWShbeULs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788645634; c=relaxed/simple;
	bh=vTZZzFXl71Ivp/0YZiHJAq1COYJUuVOcjQvHPDNi/i4=;
	h=To:Subject:From:Message-Id:Date; b=GWwXmm3XuTxvUNlK0KeVKhRzmVHb4fQbiKiFn745+L8RaqvClS7zrUG080q7QZjbwb5NZtDlD90c0OPJaGO8GkBmPKmnM6IWKF/mZ7Dkg0ESePb9MMlZy8/65jokZhAqXbmk5Ii7ktOziEgpGSqzvKgpaBK6xV7AqVOVlAp1mM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EIDXNOKI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EIDXNOKI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D584AC2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788645633;
	bh=vTZZzFXl71Ivp/0YZiHJAq1COYJUuVOcjQvHPDNi/i4=;
	h=To:Subject:From:Date:From;
	b=EIDXNOKIwODQNPsXJ/pn97ddC5Vr4xGH2p7yXvNDWNPBUfGxYlyqtuK/G3iN7c1Xa
	 Dpg/Tae4HAcARQav0XJvVED52gt+OxTl/29k7uHCAFHaP4zAm3ldzR5FoGTmMIjToL
	 vkLj9qIPfnjO92Uu6CpFtVvreinOUtCP/EU1ROJ86lCb7WausYHSnw9H9ocXDAuMV9
	 6muNxHhrpiYiPEC3aqZBnaG7+tWcv8D6IsGM3oRPzk5lzZYRhBYDmnK+/TqB38dfRL
	 APgMIpL1d7U/T7hPRmSVsCdutwD8NkvYklmXm1Bwz1lpaQn0wQWPNOZbyl1o3ukiHt
	 Zc9lGJRu7iKqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2F8EC79F8B
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178864563369.13906.10441951987612330402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af57336eb1af0e419d31baa2db3a66ffee52f5808311f9a4d3c9f89cbec75f12
Date: Sat, 05 Sep 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788645633
