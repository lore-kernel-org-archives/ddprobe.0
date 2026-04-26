Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E950197A7D
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 23:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777246654; cv=none; b=qqxNUEcOJ8Zy9I7GiVpTBZXKT9UESWP0DZVjn9q77my6TSzvfgJlVIPorkCemPRkkbQt+WLg64Y0JiH/1gZ5N/fWlTnzZ/4Q4QJUWDrtwsO7OMM0SvVoIkosIGq2ZfFlQh5A2v3jZs0mTPvBHZ8ecVGpA5hxH3EALFziO92O8II=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777246654; c=relaxed/simple;
	bh=6Ehz6Quqia0k35RuRir4ZCBW1jDf/ds1zvJ0vQlev/g=;
	h=To:Subject:From:Message-Id:Date; b=Q+op+tJYaOfagH7Gmwk2jofoWU0ZnRovgsNG/yBLpBQ8Mk/6N5QpOZoWTlcl9ouBhAJcK4bmc2fwdjbtjffupF14aQizYPEv79NG5tWXO3/+UYM8v8eN69oen15Nb+yl6aUpgX3KGqZ95uuo/eqzneqYAcEZ98wBZlojdll28Xg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T+tBZCB0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T+tBZCB0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8EABC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 23:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777246653;
	bh=6Ehz6Quqia0k35RuRir4ZCBW1jDf/ds1zvJ0vQlev/g=;
	h=To:Subject:From:Date:From;
	b=T+tBZCB0hESD84znO9f2hCHOemzhEQn2eEYOwyp82Y0lPq/lKj5Ea9af+YQ4aFL+6
	 GwR49InEB3xsSfp2+WcWLxnugwlTo++evakcRlXEBfQVP1TEvm1IbFd0OkXyxbBTyo
	 ag+qBmkWlW66+OTjDAlsl9YyosbPz/kfVX4vVzPPvZlIGg+11FSmm2etM/FZ7fLoFh
	 nO4rw7FyxaLLV6Cb3H55C3hAbW/OCn2Lc3B6O7cjhJ7zQfUKLZQjHKE3aDANnwK2iD
	 gE38Xh+GJ9PdNWtIjcrclIkhJ9i6vXFkux4PzOf3Aaz+MABUCdqGAnPLjmuptxOzG3
	 Sp6szAzUZQS/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93C1FF8850
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 23:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177724665368.22576.17852051324208207038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc0f7d4c65ca84417744724dc4dbccd4f2b0072681e5ff61c713a8da76fe82b6
Date: Sun, 26 Apr 2026 23:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777246653
