Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42014A951
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 16:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715100743; cv=none; b=EsupxJlITp878iDffAJ2IP2osj8iill2DZJn2dQEDYKUGogqw7ANt5qoOKlDqToLk96bRsZj3cIml0N8fPcWrQjyWSv+zac+Jk76+wBbrTbF1xdOAojjVFuoRcB7FlZkcyogvBIuyE3Bn2AsVKZKQN8C4Dh/YOLu1yBqJu3oq9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715100743; c=relaxed/simple;
	bh=pHuNoXswCTgIs12SmiM2UIG8Rq5s8/O+/f6bTGJuo/8=;
	h=To:Subject:From:Message-Id:Date; b=YyM31/jnf4pw7nyj3n34tBo63q4zwPwXwXPSk3l6Y15A2rj7T1YBwhqLeiH1dkabL3pyn8E0L3eEZuQzNZqp/6Ia5YrZE8gX126IcoTnCOxmicW9Sd40gS83MGd4QUbnYLbjcCVata8Dxhug+UX643YrwkMjBaid/XkTt7BtgwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D9LBaTkO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D9LBaTkO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D73DDC2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 16:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715100742;
	bh=pHuNoXswCTgIs12SmiM2UIG8Rq5s8/O+/f6bTGJuo/8=;
	h=To:Subject:From:Date:From;
	b=D9LBaTkO996oElOtoAUEkyo4sHaXqEqEO0D3JjSu+TXZVwX9perhzISs19bJagPRO
	 iCCkpH12TrDvhNSAmrJuC1ZQFOPI4Nhom7HuRw8va+ocataYjH6ZofdEHneC9oTs6W
	 AIjTN2c9p77amoCYnPBHNYckUF0y+rvDd8A72v2CE29kcl52bcG5ni+ORX4hCe8pje
	 PXcp4keVDr2wqqGYTVLsj3bDAjW6nXXA4sIPR8YnlGbb4R5sUK3P+R/elhxDoMexrQ
	 k4rHAjGqtv3/vLDwhuGMDf/zmV9jOtKcWBr8sWX4k2CAlUx5UhIqbppuNQ7gEWCZT8
	 +smsFWlz1tqww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7F54C10F1A
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 16:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171510074281.15686.16184055930305046274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83668c8b57a27ff511f7ad6614a7953e0b943e40bd43339b4c06b1222f8114b9
Date: Tue, 07 May 2024 16:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715100742
