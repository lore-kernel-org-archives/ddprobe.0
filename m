Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CDFA72617
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753111795; cv=none; b=WaOCVNcqChQQZoDcI8tDCE2VT6p29Hh3SenoX1FTImWWZB/bs2OLo9IKqfxuDYQCV5c9TCHlRqXlDQ5RDv+050Q+r//LiJJdzwl3HTl9T2wzkt6aNdQBufjtTNLogYDUNAuLhOX6W0bx+ffq3iwzcyLrjD2kYBRXcuzzLAPkNwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753111795; c=relaxed/simple;
	bh=Dv++QmjQqB1aXFwm+HXx7uIErCUI45W1iWYAeUXnvPc=;
	h=To:Subject:From:Message-Id:Date; b=UXhU/AWBEmbTJBdMlIYs7N8DcKGkC5YL6a66AnnLurUtmDuoFin3if4Jriqhy0GmXpOkRjrcwZv85D/is2lAVg5lmjJYVM5L7jJsfQw1ZZU41MVgTo6l9H6tMCG9ZUbx48Cw1afc+5apadXyEygn/Obmqh5vIfhCsDINWVRBSfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ad7P33Px; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ad7P33Px"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8737C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753111793;
	bh=Dv++QmjQqB1aXFwm+HXx7uIErCUI45W1iWYAeUXnvPc=;
	h=To:Subject:From:Date:From;
	b=Ad7P33PxEy2cLwYFSNNmT+MTQ+EM31Ob1FENkPH4FO0FWFhvFqJ71ybpNHyCf2iGX
	 uM6JHErAzb1EzYqV7TR3TCI+LDdk6KrPO+FvFVjmXkiT2udVbnJSiyMpcYwGOnNgD6
	 CkrPA8/09lkKPI1Wet6iIdwXxW7YNksVAkykb9C8XG9A1OoGki70S/5ZXE5Qlu8bAO
	 aooJAlp+AeJpjjgDnrORYIp0XGwRG+3TMwWy8q/qV4MrJ60YRIQIUV91Xus7gi7+pK
	 eBIL4SdOAbj1Fmu9dltNEX5OtdYuXapL0rijL0bHv+K1uNEwbjXm6GsDS87jVUxwDx
	 X3/TDoZwZKddg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E36C83F1A
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175311179359.3550.3618849849866797542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69d70d66f4ecf856c8ed32585bfa3fcf55f3326ec442d824a1cb56e5bc15ddb3
Date: Mon, 21 Jul 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753111793
