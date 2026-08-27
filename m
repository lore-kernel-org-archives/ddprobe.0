Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E40F3F106F
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787868034; cv=none; b=NNnLXWljU6HO9hwAyjAbsi2KyP6BL9BnXugjxC6B7lvPbmAeGsWg03JdpFGx9Uh+kqItNjrJat6IbVNCszBhaLJx7LoUN7hI3tBuS2+4T0NQCQC7vj1xIVYN3rMwiSNmIQRTklJwb4whL8CWLVouya37y0V1WtS3qq0GAHRe3CQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787868034; c=relaxed/simple;
	bh=PTq3k1n7Jx5CfAvfFybxA5ktF/2mKYfG0GvzkqqGV08=;
	h=To:Subject:From:Message-Id:Date; b=dtwHInj87dx7QngncNnFc1k0aj0qyrs37rj0WWkPDrIhXpv+p4kWue9g15hdMNAkjLaQbPFmGdIhWj4AJWSY6LZBZCPQ9dwboX1+yiAOsdMBZ+lss+nIG4FZcGAeAaaQf+9zirzdi+cA0pcQIyq6+2299wzgjcMH2lVFA4C1HTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rzCXAbpV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rzCXAbpV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D591BC19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787868033;
	bh=PTq3k1n7Jx5CfAvfFybxA5ktF/2mKYfG0GvzkqqGV08=;
	h=To:Subject:From:Date:From;
	b=rzCXAbpVPS+IO7lYKeW41dIgIQLWBIIGAke7rLsSc0GmIj4puJF6DPtdIa860Q8QZ
	 9fBxpqePD/S9g6vRdbRhpIi3tIwxiWM91oLgRmjW6InxvvqukhVEfCCZyHtGJhc5Yd
	 JKrjRRos1bYJy/weoZZMF0brCbJt3CmgbWB8JaClaAtqQ9/+Gyv2NXkMPRIziJUtIW
	 DgTLiVozqdRUdwdd6MxfgdRW6O5/fUOtoNJ6BawIA4LROaiCFCP4AQ8jFRYsNQY/PX
	 91QD52r5JFDsRBamQ9bggg1C8hRylJcTi0jpkyHQL8d1jtT993Gt3EADJYY9PQ3HhZ
	 uTX6ZwygTRGmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACEF8C61DC4
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178786803369.13874.12765186864343476122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd5ab92cf43d98d15863740a89d713047ea349b2bf6ecad706d6d776e29a064b
Date: Thu, 27 Aug 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787868033
