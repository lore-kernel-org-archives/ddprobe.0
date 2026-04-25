Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 301484964F
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 02:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777085854; cv=none; b=lFC/qzYyWPk+Mh10Ke8BnnkZOE8fZ+rV8QqyRxWP0ltUGaYmGe6RUdNreF63kXiSXjwlkZslW+JVnZGuawQKZOXBVQwhzgdEeGTkQznfIFu5To+I9FDpRdRuGbPYg6KUmAIVBRKoH3D/P8fFgGlCzBqOaLMtshYK0Gd3lh2+kvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777085854; c=relaxed/simple;
	bh=HhFK6V0L9Deh366WjbgmvX6DH5WdvtOgiWNMVqfCoQY=;
	h=To:Subject:From:Message-Id:Date; b=WE1cV2eN0oy9moe9Ub5v7SfGWFPoQXtKExUZk3OaCckfJqVXa9aIrB0WvboX2p2ymNLNeUwPsP3KhXgCKlwiyYA09dSf14v0BM5v9sbcwZkV+/qono1OHdKCPh+YYkz7SkMEKMovxvSoQN6e33hP+PZb7KDjRqakKnx94c6gTWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gQU2hRny; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gQU2hRny"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0BD4C19425
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 02:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777085853;
	bh=HhFK6V0L9Deh366WjbgmvX6DH5WdvtOgiWNMVqfCoQY=;
	h=To:Subject:From:Date:From;
	b=gQU2hRnynlarVPAkBHw1g2NPzrBA136A+zje02DqgOyannUei3LSp39s9yarZxDFX
	 0awP0tezr/fDE+CH1LksbdP9kGDdJYC544Q4I3Ih9lEvNJlEQ/Gkm4hC/6qTizl8vz
	 0e3kQqVQyWOAM6CyoZV2cc+Wy0Qa9KIIt0UavtHNzdZ60LvhXfvxWyQB+hx4E4g7mN
	 slIXpGoMBlhEyzdUo4ON++pLKzsbJJQNUNxkRMww4lChJqoss4gBxluXdCe6OKlti7
	 68YnXhZuDx3sqBmXKhOfE6GLvczqlSVETF2+iwoMQ8TX+H5WWV3YsELiwzcZj0TGJw
	 zDVdreRie6LXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC0F5FF885A
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 02:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177708585368.7518.5848081058969852465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd61a89351f979afa350be27fca7aac54288c6c7e1006cb56d978b47a34c4c9c
Date: Sat, 25 Apr 2026 02:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777085853
