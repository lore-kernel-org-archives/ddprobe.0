Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34B77373C04
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 12:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776429454; cv=none; b=YZyd6UF0W0ikJInMrvRlNKv7O7cJCLWvpjqD60lr62pQzirOGyMc4zuy0HmhQ+u9eY757ujQOMBcVLbHMgU3UkkjcoE6zVlb8tJuXB6LkN/UcAN2INGZdh0/WH10zfRKFuF5m4FnZR96UbyTRjho4ID+3cfedFZKk87mgz3lXqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776429454; c=relaxed/simple;
	bh=tZ1iQwa9mz90sAq//Nucv59TdTQ20pmZpXr55ey1V0A=;
	h=To:Subject:From:Message-Id:Date; b=GY0akldSkY/onAlvUiVjs8gjA0G6YQHUa+dVetLlX2a9gOaXGDHEIxjUpYvJPnVjfvNAph+6foVIayJWcKzB99eF+zaFVAziwsP/tNu56vWP2PFa2xdbfj1bVsgc03FF+aI16fCMYmWVTuPlTwcilo2wpr7uuajWAWDggQ2nbVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SzZ5pwj3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SzZ5pwj3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0C63C19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 12:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776429453;
	bh=tZ1iQwa9mz90sAq//Nucv59TdTQ20pmZpXr55ey1V0A=;
	h=To:Subject:From:Date:From;
	b=SzZ5pwj3wHoa2LpNKy9Wps2o3EvyTaBw3Lh47xd8vGOV5iqRc5DdWTM13bA+kCEe+
	 iNq8vSVrwhZIy8Bk4iPkY3rkV0Jsf6aNhKBA6YG7aHo4Z8fpjrLGJE20veVsXiYEGO
	 u95yyZ6P9ePjZiK086gwe7/iVsOyDxb/xxRoYptMWMSb7d/8HO5VioMZngizInrskx
	 v9GCGcHJ9baVUJLifvxjeNshPD70ZvIJ91sWqmg6Vzv/Q332Oki3RXezXzydWdgkDS
	 l5Ohnp0m0RS8214npvKfqjQMoiz5142PI64KFEN6wBT30thrdaLa3pzxcKA2QBjMH/
	 Yjmq0PXQglLBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACAC6F43698
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 12:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177642945369.15240.12426612750642850749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b01612ff967f7b21dbe7b189c14d3c0a508f1a13a63981f44477af01d185509
Date: Fri, 17 Apr 2026 12:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776429453
