Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DFC21667DE
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 13:57:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717768643; cv=none; b=VIVn6gVe5/L8MNG0yhlL04mEdbBg49UQf/IoTEdVXmrdtw4VnOdGspHdut0Ab5a3PQGN02mNtOb9PCHjc6fAEQgZpmWD/ZDyIdhDID8ckzctlhHsTzyZAtgyPW3+vzLqsgFhRaic2Koksnv9DDt4st/mnJO1FYCKTeefVBklyFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717768643; c=relaxed/simple;
	bh=r0d/95Za+iOaaNbrmekWG4ieICfPrMEtfW4YvbbtjRo=;
	h=To:Subject:From:Message-Id:Date; b=Z2VzwxuUCGgtFCQxN2zoZFec7BOELoqyE20hgeTb48ard0gbMjMy6tOSMD8pjZDJQ+wv3maQgJp6kaQBvqutxtR0KPDiD5Re0mAo9oE7zCyOUUaA+E4+RBFxQEhebNtspglSVSayB3JrzSkgU0syozKMwHVSqwf+ZHAPGzgUN1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZY1uLPqR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZY1uLPqR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CED45C2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 13:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717768642;
	bh=r0d/95Za+iOaaNbrmekWG4ieICfPrMEtfW4YvbbtjRo=;
	h=To:Subject:From:Date:From;
	b=ZY1uLPqRF3hzx+e3yhpk6x9gVhgbzi3bTZi2w6cC7qTjhWJLplHr2h/wQJK/+BRey
	 ORfPxaGsLgl3GR8Ml/JCANfhSb+jrHxfnfzYzPzDo5YiU9NbTKqat6RUrqj9mlyoom
	 WlVonuNg7qguaV33gOCAyGj58MgGjvQkioYoejSXL5mcalfDY5L6sO7FlfPBwvelMd
	 lqRgmPoUoxyZ35jz6xvuRD1d66/pcs0CM/M1/AkS8HiKv3qu/C2+LjSEjapp2e/lsU
	 IT3+foltNQ3/xkmSIPQ+oS2sc+L7RX648pjrufELbXmWR9PXfqY0XCUtBFvEQWLUjv
	 b0pL0zn567HLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C15A0C27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 13:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171776864278.6957.12611320801942975305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd77135571323331f7d4f6c2e07c55e0b4e99343cea5532b73ae3fe075b5aa48
Date: Fri, 07 Jun 2024 13:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717768642
