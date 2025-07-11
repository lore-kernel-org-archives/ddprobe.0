Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F95149DE8
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752196794; cv=none; b=FsSRAtBvuNKkA63FBfu9EOEMiIzsYqtLeBRfhWg2fR0tO6MhGy/yq9ecUzRdEGz6/oioBFY0bGeAByNMnd60hDdav2CrWZE1rPhBRRDrcJ0B+MooURdI7qjsfHr/AeN5Fksqt7ba4yLoVYfpPZo/WDu0JGzNfg+EeCgSG3BHsuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752196794; c=relaxed/simple;
	bh=PuwKSp1lk+7Gln5but9Px7k+tsGLSUtxqLTdqJ2vOJw=;
	h=To:Subject:From:Message-Id:Date; b=WMFWWIAi4xKey96DHFVz7RDxUjsgBztHtzUU/ZzizK4IQQq1IFCKjn1vZRYt3mhBp/96t6FmWN6bcAwI3Bfl9e7RkMGua1rbRoyHmw1kB40VyQXdACyBJjvbu2J+PNERlhaHv0HNV0oYc83CCp3hJVLaHRCSoafuOuac3P611/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rqvF91wF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rqvF91wF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB4AC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752196793;
	bh=PuwKSp1lk+7Gln5but9Px7k+tsGLSUtxqLTdqJ2vOJw=;
	h=To:Subject:From:Date:From;
	b=rqvF91wF94MNe+JcMu6N5bWGmvbrnNkToHZyTeTQYDRuHs7zZ/AAEb6M5oZk2+h1E
	 sXxtTmqvxTM0NXDwUOqOspz996IWwxjN78yeJk2tNDbBOq6FUB++025ymJbqzdBpNH
	 Ha4hUDeC2GSfKpYJkh1x3WMDcl5sNM1TpfCiSggbgonILqm4tICiwEP5rGE4uuiKwv
	 KFJXoBlS5RCwxmh67RiOhyg1ryrto3z80Sl1QCxRg44mDYGK8k17DMIJ8Xj4+jrUqg
	 LB75lNIC3qosg66JAaf5/UNvPYb3RUEMzBvtBUKqdNYNggpOkREru//xpztQ7Z8ori
	 B2LL6SocgBxFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903FCC83F1A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175219679358.9388.16414118304933589764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03de35e92febcf53f2dfa5b9f2833c205dd1d9d343716f9709e41a2cf84abb00
Date: Fri, 11 Jul 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752196793
