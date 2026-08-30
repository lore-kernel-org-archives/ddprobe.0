Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C56D38D
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788052234; cv=none; b=gw1zFWpF7V2UJTLAdVYCjMqgbHXQ++T8YrBkhNvEAD+WKdy3m+kDUDXaSiWVBUNcthloVWbM2kXa/ZmDGwtzVbNKSQjgr7fgC55PL/zNF0asxcAw1h6EC9+meT5dZGrPGhZZTQfTQNM8kDwGSjTfIwTQkeQjGGb8IuDHObzh9og=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788052234; c=relaxed/simple;
	bh=1tpxyLffUa8giCwm0d9SMwfQOQMGgyJDhwV3RM7kJ84=;
	h=To:Subject:From:Message-Id:Date; b=sA7kFMgbADbrUGVLHNZsuMWqL9TY1okCIq/gpca96B18OdY9JMu7xEKmvCn6mhyPvtU/a3uCucYNYnotlZdeKqUYxyuPYuwrWUnqWIEfwei+jKuihwPYLp9XL/+OQCAQFgl8g7S/U9ciOK1cdaOWY+3SUqCPDWYFVBb5uh1eHzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KRhAjqGP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KRhAjqGP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE34EC2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788052233;
	bh=1tpxyLffUa8giCwm0d9SMwfQOQMGgyJDhwV3RM7kJ84=;
	h=To:Subject:From:Date:From;
	b=KRhAjqGPri+aatOam7A2Nej1j+nXcH4T1CC9HR2wrrLJOQ6Kh0YU8ThsuSr9iMa1i
	 78ET2DqrWJakmRIIpEUH1NYyR7tuzNk5KrNtTfOYl3UbSoQ2MADD0aJr9UdieKgyLK
	 ngcJdty+m/p5Ds1dUo9nyVboUDQvUnRijLdV5sJlq5U0ahZP0g2NPAYMoQtQv3IFdd
	 A8sqWie/MrXwDHtef/9hvGF7KZbCk/ofHjVxIqZH+zxKF7pUk4UbwWBskzpGRzUVcU
	 hkLZZGNhteUnrQ/8aHtOimXav8+yr7sfqykuNLG5coKHVOihl1XmUNnmTluDfbplrT
	 bXnCg7j+RjxmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD67C61DD6
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178805223368.27332.7739495451347772613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afcdb2be9ed533078cbad716fca6bd114081a5d4d4ff2da9b1faafc4d9e879c4
Date: Sun, 30 Aug 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788052233
