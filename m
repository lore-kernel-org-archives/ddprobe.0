Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22EEF192D9D
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745642994; cv=none; b=nUsecbfby9tAJ20NBKcz9jTF3h4dNn9lwvtn29bQmykNLhxyVMtMi3jwTteoxrQd/pPP3z1OzwdRCiIxn9NK8qnNHCMT4RwJViI/hJI1i0ZrkydmOuCl+oFp11B4ckCMZIxKTZNVOyUsStsdwQaQMK/6RVX6/XaPLk7c6WpP4Fw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745642994; c=relaxed/simple;
	bh=hDDa2bC94wH5sRDdr5VRSHmGdtE11ztTu0LDfnXlq1U=;
	h=To:Subject:From:Message-Id:Date; b=nSaBIXEFpcPXE2kpwl35IUWjUtBogkkNim0qq1dO1PAmTJ6SAkYWmsOdPT3EuFbVWa4qL2nxLJYGi9Vur1Muld38FEnQGQmW8JDzzCuSoaYOtU/83CwPhicZMKffFCNsezlDtUnA2/qv+hCFpbnq43EeeqeY/wXuHNFqen2xiJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=astimL5Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="astimL5Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E905C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745642993;
	bh=hDDa2bC94wH5sRDdr5VRSHmGdtE11ztTu0LDfnXlq1U=;
	h=To:Subject:From:Date:From;
	b=astimL5YIi5XVM71gtt/4hAzOqK6D1s7X/MQUva6S7u0rgE/m90zkNwr6jS8bUTWc
	 Gtunr3h2AGohEpC0kr0FX1CP1z4oy4DoAfp/4vSKRKYkw8HSFM18MLyKLPx8HFCnvD
	 g2VzA3Id8J9mJLs9c5qB3LbN0UJuyau4HFlwq0+JRcsHelDSWHnKCWjWtVrkMZJFvP
	 ofweuNU23iHTP05GGXSkTMUy1ge4CwMdC9X991kSH67NVyLhGOJGIH1Jb2012B0XdE
	 7t70RFmH4whenFFMnSmVBInoBUJ7pQ4scp1dfXGwqtNcWRyNwL2ylDv09P9em2ChoJ
	 buH7D8XNMAVOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917C7C369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174564299357.2588.16084318551939910377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d22d7f955d7e7d217977be6d579b91bb5b368daa4217ef6e71722a01b94f887
Date: Sat, 26 Apr 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745642993
