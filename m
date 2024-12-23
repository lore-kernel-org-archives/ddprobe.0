Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2824912D1F1
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734922554; cv=none; b=AMibq1ONO/qGt5IHvAQAnwG8rb28IlFwhzotkjQbIsxt1MIWGKQrzgRiKzxE8Vo1nXd4hJad35sAzFKyN3/mUAXBy7Mk/9UT5U6Qh8Kbz5V6CFkVzouKbNXshGbpW/xTk4yjDb0h1JF7uSs0dj/p0siyzwcZtJ6kXDszAta71uk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734922554; c=relaxed/simple;
	bh=pDKxPYWc7C4OiUAASZGuPw1+f1Kd2qC5VmRLdh+ZO9U=;
	h=To:Subject:From:Message-Id:Date; b=ZAa9k0Im4DvrI/NAuxQdAIC7ic7MUTV3+AeOTSwtfRQR+PS+Oovvxb9LFirCMw/VWIFNBkj3WkJlbS8U+BargJ4ElmUixC2ybxZQTBRo+kTdqrO4RYeUILqelMAlY8mvgBy9tevTO40Eu8OTKs7YaTjor/1NjJBgQ2bwamEilj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cSig+EyD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cSig+EyD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B7DC4CED4
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734922553;
	bh=pDKxPYWc7C4OiUAASZGuPw1+f1Kd2qC5VmRLdh+ZO9U=;
	h=To:Subject:From:Date:From;
	b=cSig+EyDLvBN+ZZxASmIAGZZ1GzSK9Vi9AoJQZ9+n0OKRDmeK+VdVjtrHvFStUQi0
	 MhG/q3byfN92croCZ1gg7WCejbL5bJvrqczATeLadkt3b/cgcCqUgJ9TIRr/BvylKg
	 LXtBEkVpkwuvYrHBXY98WsS1rHEAhPROk6sVKNHhtgaT54Hkxb+60Q/hsRe1QkMqCg
	 5bAkTzBoShY40ZylqPCSCsIXgaJB1+VtUTWRGJZFQLTUGsT2klCVCFrRdiPLnbPzOa
	 OKQAb5vaAHEGvYwUvTMWHbdcWNdsNe9ztttqoPYmsfV9GC7OkXh3Y8qY416wV4rv84
	 V8i3qjvoRBd8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A74E77188
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173492255358.9682.14341001691757688183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03248a809d1f811d303a89d6eb1b9c40432e0efe0d019ef3b3c94af9af1abab2
Date: Mon, 23 Dec 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734922553
