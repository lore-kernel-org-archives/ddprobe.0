Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C143B14D9
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 10:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783073914; cv=none; b=h3j/NK2eGVALAGtA6WYmIGdCak8e+3iEdNiAZHUPARcdaVNF6g/5Lnim6Z5iBjpP8nqyDksaXPmr9xx3DjKXU96kLw7eFb7IOvPiuRhEB+SZSnrwkalF5b+UHL6j/tMobkTV+JdsN94YiU9+tnciwkMwhbJQsAWTKuroJLlzhBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783073914; c=relaxed/simple;
	bh=wOdol2z4eNQ/Y3XI18XSAuWJ4L6ZhdSXEEWXWdm9Vlg=;
	h=To:Subject:From:Message-Id:Date; b=K1GGZbKJ6K410aK3W8KTrb6KblSlyC7xrC1rZ7vvOv9HjokhHOMRWDsAvz16vMenCpy+u9OxwsJd7njZhzu53u2MR2zZ+Zrbavs3AYawKEKdwftDcPSfAfc0CxLsGmbKPh+yr5X5/0ovAFs98RAzRDIIgivOLozKcjLB0AuI7po=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gGG3h+Y9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gGG3h+Y9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC18DC2BCB9
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 10:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783073913;
	bh=wOdol2z4eNQ/Y3XI18XSAuWJ4L6ZhdSXEEWXWdm9Vlg=;
	h=To:Subject:From:Date:From;
	b=gGG3h+Y9x3cvmCudLQ0npk07vkQYrjlZuJgibjcjHpxZA5jlNKq5XTSFMhY9XkOah
	 tQ14BqqnVrtUdyaFYtaRfdGg0bBxd1rb9cItFKuusykKDcX750zlzG8Qi/nIaoXyF6
	 0LbSmwSPiHi94XiorNU6Ry4K6OptyLy8CSQp1hISB9ev0H17JX7Fc0V7fdQod/mAtH
	 q+XMtm9LnGvO7fdxs34MILRJQClSmOSEhWHZ+lZlaKixOlSmEZohZHnuIvYsjbnUxC
	 aeeudZtCj1GH5RtZsb3zay0WpfiyCWVdQwVLwf+gQMhW6fNFZed0VCoBscvqZzirlz
	 PLRMDDLs0nVCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DBDC43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 10:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178307391368.28984.15397341761929379151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42499725a6e73fc509a957d0ce42ba6802bd783aea75450a52b92d235e153f27
Date: Fri, 03 Jul 2026 10:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783073913
