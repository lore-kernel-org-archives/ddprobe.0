Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 530CE20EB
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 05:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716270743; cv=none; b=naX4J8yZzQ8GU/l8/QLiaLMCwXPoPON4uZeMsrvl1wkb8OCC4c+zQoBJSo6gJU3FM4BjvhfY3UikZUFZEEQmRrhVwiP25qai1Dj2BtZmfpoFRwcAyYMKmuW4+1zhsl4gTTZlPPWfKhNxCgw6bqQ8Pt0lhiuv4R9Gyijn/hs1XfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716270743; c=relaxed/simple;
	bh=zoFTdWOwdh8OTO7G9uj6EhsEPJ3FRvcqVAny6nkLvvI=;
	h=To:Subject:From:Message-Id:Date; b=M9C84rEWNUZQywfI7/fRz3tqwro2v7MRel0mbmeyNvx10/u8UMe3yvhFWvuJpGr5+fODG8XC8SeSD38PzyWywGlUMU4/J4Y9P6Qk9TQErLcO+4p4tAeUipqwwke62FX2HIi3G3L0Iec1wHnbPrQ1b7Dh1iyW+bvRGA2JNdyXBHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GZRhSyj3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GZRhSyj3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA87AC2BD11
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 05:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716270742;
	bh=zoFTdWOwdh8OTO7G9uj6EhsEPJ3FRvcqVAny6nkLvvI=;
	h=To:Subject:From:Date:From;
	b=GZRhSyj33JhMtuTwRnTv3sr9cH8B5DljLDFLaU/FrXcE2As4ng7RAm7AAS7WpsWNe
	 /CcTXVi+3WEn+IOX8fllmSp2VrIJjzdl22nLkome5Mp3k6cfsg2dck3k68xS21Nnq+
	 RdTE1D+9t7MbasXAZMEbR27jwjBC4RJvH84b+J7SpFHjbvfQkzXfjiHyYL8J1tS8Eg
	 sajK3VBndO2BoCBLAhCwElfiHsm/h+kKjPwAwQm5nHK6F+PfXChJ9928WOddyAyuhL
	 H3NQtgl/WOUmHAXm0Skaohny80wD+SHh7sUh8s26EvPeKY+GlUm2k0Tvtp3KkSNxcl
	 0M4iluRTd/18g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7E42C25B74
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 05:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171627074278.24030.4240679927102825517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15f9f22b38e2a5093eb3bb67c373df96518524e8effd6ddf756700190e1fa354
Date: Tue, 21 May 2024 05:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716270742
