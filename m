Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 464331A08BC
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 05:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771134894; cv=none; b=NlumW7x10v3NQIWRRuo2QX+mEMtFuZZq2FRX9uvwNNsdAWo/fAsXNUAnB5bL0+oISvb6CHlm7WyANBcsU3GTzsDTm8bxuupTV9RBVbsiXi0fBx3TVa6LtFIB3WBAXujxmNT0OayY7/RgUuKBVMaQeS3fSWrC1k58guxCun6vBpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771134894; c=relaxed/simple;
	bh=kGcpBMUCpZJwMQ+WWZUV2lvdihrP/FCeN+H48JwjjvA=;
	h=To:Subject:From:Message-Id:Date; b=kO0qufx9HxXZc7DnLpW3pSrCrVTLkzl2JMWyrsxcRij4SJUaCIx0UO7wqwp6eaOUdcf1irGP/eOlAObsBubFn+9alA/RUqL4G3/ecwBKHva449kL7ZhUfjzVes+F7V00BD3oyl32Eh/8wJBSkZQK9QsFUiBgDOgiOYQxm9dcgqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vDRvGP9d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vDRvGP9d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2BD3C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 05:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771134893;
	bh=kGcpBMUCpZJwMQ+WWZUV2lvdihrP/FCeN+H48JwjjvA=;
	h=To:Subject:From:Date:From;
	b=vDRvGP9d3fmmE3PIiRKn60Wh046dBiIvzCP017WLCmKTd3FXhOxnbbwl3ugFVfP1g
	 a8xNfagCim/IsuT2/15aoXBttBz2rEsvZ+yciPE4bBbT5gmsAcMSrfQ4l8jFEp5kcj
	 pR3lyt1oyj3V0hcfnFZlU8KwgOjvwfjoHd5taRwIygS2POaFq4T8YdNmVB+Pn7my1K
	 Uhtkx7g0D/szblIz0VT3+aEnStq4ZbRpT5iu+5w8KQSu5A7ITWSkFJaKYf0ldS7fbX
	 9DccwN7+wGqPlbfO40my1ZU7HVF72SFK9TD7P+xSzCO9tUIOg4b+p5ofNqy2XimMar
	 CSISGSq0Xw9ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2332EF586B
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 05:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177113489363.30087.1334001962055114773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbd61a162ee7217ed0f03d18ab43f9964ce28fe8599b5357e0c8e21509b36769
Date: Sun, 15 Feb 2026 05:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771134893
