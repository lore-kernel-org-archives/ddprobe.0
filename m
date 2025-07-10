Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19E72274669
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752181794; cv=none; b=skFUWruY/z8UsGcbCDd+IOGKnTub+pyIXgZxLqoGoraHn1bjo9FP3THDbPMDNuOvnEjxweVN8JWtrSMJOLhHUXWARzuvlUiVCkVx4C4yEw3tUzJCAs2FhSvgILTUt0j9qSD7oypeXnH50z+VQ0KjcdERDXiR4BzfHimnSE7Kalg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752181794; c=relaxed/simple;
	bh=zvIyby8TUNvVKtziZO9axy8adOb/Zb+1zI3d+Ovg3FM=;
	h=To:Subject:From:Message-Id:Date; b=Qc/+LcWaN4bINIllVNwhmicsOHCZNRNEbNsCLoD5blzlBPXX/t2b2yEPz9W81s1rCWpR7tnKOwmHmXp6FYuMGeajGjogEsU9nW9lOhhW/2iW8h2bgLzH1QezqctwsLtHXzftOTyq2RW5SRIdc53+9c1CsfdZxKsmwGgmZTdJSUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XNGyPBGM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XNGyPBGM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BC3C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752181793;
	bh=zvIyby8TUNvVKtziZO9axy8adOb/Zb+1zI3d+Ovg3FM=;
	h=To:Subject:From:Date:From;
	b=XNGyPBGMl4CvCRFYkUjZqCzvaraQDuz7UxEoCCAUoVq3/CIXpfJ7IAip/EKpEI1aI
	 W86nWOkjGBCYj+T5NFkGppes1HPALLzBaOhogsDGLtu6WL7K5amWplpk3zgx017PYx
	 WvyBH5mw4ppLn09y3QC8hbcfY4VJ4sKABaxgxQv+q+rKZrmyjOLMzQYXc8soHbSAtt
	 n0E9us6tsTGqVLcoBOOAe4+OkWQ0Uc0N6neUTDRP5rJOaxQPFn0AC2er/kyw2ST5Rp
	 Bw92c04CNxJDVdyXC8Z01eTuUcqTI8m3ApQrT/46pS9lHeqB1xpHkSk6iV9NfzBQcI
	 PZiErjN1/783w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB91C83F1A
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175218179358.2815.16381401924976171367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4c06242bd264f25affdaa8cc35fd1113102e74e61f4a82148d94f020e3ad1de
Date: Thu, 10 Jul 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752181793
