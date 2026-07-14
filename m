Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DFC02D3A93
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 19:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784056114; cv=none; b=U2mfK3TCN+EZ1ms1GUQb3g/t3ANV6YpkZ0c2exfV/2w2fweQD6A59yQiBKgcPloOBKfbTZ9AS0pmlL1hzSKnaWuQ1rTA1whn+S5QZoHIWLrn6he5KSzRx8uypzp0xhL4AmZ9s/VliPNLw4yoTl6rPJQX/c/EIwEsDrR24c5U/G4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784056114; c=relaxed/simple;
	bh=TfIJcvyuzIpgaWmcQn3DWFIBAKiAK3nQSNJassPjD2E=;
	h=To:Subject:From:Message-Id:Date; b=kBvtt6TDxqRw9MjrSa1F+FNaBLwsIY3HeW1jaMTxneuFpd0QFTCtotxv0Qg3irebEzMKil6kboziYx+bfkmAolV8azkKwsLyZg+9BRDEC/Ct1SypcskiA4pRP49B4kLfRwrZ0yF85bJGXqCnE5AEMJ58X5C92agRR6Wul+ajMsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o02bGOzM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o02bGOzM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0CDCC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 19:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784056113;
	bh=TfIJcvyuzIpgaWmcQn3DWFIBAKiAK3nQSNJassPjD2E=;
	h=To:Subject:From:Date:From;
	b=o02bGOzMAUgKTp8lxe+oh9cZd/RkrQ2jXQCQQQIUmxe/ADWAHgK9zYWo03RM+Eqqb
	 g+PigRJgQXfOMjzBHviUZPyt/CKXwUsAwdyyut20PBPYOWcoJfEiSkSeAbIHj3qaEI
	 Gd9/wwASnUG6ezuLTBE3QLosLSgNKN8FO+NrWv/y3BcU1v/9Uhv1cOfsejoDoy2+Fk
	 bYVGAd673Hi2mocxDCFFVTWLHXWLFjz/0Xn1/yDr0/cNwKo12gpqL8CIS85UeXr6L6
	 MF00uEpGWlsWWB8ToxPO2pJy8kNUCBBQVrjGSmYGKrD6ifkPnNiv6rHryR9wgcdtaJ
	 a2mKJRXqv7NXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE29C44507
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 19:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178405611369.22921.6895914725779578767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa4e8e42696cb93f89e0bf571151cc4f730f9e558a2f0fae0724a9d77e27095c
Date: Tue, 14 Jul 2026 19:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784056113
