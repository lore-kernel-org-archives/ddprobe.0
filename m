Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 259924C9D
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 05:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764134574; cv=none; b=EaCbe5CnIEHfGnHT/DrTS/vxIMKn1IA9bGKX9nvxQxpp59LX9663ndI0NcAW9NizyMkXtwFvWX0iV8x4P8/shb2Et4UJlu2Uk0fFRpIWnrWPKodDrga30ehJmujpjePKKJB/VqcnSFXuyFdsWwD+CtXTFVgQnDQeTK7mDBYWy/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764134574; c=relaxed/simple;
	bh=EuhT3jBJov5qh1/4FmvCgPzujANPa16tTCTNIuv1AjI=;
	h=To:Subject:From:Message-Id:Date; b=QxAtJggqaXhIGnB9E57/8Czld1ThnEHCLeqpDr39RFcCRKO1lzO0JxqPojAuLQ9/C/ZVYc/sd5J6WLKcyqRcokSzW8IXhlBM7QGJf54xlIewsa1QRFoPQUM46oiTSsi6Xni4lxy6ujqLpcWEjeKr3W95WF4rX1kzhBsiqG5QzE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bHpeGdw3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bHpeGdw3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7AF2C113D0
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 05:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764134573;
	bh=EuhT3jBJov5qh1/4FmvCgPzujANPa16tTCTNIuv1AjI=;
	h=To:Subject:From:Date:From;
	b=bHpeGdw3PQFw47MUoYTQB7sFZEZKh39xTURRECXqUnkDiDSP1cQjxRMJfm8BMjq29
	 yHqEUAhGmOC7nEVqel0LVbHwzCvngY6Wjqm1Pk+aV0fEi4ccRHexN3YQHpJtnF8RAA
	 IUNvNUkETqbBnEwPxHfgHMBrdwJJSa5ZuXUfHbb2FHFlHreCwQVPWTEDQ5aD01KphV
	 n/jIPceVO4GR7Zy9frWHB69aMu3K1IHR8axQyjbtN2+JYXjClg0NMvz/TnQzcz7uA7
	 OwFLoosFAcbPGD2YxxbiJHFbFdJQuL3Yo6qnr6w5HzKuNpesIz248KcgJ6PpO5ck51
	 SR7pU3ZiJ9bsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9392FD0EE29
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 05:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176413457359.14536.3537725626382449206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cdb1e57fb082dc2808884663588bad07d88d47d2056b07449f93fcdbb6af3ab
Date: Wed, 26 Nov 2025 05:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764134573
