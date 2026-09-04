Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D38A47887E
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788553835; cv=none; b=dDVoBOvS7m5SuCONs/fezkibhRoLHwklQ/UWT+CVlXpNqg3o0KzuTPRw/mOKAJhX4XII0aEo3pSNOZBate6sIF6qsXype2kvgsoH2JvC2z3UVqD3K+B9hSKDnm6eydt4dr4i7I0dSWme5LOozSEee1hLJqJhMyvTUJYHJoWLy/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788553835; c=relaxed/simple;
	bh=R3/JFsSzBtX/Kbk70YpGp/vzHZZJkHH+XcAnKh+mk6s=;
	h=To:Subject:From:Message-Id:Date; b=saXo+lsKrbCG7Sl85Ju+RH5eA3GZxKd+Ir4CBDN5rx0Ntfswrp9H6v0T9mczm1VIGzm7i6JJ9M8bn7kZQ51/FriEHpReqS5IGaVn29/VBXpNjvPsSpTSXgJX+WMTuiJZTPQamAAFf2EQtvmxZ+5SebvgPa+C3+DOSnCMfYWHW+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZU0RsTv5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZU0RsTv5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D35D0C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788553833;
	bh=R3/JFsSzBtX/Kbk70YpGp/vzHZZJkHH+XcAnKh+mk6s=;
	h=To:Subject:From:Date:From;
	b=ZU0RsTv5lFRMDeLWlcOIFnQOwH43S6y3VU6/W+qC2Grq0vctcYcAh0ucuY5VvACi7
	 gFg9C1nnYov4aakxsAYZWwWY/Q31KCUTKi6wVFael4JZmpeaZ973/8nytkXxFKEmlD
	 gn7WxmC41oqiwK1efYyQdxwurkOLGQu5U6UBF1PdgsSnbAuSfysNBKOISP5PRzZXtc
	 CKpEy0yVvbg3npiH/N5wE22TQvMpNRiUVY5Wxe88PNhlenFvtnX5VPKpF6xR3Yi9KG
	 gOA1n+o9ncxxqcs3WVExeGD8F3R9UnpdiOGV73NCjj+5Q4sQCEu3A7XeHblUMvlKwZ
	 GfKFi7reYg5cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA8AC79F82
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178855383370.2565.12451133262505859112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52fc2c4d832358995bf39edbe2bb5c48f79ad1099c0354ecfd18f534e55e08ef
Date: Fri, 04 Sep 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788553833
