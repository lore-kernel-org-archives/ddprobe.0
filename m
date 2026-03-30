Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C60A221F39
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 03:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774842294; cv=none; b=ql0pPimHtsTjaaAFCajFvSUt65GYPHuNoPurdz28HnLWeAyN5nKhc3b3BjZCYVKZ7GY5V46PFUocU8vzr1eVP7Fz88KgqN7XIUqnyirtIMCqa5Ou0u8cwN+mSURIqAASAtRlNbVPghYjLA5oOPXq7TFL9OFu0duK/i1SELnVAbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774842294; c=relaxed/simple;
	bh=MLOESHJs8hrg6epMViGgQR4tysO/CMsaDS1Yi1lieiI=;
	h=To:Subject:From:Message-Id:Date; b=TYyJygA3SG5W38inijGotTgKLEJweo43l4eaW822qXpKxijudaUqZc8qwOWD29mNEC7JOVSTdxv+lhshAvv77/ryAV19T8bG82znt4r+lHi3xcqtWTelX659wSHZ3YOo0w+PtvBXEgo6tIngOOYlJYkB9Ue1Gl+/ux2ihawuFY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=riSzXoAt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="riSzXoAt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A56C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 03:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774842293;
	bh=MLOESHJs8hrg6epMViGgQR4tysO/CMsaDS1Yi1lieiI=;
	h=To:Subject:From:Date:From;
	b=riSzXoAtv/U3NAo8owkGsT17iYmy+DspyPMJbvjqW2BI7QRCnpW29xK+FZg4kPyDR
	 m4TPitHL9GRLXjYTL0rsigrAh5ZaMIiQ0JmjWticmndu9/YyvKMJXNIcPsWD0BXnxR
	 ReRo+S8byOYhGEx9Xl0mEkQHKAqxui5XxF3/5BOt7ZlYloLruiQcVtmnrGJOb9bEHU
	 d0bonnZRfzgshUoNwpv68T/sKr5PqidYtRkeOl4v/KqZYQ4Cn975VGZKknQ5eJMVLH
	 hyP1tO1NJiNwBWdBlmVAQvlPQQWUmE92x2YPi3MT1hxpNrmZ1K9YSEhhZaHkcFYW6v
	 KNcTaQeF910OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923C8FF4934
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 03:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177484229359.492.1962696962640079134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cb08368f17cd1437a1afd4626a86be739624b6de34786b1358e534994a8980e
Date: Mon, 30 Mar 2026 03:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774842293
