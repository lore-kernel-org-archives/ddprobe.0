Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B8F73A1C9
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 02:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765335174; cv=none; b=ani+NU+F3XzZMuriWEsPuQcRDULEQP9J742OITToui9VUtlBMYUm4fghtKRa4ygrPGhTZgMtEpWaV+ZyERU/p7snuvEdS3O41TOFkabq+/Cifb0PJB+u/XuLs5CLDA+pjAX8wIMcEgEtKgDlKf4+IpCh6Lt9HsgHbo09cNZjstI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765335174; c=relaxed/simple;
	bh=z1e8W9Z9y/WKjU9TURnRgfV/t+RB/QyCqv0iTcBEjLw=;
	h=To:Subject:From:Message-Id:Date; b=FJavRjPYsZtV9zsY6pacxMyRdHOfAUtxMqCW2h4jQGFZb/NX8AmP/G+1I+HzLXrfQ/M4EId0r/dKxSIoeYNBJ60dIWdaiSKcDyhgITsekRv+jMcsYi0D8+iHBulhd/9RrF4z478jtqH8vBPe5MMxaOFpSpLd8tNcJ8PdXDvZ4j4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DN7d3Pmc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DN7d3Pmc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5A1BC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 02:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765335173;
	bh=z1e8W9Z9y/WKjU9TURnRgfV/t+RB/QyCqv0iTcBEjLw=;
	h=To:Subject:From:Date:From;
	b=DN7d3Pmca+C7HYl/EqpcaeP7VVlN3RnxERfeP/htsIKwLaRQXZmjdRt8rzkULU/BU
	 v9s0BMlR2xL4IZNr5JednA9EPrCyB+/msuNjPuTJZfDX9Clfw4wfVWnDJSJvNDhaMX
	 IJw+4ZqT7eVn/CxwLgD//Eu0qA5qSp3+Ao92a1iSt9HSX72OFkrcdcJuQBFx53fWvy
	 gHx0tiG/dMsWF8wfP3jzuOxvsudv0yDKg0pKWBPZdCa6A6gJ669hh2iXCo3U8E4ewd
	 Jvz9oCa7XSHzZNwPdSzsmA62Z3qKPfr6QT41YjsA+8UAfSjgzGg60S+k3WBydXJKkp
	 y6+xtsKOr88sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FC00D3C523
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 02:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176533517364.8085.10560736927596955756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82622a3781603af30764c3678a6cc2e4a71d90260d2e1c6ac1478e84df3ae747
Date: Wed, 10 Dec 2025 02:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765335173
