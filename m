Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C90A13D539
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 20:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767990834; cv=none; b=mr2RHa/lw0bIjeHfPfh04iJ5CjFlwvSjqvCZoHOYUfRvlzq+t8SEuE1HeJs6xqpmmjJp0LOLjnPiM1gV4CFN+kRPJOs5muVU1AUUWONzRxrqynTR4g0Vjqjumb44oJOx57BkqvVFX4/yvW3yBtISa5a+J1xx37k/Shd7acpDxwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767990834; c=relaxed/simple;
	bh=os1f0vyNAnKNskLDXwelSisMSQZ+HrOZa2kMmpheMto=;
	h=To:Subject:From:Message-Id:Date; b=WEuwDoM1ywKum81Pc93s1BwWgZSEquRPJtxTfqosv5PZtba8J5t6wb4sfeurHeOxOSc3A6ik1s7ZZuC9JUYNxts/poIgSi0Ctwo8AcPYFYwotSjyHx8IDro+Mu7jlTfuWa/Yd9MyNhpelc7X+H+tDbLWS317h2IBeh+fCbSCKoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NKQhz6Gh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NKQhz6Gh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A104EC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 20:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767990833;
	bh=os1f0vyNAnKNskLDXwelSisMSQZ+HrOZa2kMmpheMto=;
	h=To:Subject:From:Date:From;
	b=NKQhz6GhRnLndvsCp8opgK/mOq6ytQcPZdDMFqiKXakhqmlZ2Z98Mi2mc8fvURwiy
	 83KNLZ7PIDCbWPV8HhS0SuAsioyGVos+2dAh7FRSyqrThm339O23XHNNiHMxkZwFEP
	 zklb8yzSS1FBwpnFS9Q7qTQcb2+aNTVLCKyB6C67tdnZV99JRYggqJeF0gtqm2g/jG
	 PL9laLlth/cqvypQ6/aGXa9yHEHiisreA58O9zGSr7ziI5PIc8Zro+3NOXetEhv78w
	 gkmaymyLSngTJSnK/wCA3zUeahAItG+8Tlf0aUt3J/jPeEVI9jXmZtCcZjyoDeXcZ+
	 dmdqqa3g2UowA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCCDD26D94
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 20:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176799083358.6773.495884468890279191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb9668301aa9f4e1dc5ec0093fd0e4a1c66fba1370e696d4ce8cf64b2d512b7a
Date: Fri, 09 Jan 2026 20:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767990833
