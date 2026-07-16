Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A71C220687
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 01:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784165314; cv=none; b=kRV2Va9YLgGf/B6Kt4BE4uFSEHURDj7jVNaZOBurBZTqKpHxCMNhy1ick5kMrfbi/ciKwMoeSm0wcXapU/bEtKjf3labyUcUau0jNEUExcyz5+qonxe+9c57IistRt7/UJcyQVjP++y27hmi/qpJZ08/PMLw3YJvzyOewBWgDUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784165314; c=relaxed/simple;
	bh=2GxCfh5KUcKLjxIA805NvCA8OvnbXBfRPIJ0hxhghf4=;
	h=To:Subject:From:Message-Id:Date; b=KjAJLXlnsgvmmbwf6FxTvRqtATMmWUT4Hxzbe7wEc/7sVJDzYG1Bu3C3jFvN+o3JTZds6Ej4Pd0DBIpTkHTdtYGMw5jFqcESymkKPePa6O1+h/PlFxOr2YXtbYvOBggUB+8EzhibjmdTUUDcydA44Q/XuzybS3Oje5MQtdATKEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E3BWXlyj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E3BWXlyj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C84B3C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 01:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784165313;
	bh=2GxCfh5KUcKLjxIA805NvCA8OvnbXBfRPIJ0hxhghf4=;
	h=To:Subject:From:Date:From;
	b=E3BWXlyj/xMlECXl/CtfkOk8Vw2mocoh4d0sRGhU9AkktA2mCFOIfNJcSqQQmOAnN
	 jOEtEnhrDQSQMXGMU1BBVsKvEw9h54DJShbgoyvM4BJV+VRR9Swx4lMchkIdQT+lOR
	 YELhYYn69jfyy/hXWsK59xGMVxk8J1SoVClaHGGN1G/wPzedoj1ftrb4UT73oH3YK8
	 zcSrEvECYczaSS0Ud5WMG3v6/tMVmR7CavEq6lHnwNd6XKgDJSCUYqi2Ute95lWUix
	 midBpD49Syi4G9Uw+/1d7KsK/53CyiX0Lhss6GGcv3ddTHaH63FmXayuqTt5DaDmlt
	 ReOKuAbYG4pKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8820C44501
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 01:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178416531368.8446.10374359969673799851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28ba3f90e903ee184f7e9a09bafad1c152bdaf052c2fd0af3c358a0fabdfd16d
Date: Thu, 16 Jul 2026 01:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784165313
