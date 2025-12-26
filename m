Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3706F313266
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 02:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766716434; cv=none; b=pQrun1B4G/f4n+wSiMfnmF18276QjTps7yJmsvdMLm/dsTaLxACRvJzF0VXnErKZ2xWd1vcICRDOQze6bg9eNig7KgLCVdvPoRfENwTJoK66SCbZ+WDM+WbKSj5ikoutQelEmcOWueG1Cw4TdJxZc7qWveW+2E/BQZXRjBbO720=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766716434; c=relaxed/simple;
	bh=r6fcsMkD5uvnkkYWJd5qugBnau1EhKHXl3Sjudg6XSM=;
	h=To:Subject:From:Message-Id:Date; b=Dv2nXduMKFkQlea47hT2CYa6HI4WxwH9SR/KT2d2JqZ/DejgygrCc2tyPEpylIgyyZaZJyM34daX/uT/0xmSJURf5pdiZim1vBXHS4wQSw3YEtKk/6GaQHRhM9pbWXjguxEzetTOYpFQ++YRGhaKN7OIDg7gS5/aBEnTcXatudI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qr6vczpt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qr6vczpt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7733C4CEFB
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 02:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766716433;
	bh=r6fcsMkD5uvnkkYWJd5qugBnau1EhKHXl3Sjudg6XSM=;
	h=To:Subject:From:Date:From;
	b=Qr6vczptiCrGC4WOryVFYNFVh9tqVuGgkJfLHcwanE68kvKvFlK6qvxpNKIpUthnz
	 ImIyiIuZ9I+tKn0tfKUhv1ObzxASh9npFQCCk8i0cunkGq35Ls1pD1KKakjsPV8IgM
	 GobrlkrRuC/J0wviwtXYE/hiBelXgmoi04fQFCY/L64rU2brM+1Kykw7DA+JYL0sI4
	 /ynh4B5SVBaNGqQCvdyBSF4jeMtj5ftz5bPwcYNjPAKjykeyajN2Ot9pglEqLjgQAM
	 0sIjcxaMVydoeNPLV0rg1T+OCLNrYadYxFOxrnaeFXW+ZZclY61qDfI5BdgJwXg99t
	 QpnbJLFes6E4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965B9E7AD77
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 02:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176671643358.17672.15138028189072594509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3837d16142a51180381ac3f7b39cd09044a3fa969d7f9c352d4011513e89a6fe
Date: Fri, 26 Dec 2025 02:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766716433
