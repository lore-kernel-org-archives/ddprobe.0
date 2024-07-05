Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 447106125
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 04:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720152923; cv=none; b=NpztBo2s5qHyhIbwCpzDdP9WvQzw9KEVD2FR954YudpLfnPKTBNrVm6Wtm5qxZeTqbjTtsdFXzF/9vlE5vaz3/xcqkYAss5Jlx0URwvhN6QXqmQmmo5UcERMlG9uqpl/8NR36gjs2iZmZFsJH9p35G2pj7DldNLpNuDma/1pOsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720152923; c=relaxed/simple;
	bh=S5KMTos1S7RwiwaEJZup+D8z7PHJpkgNqd5m2/V0U9M=;
	h=To:Subject:From:Message-Id:Date; b=NJhT7IE0aVpJ3ctcWCA2Tp1SidTH1oUd/KHf4RZ5TpYr4Y4EH2oahdYra4vVC/yCpGCkAGwbdxPIcmcMo9ul1y+1mtamYB0ThurQFXrJeFGn3qAM3T7Ps55NkSHecHfISYOAefm2lVgrOa1jZ3vnqf4B58N/Q/pt0bpUpi4FRFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qhEyHuM4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qhEyHuM4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6D02C32786
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 04:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720152922;
	bh=S5KMTos1S7RwiwaEJZup+D8z7PHJpkgNqd5m2/V0U9M=;
	h=To:Subject:From:Date:From;
	b=qhEyHuM4FTlCui2sQs0slEePnmqyh1H7CD46CeGFI5EQrUmocki2FULLSSqKhUh4w
	 wEHhp/Km1VFK59cffpnTJUmznEICOQK86bT5z/jSpDW5jO43SEkAmT8PwBVs6JWLI9
	 C/ucb0V/xMjRFddi0QuFS0lTEri7ML0rvIFDls9tf43ICRRz0ndVZU+b+nWjThyP5h
	 ONhdzNW9s5rb5QGsLJCFi5z0XEeCJSnpdIPw8Gm1andjIQMzfgmgVTFAZmUfrvnGY6
	 AkXcZRanNu3fWjPTqnDE1Ueo6EEGCK6VcDXQvESumly4Tzcz0MEbY4xfv3taGWpnAx
	 asFoTieaySKWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C20B7C30658
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 04:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172015292278.11013.6037117773158237762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57609d1c3f3e4c9ff5d5a349c4a720ba36d740cb60786b35e7f420d0f9280f51
Date: Fri, 05 Jul 2024 04:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720152922
