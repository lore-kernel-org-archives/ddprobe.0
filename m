Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCD2E46D54F
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792384234; cv=none; b=g49DPeavjtnp2VSE3f2vP0JIaXuqXcmTgQEwGsLi1mpMi+H1OwpIGYVI8MsI43JIaV2GQkn3VRRgQ/bUh4ewNiE+dSVm8Tzk4XiA42dyiWCnMyGBplD7W1a8fAGmDyJw1b1sy591Pc8htTGqCbkw4Wo163jskZd8Ju3TuF1oNQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792384234; c=relaxed/simple;
	bh=gia/A/vX2viHWvDJKMFV/WVPLNzend/I5fNU3Zpx21g=;
	h=To:Subject:From:Message-Id:Date; b=fr9BJmIjT2MCHTgv4jg8ucVCNZtRLswAqrhWPX0Q2cLmqeJ3E7SN/S/8NdC4Kk1LY367+vduNBtUEIm/xBAeZgTh/zpEErzqtyBllE3VIi68B0+ykUzJm2oddwCL6UtVbyXm60p4jk44PF3SlL0DB0hBKFHtSG7QI+vKT0wBL1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EUELKwUE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EUELKwUE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 352A8C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 04:30:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792384234;
	bh=gia/A/vX2viHWvDJKMFV/WVPLNzend/I5fNU3Zpx21g=;
	h=To:Subject:From:Date:From;
	b=EUELKwUE3OwKdEjaWgPeE5TitCMbxBTBfEbxFMXOxoANDXTfRiUfrZrcKV7ePohuT
	 Eweg2ZINgloiqpQnz6hmLZD+answMTMRd8aJZxlM5PNOOSwRof2ksKTGtR+1uK6F/M
	 03CWeiPPbmbYaXuML5OcBmBl1HbGC7vfmHX+3WENGjrpjBGomSYGlK9Wt20kZJbzL5
	 EBvwxtNqBd4FkVCodjK9eafc7INXyyWPajwM5UQwW9Q5xcNW/C9b+OK1bURhaTCvve
	 h3nY3UvPLLHBanqHTH0/oYckcvd3P6Nk2FKHhXhjys1S8t2HAessENkwBXgKpQ1oBb
	 TxzZdUJANQ87Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E22DCCCF2D3
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179238423388.29392.3326175010179577374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2a6599676d5fe1f80e387144ebbc85e54d2153ef3fbd19804be25f8a55d95b3
Date: Mon, 19 Oct 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792384233
