Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5696D2594A0
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735867554; cv=none; b=rc7tWK7hNbbH0rxZBg1wBoOLs/6hZkBPqSmAC2RA8FiF5ESXXhVGMHQ8Xxl2NVfK7gpzrK3LeD0N/mT1Pnol2G+VK3y91SjEMOFMjHCpTG3c1k0soAVpI0RtkaQoNQpdM4aBGTR/9HibomWK7fYEj4DYQNNBLpt1avbwj/o3Bmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735867554; c=relaxed/simple;
	bh=GIr+Sk4aIzZH48kou77anOJj7m0zqh9y0/+7JFMOVw0=;
	h=To:Subject:From:Message-Id:Date; b=GhRKU5EPLOxurweXHOyq2Y+1Z9rr5XFRAIGi+fXkz8O2clKcqTOvtUJisKTmYzd+/WZUENax+DUgmr9wvowY9SfNyv+11alfrj8PepEuvkXdysBHpuJ2cz2HSWnYUFxRnm+FkcZTfxFnWp88/DelK1+jEfkbYyekCOuYBTOReqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RyU+FRde; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RyU+FRde"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC680C4CED0
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735867553;
	bh=GIr+Sk4aIzZH48kou77anOJj7m0zqh9y0/+7JFMOVw0=;
	h=To:Subject:From:Date:From;
	b=RyU+FRdeYW5VOd37pXZvQUQZcDJqMIyQQdK5ubgOufFJmnI1YG5JbYmkulnoxK1kT
	 mxsoNXWtmcotulp++DAt5Jtg53nbrNVwgaTCFGr+TJzk2aUs8uKK9fSe8RMtvcsTT4
	 LcxOJOpwlmMgCXuV8fELHMahvqRG7IH2mAvCWYsx/Id4uQkj2N40FgGkcA6hIMEtXs
	 ElXyfmzQ5kyvWvv2TxCYq26YDwSkRORER7Fz86mAEvx/yztX4eHvMA0nPV05Jarnaj
	 0Uf2/grmsqladhWUCIgTtZ5lBMZcps5fTqF+/UVoyqOhmCaU2oG7JxUsokP+i8I+zm
	 f7arx3X9Wkp/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1DE0E77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173586755362.16315.12238108893365605406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5c80ec52f6de221fa09591a08fc64afa5cc2888df90df55e6e195aa55d75e6d
Date: Fri, 03 Jan 2025 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735867553
