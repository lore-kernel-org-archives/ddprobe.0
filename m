Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C8CA182A0
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 06:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716791663; cv=none; b=HBTAe7zuhAPlurKLwmdC6lC+kH6MzHISme9PAF5Okt2DwZaaMeNmbTVEcoLe9or7D6GesS1goc0CRnD8rT/94lXOiaoQ8fa6V6CTOb9ezIpf4Iwn9FNh6aQgK9iJ68qjgt5qWN9FIW2QPQbyEZNpLvwMrLxLJRjbPvf8ahwp4Qo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716791663; c=relaxed/simple;
	bh=MxaGRBQGdfzP7tXfu77zpguE3h6bJ4RKSv9bcGH+FYE=;
	h=To:Subject:From:Message-Id:Date; b=A1OxAno2DDHkIrViF9mgTONo5zHdFCOe4xmD0c3H6WDMhttPB8g4AOk27ifNg5+sJJFiDvDd5C1Q9r7A4BbPUITIToHYloYyzZA2Gme5tKWxRMEpnYs5CWGb9+w7rQ5UWPsCx1+eTg4iZFkj3sT0yqHfiV57/p2/Hg1b6udkR5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fYeTrAtu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fYeTrAtu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD5B4C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 06:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716791662;
	bh=MxaGRBQGdfzP7tXfu77zpguE3h6bJ4RKSv9bcGH+FYE=;
	h=To:Subject:From:Date:From;
	b=fYeTrAtuBQWmnWTAu0Phyw5vx58SBeNZ47yYK2s61gkmOIOVdF91a+XzHM8SNGONK
	 TpOj2CQ2jQXsDZBkgzf+HwPPTcwUp45BT7+8nVQwXzcDCd2L3wLghkNcd4NkUejyIa
	 jx4kSVanlESBkbKwj97XqEgeKuEoRkwzk2GrpKVv5I+NBufL33Sd42DJw+vHgq88DX
	 EisOdX0+Z0p5MkoFChSIW/WR34kEeoIz0CordcvzL1YbgHlNpmnv7u3VV4f60vDtZ5
	 ERULpmvx7G7qeuWkMfI+hBs1opA5rICWlPw2veLtrQpo1lHh+S3iDkdRkydVGWL+gZ
	 fWTkaxdwCSrsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C96E3C25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 06:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171679166281.1081.4733676542862493075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54cd2d35b1aecb5908f0a31e0f6d314163bb6987ba114f12499616717c043385
Date: Mon, 27 May 2024 06:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716791662
