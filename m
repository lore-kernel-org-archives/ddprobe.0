Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CF36B66E
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733702154; cv=none; b=rzWXuyrccwBuVG6mvADYe/WT/oVsoPOfJqsj+eNevW99ASJX/dAVglk16Y2sJAzuriyDz4bB9pXbyUUjF6EIz7JIIMo50EXQS1L2DEp1x1RkhymYI6ZJ/54LmyFf3uYrMl+DBq0hHRIX57oRrElG1zPgh9/eQWrcAbtnYKf0Quc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733702154; c=relaxed/simple;
	bh=tBMiZFBm2K7fQaiKs0+bCE0jgOIsJYXd8vzAE97ewLE=;
	h=To:Subject:From:Message-Id:Date; b=VKOBftJ1h53MSRra7In/tYczPm237gLgjEsUcTVNZD0I9xxMr4P5t/LKOEVR8dgM6mtbqK/UCRu7dK8o37tbqk6oK1cgSn9WA7Kji9qVetY8HD8DyP47fQ3n77LwsVndpQ6KkTcUS8tM1t8kU5AoM2DJ3MIz0Jk5L0sux3+LeSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Op5OjJ3C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Op5OjJ3C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6F92C4CED6
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733702153;
	bh=tBMiZFBm2K7fQaiKs0+bCE0jgOIsJYXd8vzAE97ewLE=;
	h=To:Subject:From:Date:From;
	b=Op5OjJ3Cnf9u2OPaYpLQNEs31GfexgLds/VAg0S6bfeW/fLNc+voTTJNeahQSmgyg
	 RdQG0g/Iuu4mjaRKmkashag48xJtCFWPkIN13/0eqdCyzMU2q8bmyewHKXMXFvg7OO
	 N7S9a+453txedX1UxYrU9gCBFeKPB2YODAG7p8iLu0dNq8c+6N/KBYnq1S7hla5+2K
	 vHEZhEUv8ldRWbnx/IJBcKDXRA+eOMWdVaRO2/zFHRsK1WHG1eBWVgIZYXkKQDIADR
	 uI0ZAlW8tcZ6OBoMZpUqfp0GVQNOrno7GiHMavaYm4BoSun9knTsRITKlLBUUVaM5Z
	 EChpZFfv8hRWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE595E77173
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173370215366.10222.10940894849253944385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eac2d62093be4513c27306dec73faee8b65375cef664481707d0b28dd7ddb83b
Date: Sun, 08 Dec 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733702153
