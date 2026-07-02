Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44B453955D8
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 22:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783031314; cv=none; b=S8bFAuphvoNS57xjHkkoytWmfDuxbK68jGpcSZrssaH8ZutjK5eU/V97Vyh6BtE0+m/E8TiLFG8uCdNhpVttVLdG/58zcJUreCVyFzi10ktdbj896zQI9i9kMB7gbxWpRn/aXv2oV5hiNnMM92Hk1L0PINGt5G0Oh6V4bUQX+AQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783031314; c=relaxed/simple;
	bh=eCf8qrfm0R975ymgfRsX1ZQ2ehzd8LDY4ULeFFrW7IQ=;
	h=To:Subject:From:Message-Id:Date; b=UsK/w9mUN8w1Dg2+yO+eudD1j8k78tvfnPZNqeV8qMy5sgwpPfuuGqwipHfA1S8voFogiePRKcuFLRAg1ig580gCM+ugiISHY6BbGuc1jEMR1HbnP3Fe6GNB7UQ3A6dmS7/2ehpFnNWCm9sdDYd9cE9VnenS6dfhLIydUk62kdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qLbmLev1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qLbmLev1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D102BC2BCC6
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 22:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783031313;
	bh=eCf8qrfm0R975ymgfRsX1ZQ2ehzd8LDY4ULeFFrW7IQ=;
	h=To:Subject:From:Date:From;
	b=qLbmLev1D17o7yznJZxXiS13zDVjdIEHKp8efOOcikFddrPwXRXVTwCeBE/DFMbgo
	 yT0zBznjFY4jRAnTDYLvjfGcIgp6s1iVezOu1qahZ4gpLGC2c1g5+8LZclFc/FK1vM
	 ESKi7dLnDar1lpDjP9uyLSoDOVdg7lKESWtLzDXlzzlUY0+izvUGgXb1Fv5PAlMfN8
	 MAm6vCZVTOHXYYIqvGsCmZ8eZbiG2oRZtANf/DjdZO715gmJFkiQmgKv1siFui6CJo
	 gc+qopTY9nbgjfqgTnHe+bDEeA4uxltOuFuYTfRpRb8zP1D9d8mNy8OJdBuch4Pqyi
	 qPVNpvRGhUxOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC304C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 22:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178303131368.8490.7758765371820194776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e36d73122f170a8cef129e93d8961a22270e16350c57309496a09ded87b2940d
Date: Thu, 02 Jul 2026 22:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783031313
