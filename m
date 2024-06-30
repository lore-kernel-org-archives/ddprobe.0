Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FBFF23A6
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 04:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719722063; cv=none; b=tlFJYtmKZ5rGztdzbn2zUb/TylT3jBOTBAAUfsDZkeP6NaJybs//DRk1Wkk9WH181dEZ3/SXrE2ZolKSpxnOCz4do3Je8yaZH74S+Kui9Je93vd4AMOUurnAWZ3t3iugeB04WgfNiSpTGHtm6dLjLfIO58ZxuH8WhPnB+Ci1s1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719722063; c=relaxed/simple;
	bh=qvhmbkCtA9+bRDPwI42YKcK0gxOwGo8AmVPij3svjk8=;
	h=To:Subject:From:Message-Id:Date; b=uWjvxs+a/OoLk7kbHiqPpfPHHc0e5YhW1DTdWn8VDmTf45lYTcj4EA2LdYSVOm8RR0OJ10VMpyKth1SmPkQIq+0DSDQKlMKdyQxDY3mJAuX47Z4wR2r/It/Bho2HCul95Un8IL64SfkDHyObSjfTPDQisdhTthA+N2VnZBX6Dxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F0J9YRiU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F0J9YRiU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC35AC32781
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 04:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719722062;
	bh=qvhmbkCtA9+bRDPwI42YKcK0gxOwGo8AmVPij3svjk8=;
	h=To:Subject:From:Date:From;
	b=F0J9YRiUthU/KaWWZ+KFj5XCRL8PNkKh9dpkqQwxMYn4pL1wqDfEG4DTk9Dcfq23Q
	 nnAw7ZL9vx1x87tWjRjfWksJrTu/oUEAbycynCxzyyDorcDTgngQP1762/lFXYsLol
	 G1LGDyhsEpAOfAxzzNZuq2BM0Pnc3lS8TSYVYYwQspO6trp7HjyOFSBD0574bIkbiU
	 HTVzMmI9oRd99ZvYn4Efp8ZS7m/qTD3ROwFlVzvr7xTYZ+hMNztFlPhuutK3RQGnWe
	 whLS+TpX7zfwQayJ+qsPCWaPqWD/REN3luCxYO+cfpN06kfFwmtjGSg/R6byhW4IEr
	 /jJuTSD7Y1BJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C73FAC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 04:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171972206277.7730.11258456172615141724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa74cb4edabb9321e05318b679f2066ac459364e1b0b30952b59516886b2afe7
Date: Sun, 30 Jun 2024 04:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719722062
