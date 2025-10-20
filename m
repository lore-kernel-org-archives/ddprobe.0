Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1940E25B2FE
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760957994; cv=none; b=Z8lfTcUuhapHYTcaqMbP1dBFQ97APHqqIQ4tnkqNhuw4pi7MqLtbiiaf7z9XYFkEffdUyq3rTJa9Is0XE8b+MMaWcNTOVJzrV/ZWhR3iEWcPhkDO7wv92wcORYKFg+u1VzB/QpuydfwgVThcYn6mq/rFBFtLdPnUkUuw66e9T+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760957994; c=relaxed/simple;
	bh=wo+zmk10Z4sDidvqLrEti5DJDAROxJLzu/2/ziSdClQ=;
	h=To:Subject:From:Message-Id:Date; b=SIEh8VnIUwScGoyFbgh94wlM901jLISUdE98Ju9m796H5I4eSRB1xCefjhPm9sGXzb64/g4dE321PQ3YIZqglpJ8Oqb5JAb9WYIDJ+sRrIyPkDtKiiGRwScCTqt9iIfor0P4t3yNMTm7jZsMzSPqkXf9Cz3ekNW9sJXuPxdrQtc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tFoMyrqt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tFoMyrqt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A92A8C4CEF9
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760957993;
	bh=wo+zmk10Z4sDidvqLrEti5DJDAROxJLzu/2/ziSdClQ=;
	h=To:Subject:From:Date:From;
	b=tFoMyrqthSukQZzJz1pU5d7xN73m8VRVxUDPgxDVoNr2dgTEftpEnA6QVnbeEcyKz
	 QqNZG+W4v+p5BOIoZynerOtC/QkrFc3tw9OuMKMKHbRgLuFhejeC+0sinaPKdj3evp
	 K+x0ATVgpXw8BlOroOKnO7geGJcCjg/Ib0KJPuDOaTwD/FOts3lVJOny+/ib5T+102
	 8ygat1rorrE9Mh1xjWa00bAOmKHlUycZ8fKuSeda+vksqpqRIq7nLvjZ9UoWy4yoEE
	 mdeUTVW7o6ciFk1Sx7nH26R3Ck+9Zqhhcrsi2HmMbRLqH3/D0tcUe5JuTXAXsgGvo5
	 tUILPa6cPkHuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F458CCD193
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176095799357.32698.5044147528734129919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9941d0020efdb60442b1bbc1272000285706f9c85a798be89298c230bee461d
Date: Mon, 20 Oct 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760957993
